# ProductsDisplay-v2

[Website](https://keautybeautywarehouse.com) | [GitHub Repo](https://github.com/1spyral/ProductsDisplay-v2)

Hosting for my dad's beauty supply business, Keauty Beauty Warehouse. Runs on ProductsDisplay-v2, a Next.js app that provides user- and admin-facing product views.

**Components**

| Component | Port | Path | Image                                        |
| --------- | ---- | ---- | -------------------------------------------- |
| next      | 3000 | `/`  | `ghcr.io/1spyral/kbw-productsdisplay:latest` |

**Apply**

```sh
kubectl apply -k apps/kbw-productsdisplay
```
