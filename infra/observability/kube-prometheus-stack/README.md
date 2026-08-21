# kube-prometheus-stack

[Helm chart](https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack)

This component deploys Prometheus, Alertmanager, and Grafana into the `monitoring` namespace.

## Resources

| Resource         | Path               | Notes                                                                         |
| ---------------- | ------------------ | ----------------------------------------------------------------------------- |
| HelmRelease      | `helmrelease.yaml` | Installs `kube-prometheus-stack`.                                             |
| Values ConfigMap | `values.yaml`      | Enables Grafana, Prometheus, and Alertmanager and sets persistence/retention. |
| Grafana Ingress  | `ingress.yaml`     | Routes external Grafana traffic through Traefik.                              |

The component is included by the parent observability Kustomization and is deployed with:

```sh
kubectl apply -k infra/observability
```
