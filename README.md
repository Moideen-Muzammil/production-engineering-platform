# Production Engineering Platform

A production-grade DevOps/SRE platform demonstrating secure CI/CD, GitOps, progressive delivery, observability, policy enforcement, disaster recovery, and chaos engineering.

## Project Goal

Build a platform that can take a containerized application from a Git commit to production while providing:

- Secure software supply chain
- Automated CI/CD
- Pull-based GitOps
- Progressive delivery with automated rollback
- Metrics, logs, and traces
- SLOs and alerting
- Kubernetes policy enforcement
- Secure secret management
- Backup and disaster recovery
- Chaos engineering
- Operational documentation and postmortems

## Architecture

```text
Developer
    |
    v
GitHub
    |
    v
CI Pipeline
    |
    +--> Test
    +--> Build
    +--> Security Scan
    +--> SBOM
    +--> Sign Image
    |
    v
Container Registry
    |
    v
GitOps Configuration
    |
    v
Argo CD
    |
    v
Kubernetes
    |
    v
Argo Rollouts
    |
    +--> Canary
    +--> Metrics Analysis
    +--> Automatic Rollback
    |
    v
Production

```

## Observability

```text

Application
    |
    v
OpenTelemetry
    |
    +--> Prometheus
    +--> Loki
    +--> Tempo
    |
    v
Grafana
    |
    v
Alerts / SLOs / Runbooks

```

## Repository structure

production-engineering-platform/
│
├── app-source/          # Application source
├── infra/               # Infrastructure as Code
├── gitops-config/       # Kubernetes/GitOps configuration
├── ADRs/                # Architecture Decision Records
├── docs/                # Architecture, operations and troubleshooting
├── LEARNINGS.md         # Engineering lessons and interview notes
└── README.md


## Engineering Principles

- Everything as code
- Git is the source of truth
- No manual production deployments
- No plaintext secrets in Git
- Security is integrated into the delivery pipeline
- Infrastructure is reproducible
- Production changes are observable
- Failures should be tested deliberately
- Architecture decisions are documented
