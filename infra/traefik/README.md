# Traefik

[Website](https://traefik.io) | [Helm Repo](https://traefik.github.io/charts)

Traefik is the cluster ingress controller that fronts all HTTP/S traffic, exposes the dashboard, and serves metrics.

**Components**

| Component         | Port   | Path             | Notes                                     |
| ----------------- | ------ | ---------------- | ----------------------------------------- |
| Traefik HelmChart | 80/443 | `helmchart.yaml` | Installs `traefik/traefik` (chart 37.1.1) |

**Apply**

```sh
kubectl apply -k infra/traefik
```

**Dashboard**

- `bun run traefik` (alias for `scripts/traefik-dashboard.sh`) port-forwards Traefik and opens the dashboard; pass `-p` to pick a different local port.

**NodePort bindings**

- Traefik runs with `service.type: ClusterIP` but `deployment.hostNetwork: true` plus `ports.web.hostPort=80` and `ports.websecure.hostPort=443`. Each pod therefore binds the host ports directly on every node, so external traffic hits the node network stack without a separate NodePort service.
