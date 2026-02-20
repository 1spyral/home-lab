# ProductsDisplay-v2

[Website](https://keautybeautywarehouse.com) | [GitHub Repo](https://github.com/1spyral/ProductsDisplay-v2)

Hosting for my dad's beauty supply business, Keauty Beauty Warehouse. Runs on ProductsDisplay-v2 with separate frontend and backend API workloads.

**Components**

| Component | Port | Path       | Ingress Endpoint                        | Image                                        |
| --------- | ---- | ---------- | --------------------------------------- | -------------------------------------------- |
| web       | 3000 | `base/web` | `https://keautybeautywarehouse.com/`    | `ghcr.io/1spyral/kbw-productsdisplay`        |
| api       | 3001 | `base/api` | `https://keautybeautywarehouse.com/api` | `ghcr.io/1spyral/productsdisplay-api:latest` |

**Apply**

```sh
kubectl apply -k apps/base/kbw-productsdisplay
```
