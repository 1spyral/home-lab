# Cluster Bootstrapping

This document describes how to bring up a new cluster for this repo from scratch.

## Overview

1. Install k3s with all built-in components disabled.
2. Configure `kubectl` access to the cluster.
3. Deploy CoreDNS from `infra/coredns` so name resolution works.
4. Generate a SOPS/age key pair to encrypt cluster secrets.
5. Populate encrypted secrets for:
   - SOPS age key: `cluster/flux-system/sops-age-secret.enc.yaml`
   - Cloudflare API token: `infra/cert-manager/cloudflare-api-token-secret.enc.yaml`
   - Flux GitHub SSH key: `cluster/flux-system/flux-system-secret.enc.yaml`
6. Bootstrap Flux by applying `cluster/flux-system`, which reconciles the rest of the cluster.

## Prerequisites

- A host (or VM) where you will run k3s (these instructions assume Ubuntu, e.g. 24.04.3).
- CLI tools installed on your workstation:
  - `kubectl`
  - `sops`
  - `age`
  - `bun`
  - `flux`

## 1. Install k3s (with `--disable-all`)

On the node that will run the control plane:

```sh
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server --disable-all" sh -
```

Verify the node is Ready:

```sh
sudo k3s kubectl get nodes
```

## 2. Configure `kubectl` access

On your workstation, copy the kubeconfig from the k3s node:

```sh
# on the k3s node
sudo cat /etc/rancher/k3s/k3s.yaml
```

Paste it into `~/.kube/config` (or merge with an existing config) and update the `server` address to point at your node. Then verify:

```sh
kubectl get nodes
```

## 3. Deploy CoreDNS

Apply the CoreDNS manifests from this repo so in-cluster DNS works:

```sh
kubectl apply -k infra/coredns
```

Wait until the CoreDNS pods are Ready in the `kube-system` namespace:

```sh
kubectl -n kube-system get pods -l k8s-app=kube-dns
```

## 4. Generate SOPS/age key

Generate a new age key pair on your workstation:

```sh
age-keygen -o age-key.txt
```

Optionally move it to the default SOPS location:

```sh
mkdir -p ~/.config/sops/age
mv age-key.txt ~/.config/sops/age/keys.txt
```

Record the public key printed by `age-keygen`; this is what SOPS will use to encrypt files.

## 5. Populate encrypted secrets

This repo stores Kubernetes secrets encrypted with SOPS. Before bootstrapping Flux you must update the following files with your own values:

- `cluster/flux-system/sops-age-secret.enc.yaml` – contains the age private key that Flux/KSOPS will use in-cluster.
- `infra/cert-manager/cloudflare-api-token-secret.enc.yaml` – contains the Cloudflare API token used by cert-manager.
- `cluster/flux-system/flux-system-secret.enc.yaml` – contains the SSH deploy key Flux uses to access this GitHub repo.

For each file:

1. Decrypt it.
2. Edit the secret data.
3. Re-encrypt it.

Using the helper scripts in `scripts/` (or the `bun` wrappers):

```sh
# decrypt
./scripts/sops-decrypt.sh infra/cert-manager/cloudflare-api-token-secret.enc.yaml
# or
bun run decrypt infra/cert-manager/cloudflare-api-token-secret.enc.yaml

# re-encrypt
./scripts/sops-encrypt.sh infra/cert-manager/cloudflare-api-token-secret.enc.yaml
# or
bun run encrypt infra/cert-manager/cloudflare-api-token-secret.enc.yaml
```

## 6. Enable iSCSI on Ubuntu nodes (for Longhorn)

Longhorn (deployed via `infra/longhorn`) requires iSCSI to be enabled on each storage node. On every Ubuntu node that will participate in Longhorn storage, run:

```sh
sudo apt update
sudo apt install -y open-iscsi
sudo systemctl enable --now iscsid
sudo systemctl enable --now open-iscsi
```

You can verify the services are running with:

```sh
systemctl status iscsid
systemctl status open-iscsi
```

## 7. Bootstrap Flux

Once CoreDNS is running and all required secrets are populated and encrypted, deploy the Flux system manifests using the KSOPS-enabled helper script:

```sh
bun run deploy cluster/flux-system
```

This uses `scripts/deploy.sh` (via `bun`) to run `kustomize build --enable-alpha-plugins` so the KSOPS generator can decrypt SOPS secrets before applying them.

Watch Flux components come up:

```sh
kubectl -n flux-system get pods
```

After Flux is healthy, it will reconcile the `cluster/` and `infra/` kustomizations defined in `cluster/flux`, bringing up the rest of the cluster.
