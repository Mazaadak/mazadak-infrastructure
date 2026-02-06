# Mazadak Infrastructure
## Overview

The Mazadak Infrastructure repository contains Docker Compose configurations for running the entire Mazadak platform locally or in containerized environments.

It orchestrates all microservices, databases, message brokers, caching layers, observability tools, and supporting infrastructure components.

Use this repository to spin up the complete Mazadak ecosystem with a single command.

> This setup is intended for local development and testing, not production deployment.


## Components Included
- **Microservices**: Config Server, Eureka Server, Gateway, User Service, Product Catalog, Auctions, Orders, Payment, Cart, Inventory, Notifications
- **Databases**: PostgreSQL instances for each service
- **Message Broker**: Apache Kafka with Kafka UI
- **Workflow Engine**: Temporal with Temporal UI
- **Rate Limiting**: Redis
- **Observability**: Grafana, Prometheus, Loki, Tempo, Alloy
- **Development Tools**: MailDev for email testing
- **Payment Integration**: Stripe webhook handler

## Getting Started

### Clone All Repositories

To clone all Mazadak repositories at once, use the provided script:

```bash
./clone-all-repos.sh
```

This will clone all service repositories into the current directory. Make sure you have Git configured and authenticated with GitHub.

## How to Run

### Prerequisites
- Docker & Docker Compose installed
- `.env` file configured with required environment variables (use `.env.example` as template)
- **GitHub Container Registry authentication**: Log in to GHCR to pull service images
  ```bash
  docker login ghcr.io
  ```
  Use your GitHub username and a Personal Access Token (PAT) with `read:packages` scope as the password.

### Start All Services
```bash
docker-compose up -d
```

### Stop All Services
```bash
docker-compose down
```

### View Logs
```bash
docker-compose logs -f [service-name]
```

## Key Ports
- **Gateway**: 18090
- **Eureka Server**: 18050
- **Config Server**: 18071
- **Kafka UI**: 18098
- **Temporal UI**: 8088
- **Grafana**: 3000
- **Prometheus**: 9090
- **MailDev**: 1080
