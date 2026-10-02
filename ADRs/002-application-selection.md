# ADR-002: Select OpenTelemetry Demo as Application Workload

## Status

Accepted

## Context

The Production Engineering Platform needs an existing open-source microservices application as its workload.

The application should be suitable for demonstrating:

- Containerization
- Kubernetes
- CI/CD
- GitOps
- Progressive delivery
- Observability
- Failure testing
- Service-to-service communication

The project brief identifies OpenTelemetry Demo and Google Online Boutique as suitable examples.

## Options Considered

### Option 1: OpenTelemetry Demo

A distributed microservices application designed to demonstrate OpenTelemetry and observability.

### Option 2: Google Online Boutique

A distributed microservices application commonly used for Kubernetes and cloud-native demonstrations.

## Decision

We will use the OpenTelemetry Demo as the application workload.

## Rationale

The OpenTelemetry Demo provides a distributed microservices workload that aligns closely with the main goals of this project.

It gives us an opportunity to work with:

- Multiple microservices
- Service-to-service communication
- Containerized workloads
- Kubernetes deployment
- OpenTelemetry instrumentation
- Metrics, logs and traces
- Load generation
- Failure scenarios

This makes it a suitable workload for building and demonstrating the Production Engineering Platform.

The application itself is not the primary focus of the project.

The primary focus is the platform used to build, secure, deploy, observe and operate the application.

## Consequences

### Positive

- Provides a realistic distributed workload
- Strong alignment with observability
- Multiple services provide meaningful Kubernetes complexity
- Provides opportunities for progressive delivery and failure testing
- Allows us to focus on platform engineering instead of application development

### Negative

- More complex than a simple single-service application
- Requires more Kubernetes resources
- Debugging can be more difficult because multiple services interact

We accept this additional complexity because understanding and operating a distributed workload is part of the purpose of this project.

## References

- OpenTelemetry Demo documentation
- OpenTelemetry Demo repository
- Project Brief: Production-Grade GitOps Platform with Progressive Delivery, Observability and Supply-Chain Security
