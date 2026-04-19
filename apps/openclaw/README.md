# OpenClaw

[GitHub Repo](https://github.com/openclaw/openclaw)

OpenClaw is a self-hosted personal AI assistant. This deployment only runs a single component: the OpenClaw gateway.

**Components**

| Component | Port  | Path   | Ingress Endpoint | Image                       | Notes                     |
| --------- | ----- | ------ | ---------------- | --------------------------- | ------------------------- |
| openclaw  | 18789 | `base` |                  | `ghcr.io/openclaw/openclaw` | Single gateway deployment |

**Configuration**

The default behavior is defined by [base/openclaw.json](./base/openclaw.json) and [base/AGENTS.md](./base/AGENTS.md).

The main deployment overrides those defaults with [overlays/main/openclaw.json](./overlays/main/openclaw.json) and [overlays/main/AGENTS.md](./overlays/main/AGENTS.md). Edit those files to change the app's behavior.

**Apply**

```sh
kubectl apply -k apps/openclaw/overlays/main
```
