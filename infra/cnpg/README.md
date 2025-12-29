# CloudNativePG

[Website](https://cloudnative-pg.io) | [Helm Chart](https://artifacthub.io/packages/helm/cloudnative-pg/cloudnative-pg)

CloudNativePG is the Kubernetes operator that covers the full lifecycle of a highly available PostgreSQL database cluster with a primary/standby architecture, using native streaming replication.

**Components**

| Component   | Path               | Notes                                                                   |
| ----------- | ------------------ | ----------------------------------------------------------------------- |
| HelmRelease | `helmrelease.yaml` | Installs the `cloudnative-pg` operator into the `cnpg-system` namespace |

**Apply**

```sh
kubectl apply -k infra/cnpg
```

After the operator is running, define `Cluster` custom resources for each PostgreSQL instance in the appropriate app or environment overlays.
