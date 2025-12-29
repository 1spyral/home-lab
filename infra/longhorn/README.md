# Longhorn

[Website](https://longhorn.io) | [Helm Chart](https://artifacthub.io/packages/helm/longhorn/longhorn)

Longhorn supplies cluster-local block storage via the Flux-managed HelmRelease, so workloads can bind PVCs against the `longhorn` StorageClass for persistent volumes.

**Components**

| Component   | Path               | Notes                                                       |
| ----------- | ------------------ | ----------------------------------------------------------- |
| HelmRelease | `helmrelease.yaml` | Installs/updates Longhorn into `longhorn-system` namespace. |

**Apply**

```sh
kubectl apply -k infra/longhorn
```

**Notes**

- The HelmRelease sets `defaultDataPath` to `/var/lib/longhorn` and keeps replica count low (1) for single-node friendliness.
- StorageClass parameters keep replica count at 1 and allow expanding volumes, with `WaitForFirstConsumer` volume binding.
