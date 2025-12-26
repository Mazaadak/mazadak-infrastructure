# Mazadak Infrastructure
## Overview
- The Mazadak Infrastructure repository contains Docker Compose configurations for running the entire Mazadak platform locally or in containerized environments.

- It provides orchestration for all microservices, databases, message brokers, caching, observability tools, and supporting infrastructure components.

- Use this repository to spin up the complete Mazadak ecosystem with a single command.

## Components Included
- **Microservices**: Config Server, Eureka Server, Gateway, User Service, Product Catalog, Auctions, Orders, Payment, Cart, Inventory, Notifications
- **Databases**: PostgreSQL instances for each service
- **Message Broker**: Apache Kafka with Kafka UI
- **Workflow Engine**: Temporal with Temporal UI
- **Rate Limiting**: Redis
- **Observability**: Grafana, Prometheus, Loki, Tempo, Alloy
- **Development Tools**: MailDev for email testing
- **Payment Integration**: Stripe webhook handler

## How to Run

### Prerequisites
- Docker & Docker Compose installed
- `.env` file configured with required environment variables (use `.env.example` as template)

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
