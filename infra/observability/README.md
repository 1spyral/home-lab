# Observability

This directory contains the cluster observability platform. Components are deployed into the `monitoring` namespace and managed by Flux.

## Components

| Component                                         | Purpose                            |
| ------------------------------------------------- | ---------------------------------- |
| [`alloy`](alloy/)                                 | Cluster-wide telemetry collection. |
| [`kube-prometheus-stack`](kube-prometheus-stack/) | Metrics, dashboards, and alerting. |
| [`loki`](loki/)                                   | Log storage and querying.          |

## Apply

```sh
kubectl apply -k infra/observability
```
