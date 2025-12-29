# Cert-Manager

[Website](https://cert-manager.io) | [Helm Chart](https://artifacthub.io/packages/helm/cert-manager/cert-manager)

Cert-Manager keeps certificates current via ACME; ClusterIssuers use Cloudflare DNS challenges backed by the shared API token.

**Components**

| Component         | Path                                   | Notes                                                      |
| ----------------- | -------------------------------------- | ---------------------------------------------------------- |
| HelmChart         | `helmchart.yaml`                       | Installs Cert-Manager and CRDs into `cert-manager`.        |
| ClusterIssuers    | `clusterissuers.yaml`                  | Defines staging + prod issuers that call Cloudflare DNS.   |
| Cloudflare secret | `cloudflare-api-token-secret.enc.yaml` | SOPS-encrypted `cloudflare-api-token` used by the solvers. |

**Apply**

```sh
kubectl apply -k infra/cert-manager
```

**Notes**

- Cloudflare is the DNS provider for the ACME solvers, and the API token secret is stored encrypted with SOPS (see `cloudflare-api-token-secret.enc.yaml`).
