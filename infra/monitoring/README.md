# Monitoring

[Helm Chart](https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack)

This stack deploys `kube-prometheus-stack` into the `monitoring` namespace for cluster observability. In this repo it is configured to run Prometheus, Alertmanager, and Grafana, with Grafana exposed through an ingress.

**Components**

| Component        | Path               | Ingress Endpoint            | Notes                                                                         |
| ---------------- | ------------------ | --------------------------- | ----------------------------------------------------------------------------- |
| HelmRelease      | `helmrelease.yaml` |                             | Installs `kube-prometheus-stack` into the `monitoring` namespace.             |
| Values ConfigMap | `values.yaml`      |                             | Enables Grafana, Prometheus, and Alertmanager and sets persistence/retention. |
| Grafana Ingress  | `ingress.yaml`     | `https://grafana.gloop.me/` | Routes to the `kube-prometheus-stack-grafana` service through Traefik.        |

**Apply**

```sh
kubectl apply -k infra/monitoring
```
