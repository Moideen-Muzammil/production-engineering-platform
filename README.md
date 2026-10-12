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

The platform uses an OpenTelemetry-based observability stack to collect, store, query, and visualize application telemetry.

### Architecture

```text

Application / OpenTelemetry Demo
              |
              v
     OpenTelemetry Collector
              |
       +------+------+
       |      |      |
       v      v      v
  Prometheus  Loki   Tempo
   Metrics    Logs   Traces
       |      |      |
       +------+------+
              |
              v
           Grafana
              |
              v
       Dashboards / Alerts

```

#### Components

- OpenTelemetry Collector: Receives telemetry through OTLP and routes traces and metrics to their respective backends.

- Prometheus: Stores and queries metrics.

- Loki: Stores and queries logs.

- Tempo: Stores and queries distributed traces.

- Grafana Alloy: Collects Kubernetes pod logs and forwards them to Loki.

- Grafana: Provides a unified interface for visualizing metrics, logs, and traces.


### Current Implementation Status

- Helm-based application configurations are maintained in Git.

- Argo CD is configured to manage the observability applications.

- Helm templates and Collector/Alloy configurations have been validated locally.

- Live-cluster deployment, telemetry flow, dashboards, alerting, and end-to-end runtime behavior remain to be verified.

### Known Limitations

- Loki and Tempo persistence are disabled in the current learning configuration. Data may be lost when their pods are recreated.

- Loki authentication is disabled; this configuration is intended for a controlled learning environment, not direct production exposure.

- Resource requests and limits are intentionally modest, and the deployment has not been load-tested.

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
