# CoreDNS

[Website](https://coredns.io) | [Docker Image](https://hub.docker.com/r/coredns/coredns/)

CoreDNS keeps service discovery healthy with DNS for services/pods and metrics on 9153, and the `Corefile` is the single config source whose edits propagate through the kustomization.

**Components**

| Component | Path              | Port    | Image                   |
| --------- | ----------------- | ------- | ----------------------- |
| CoreDNS   | `deployment.yaml` | 53/9153 | `coredns/coredns:1.9.4` |
| Corefile  | `Corefile`        | —       | —                       |

**Apply**

```sh
kubectl apply -k infra/coredns
```

**Notes**

- The service exposes UDP/TCP 53 for DNS and TCP 9153 for metrics while matching the `kube-dns` selector in the deployment.
- Changes live in `Corefile`, so edit that file to adjust DNS plugins before re-applying the bundle.
