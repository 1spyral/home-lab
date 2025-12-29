# Al Dente

[Website](https://al-dente.site) | [GitHub Repo](https://github.com/al-dente-ai/al-dente)

Al Dente is a vibe-coded pantry tracking and recipe generation app made by [William Dai](https://github.com/will2dai4) and myself.

**Components**

| Component | Port | Path                         | Ingress Endpoint            | Image                                   |
| --------- | ---- | ---------------------------- | --------------------------- | --------------------------------------- |
| frontend  | 3000 | `base/frontend/service.yaml` | `https://al-dente.site/`    | `ghcr.io/al-dente-ai/al-dente-frontend` |
| backend   | 3000 | `base/backend/service.yaml`  | `https://al-dente.site/api` | `ghcr.io/al-dente-ai/al-dente-backend`  |

**Apply**

```sh
kubectl apply -k apps/base/al-dente
```
