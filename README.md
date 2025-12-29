# home-lab

_Home Kubernetes configuration_

This repository contains the declarative configuration for my personal k3s cluster,
managed via GitOps.

**[Bootstrapping](BOOTSTRAP.md)**

<img width="256" alt="image" src="https://github.com/user-attachments/assets/99cca473-14ba-4864-a25a-581a74091949" />

---

## Features

### Cluster

- k3s
- Single-node cluster (control plane + workloads)

### GitOps

- Flux for reconciliation
- All day-2 changes applied via Git

### Ingress

- Traefik ingress controller
- TLS termination at ingress

### External Access

- Public IP
- Cloudflare DNS (no Tunnel)

### Databases

- CloudNativePG for PostgreSQL
- Operator-managed clusters support both shared and per-application PostgreSQL instances

---

## Node Info

| Name        | Role(s)                      | CPU                         | RAM  | Storage    |
| ----------- | ---------------------------- | --------------------------- | ---- | ---------- |
| gloo-server | control plane, central brain | Intel i9-13900 (32 threads) | 64GB | 3.6TB NVMe |
