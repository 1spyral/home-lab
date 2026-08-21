# Alloy

[Helm chart](https://grafana.com/docs/alloy/latest/set-up/install/kubernetes/)

This component deploys Grafana Alloy into the `monitoring` namespace to collect Kubernetes pod logs and forward them to Loki.

## Configuration

- One Alloy pod per node using a DaemonSet.
- Node-local pod discovery through the Kubernetes API.
- Cluster-wide discovery with explicit pod-label opt-in.
- Labels for cluster, namespace, application, pod, container, node, and job.
- Logs forwarded to the internal Loki gateway.
- Host log directories are not mounted.
- RBAC is limited to namespaces, pods, and pod logs.
- Alloy metrics are scraped by `kube-prometheus-stack`.

Kubernetes Events are intentionally excluded. They should use a separate singleton Alloy pipeline so a multi-node DaemonSet does not ingest duplicate events.

## Opt in a workload

Add the following label to the workload's pod template:

```yaml
spec:
  template:
    metadata:
      labels:
        observability.gloop.me/logs: "true"
```

All containers in a matching pod are collected. Pods without this label are ignored.

The component is included by the parent observability Kustomization and is deployed with:

```sh
kubectl apply -k infra/observability
```
