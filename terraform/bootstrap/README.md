# State storage bootstrap

This root creates a GCP project to store OpenTofu state for itself and the rest of the home lab.

## Create the bucket

Authenticate with Google Application Default Credentials:

```sh
gcloud auth application-default login
```

Copy `terraform.tfvars.example` to `terraform.tfvars`, then set the billing account
and location. The default bucket name is `<generated-project-id>-tofu-state`.

From the repository root:

```sh
tofu -chdir=terraform/bootstrap init
tofu -chdir=terraform/bootstrap fmt -check
tofu -chdir=terraform/bootstrap validate
tofu -chdir=terraform/bootstrap plan -out=bootstrap.tfplan
tofu -chdir=terraform/bootstrap apply bootstrap.tfplan
```

## Migrate bootstrap state

After the bucket exists, add `backend.tf` with its actual name:

```hcl
terraform {
  backend "gcs" {
    bucket = "YOUR-STATE-BUCKET"
    prefix = "home-lab/bootstrap"
  }
}
```

Then migrate and confirm the resulting plan has no changes:

```sh
tofu -chdir=terraform/bootstrap init -migrate-state
tofu -chdir=terraform/bootstrap plan
```
