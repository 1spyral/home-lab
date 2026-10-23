# Browserless

[GitHub Repo](https://github.com/browserless/browserless)

Shared Chromium browser automation for in-cluster jobs and apps.

**Components**

| Component   | Port | Path           | Exposure  | Image                                  |
| ----------- | ---- | -------------- | --------- | -------------------------------------- |
| browserless | 3000 | `service.yaml` | ClusterIP | `ghcr.io/browserless/chromium:v2.57.3` |

**Connections**

Both protocols use `ws://browserless.browserless.svc.cluster.local:3000`:

| Protocol   | Path                               | Playwright Python API         |
| ---------- | ---------------------------------- | ----------------------------- |
| Playwright | `/chromium/playwright?token=TOKEN` | `chromium.connect()`          |
| CDP        | `/chromium?token=TOKEN`            | `chromium.connect_over_cdp()` |

Use the token from `secrets.enc.yaml`. Defaults: two concurrent sessions, four queued requests, five-minute timeout.

Edit shared settings in `configmap.yaml`, then restart with `kubectl -n browserless rollout restart deployment/browserless` after the ConfigMap is applied.

**Deploy**

Managed by Flux through `cluster/flux/infra.yaml`, including SOPS decryption.

For local access:

```sh
kubectl -n browserless port-forward service/browserless 3000:3000
```
