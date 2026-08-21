# Loki

[Helm chart](https://grafana.com/docs/loki/latest/setup/install/helm/)

This component deploys Loki into the `monitoring` namespace as the storage and query backend for cluster logs.

## Configuration

- Monolithic deployment with one replica.
- TSDB schema v13 with filesystem object storage.
- 30 GiB Longhorn-backed persistent volume.
- Seven-day log retention enforced by the compactor.
- Internal gateway at `http://loki-gateway.monitoring.svc.cluster.local`.
- Loki dashboards, alerts, recording rules, and metrics scraping integrated with `kube-prometheus-stack`.
- Built-in Memcached caches disabled to reduce homelab resource usage.

Alloy is required to collect Kubernetes logs and send them to the Loki gateway. Until Alloy is deployed, only the Loki canary writes test logs.

The component is included by the parent observability Kustomization and is deployed with:

```sh
kubectl apply -k infra/observability
```
