# Observability

This directory contains the cluster observability platform. Components are deployed into the `monitoring` namespace and managed by Flux.

## Components

| Component                                         | Purpose                            |
| ------------------------------------------------- | ---------------------------------- |
| [`kube-prometheus-stack`](kube-prometheus-stack/) | Metrics, dashboards, and alerting. |

## Apply

```sh
kubectl apply -k infra/observability
```
