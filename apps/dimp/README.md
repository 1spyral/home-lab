# Dimp

[GitHub Repo](https://github.com/1spyral/dimp)

Dimp (Discord Imp) is a microservice-operated Discord bot that sits in your Discord server, learning more about it while chatting like a regular human.

**Components**

| Component           | Port | Path                               | Ingress Endpoint | Image                                 | Notes                                                      |
| ------------------- | ---- | ---------------------------------- | ---------------- | ------------------------------------- | ---------------------------------------------------------- |
| dimp-auth           | 3000 | `base/dimp-auth/service.yaml`      |                  | `ghcr.io/1spyral/dimp-auth`           |                                                            |
| dimp-bot            |      | `base/dimp-bot/deployment.yaml`    |                  | `ghcr.io/1spyral/dimp-bot`            | No exposed ports defined yet, web server isn't set up yet  |
| dimp-dashboard      | 80   | `base/dimp-dashboard/service.yaml` |                  | `ghcr.io/1spyral/dimp-dashboard`      |                                                            |
| dimp-server         | 3000 | `base/dimp-server/service.yaml`    |                  | `ghcr.io/1spyral/dimp-server`         |                                                            |
| dimp-server-migrate |      | `migrate/migrate-job.yaml`         |                  | `ghcr.io/1spyral/dimp-server-migrate` |                                                            |
| pg                  | 6543 | `pg/service.yaml`                  |                  |                                       | PostgreSQL Cluster provisioned by [cnpg](../../infra/cnpg) |

**Apply**

```sh
kubectl apply -k apps/base/dimp
```
