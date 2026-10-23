# Cloud environment setup

Install the Google Cloud CLI, `jq`, and a
Node.js version supported by the pinned `cf` dev dependency. Run `bun install`
from the repository root, then prepare authentication for your current shell:

```sh
source scripts/tofu_setup
```

Use Bash or Zsh. Sourcing the script exports `CLOUDFLARE_API_TOKEN` directly into
the current shell. All setup logic is in this shell script; Node runs only the
Cloudflare CLI dev dependency. It does not evaluate generated shell code.
Progress goes to stderr and the token is not printed. It preserves your current
directory and shell options. On failure, any existing exported token is preserved.
Run this directly in your shell; a package script cannot update its parent shell.

The script checks Google Application Default Credentials and runs
`gcloud auth application-default login` only when they are unusable. An invalid
explicit `GOOGLE_APPLICATION_CREDENTIALS` fails setup rather than switching identities.
Both roots use the existing GCS state bucket, so your Google identity needs access
to that bucket. Setup does not create or migrate state storage.

For Cloudflare, setup manages an account API token in macOS Keychain using the
dedicated `home-lab-tofu` OAuth profile. Browser login requests the pinned CLI's
full default scopes. The token receives all account and zone permissions Cloudflare
reports as grantable by your membership, including the existing DNS Write grant.
The grant covers the one account containing the zones in `cloudflare/*.tf` and all
of that account's current and future zones. User-scoped permissions are excluded
because this is an account token.

Every setup run compares the saved token's policy with the available permissions
and updates it in place when needed. The token secret stays the same, and existing
expiry dates, IP restrictions, and status are preserved. Your membership must permit
account API token management. Configured zones must belong to one account.

The generated token is stored in macOS Keychain under service
`home-lab.opentofu.cloudflare-api-token`, account `home-lab-tofu`. Setup sends the
secret to Keychain over stdin rather than placing it in process arguments.
Repeated setup calls reuse it, including from a new shell. If the old
`opentofu/.terraform/cloudflare-api-token.json` exists, setup migrates it to
Keychain, verifies the stored value, and then deletes the plaintext file. A failed
migration leaves the original file intact.

The Git-ignored `opentofu/.terraform/cloudflare-oauth-scopes.json` stores only the
CLI version and granted OAuth scope names, with no credentials. Setup uses it to
reuse the full-scope login; a CLI upgrade or changed OAuth profile requires browser
approval again.

Setup checks DNS read
access for every configured zone; a supplied token must also permit DNS writes
for subsequent applies. An exported token different from the Keychain token is used
as supplied, and its permissions are not modified. If the stored token is revoked,
delete the service entry in Keychain Access and rerun setup. Existing remote tokens
are never rotated or deleted automatically. Keychain access may prompt for approval;
unlock your login keychain if access fails. On other operating systems, supply
`CLOUDFLARE_API_TOKEN` explicitly.

The script only sets up authentication and exports the Cloudflare token. OpenTofu
is not required to run it. When you are ready to work on infrastructure, install
the OpenTofu version in `.opentofu-version`, supply root-specific inputs through
ignored `terraform.tfvars` files (see each `terraform.tfvars.example`) or `TF_VAR_*`
environment variables, and initialize each root yourself:

```sh
tofu -chdir=opentofu/cloudflare init
tofu -chdir=opentofu/cloudflare plan
tofu -chdir=opentofu/bootstrap init
tofu -chdir=opentofu/bootstrap plan
```

For CI, provide `CLOUDFLARE_API_TOKEN` and working Google Application Default
Credentials ahead of time; setup will not start browser login flows in CI.
