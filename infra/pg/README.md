# PostgreSQL

[Website](https://www.postgresql.org) | [Helm Chart](https://github.com/bitnami/charts/tree/main/bitnami/postgresql)

PostgreSQL provides a shared relational database for apps, deployed via a Flux-managed Bitnami `postgresql` HelmRelease with persistent storage.

**Components**

| Component   | Path                    | Notes                                                            |
| ----------- | ----------------------- | ---------------------------------------------------------------- |
| Namespace   | `namespace.yaml`        | All Postgres instances are installed to the `infra-pg` namespace |
| HelmRelease | `base/helmrelease.yaml` | Installs the Bitnami `postgresql` chart (v15)                    |

**Apply**

Apply the namespace:

```sh
kubectl apply -k infra/pg
```

Apply a specific instance (eg. `shared`):

```sh
kubectl apply -k infra/overlays/shared/instance
```
