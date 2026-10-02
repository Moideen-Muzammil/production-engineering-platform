# ADR-003: Use GKE as the Kubernetes Platform

## Status

Accepted

## Context

The Production Engineering Platform requires a Kubernetes environment
for running the OpenTelemetry Demo workload and demonstrating:

- GitOps with Argo CD
- Progressive delivery with Argo Rollouts
- Observability
- Security policies
- Secret management
- Autoscaling
- Backup and restore
- Chaos engineering

The original project brief specifies k3s running on Oracle Cloud VMs.

After obtaining GCP Free Trial credits, we reconsidered the Kubernetes
platform choice.

## Options Considered

### Option 1: GCE VMs + k3s

Run k3s on Google Compute Engine VMs and manage the Kubernetes
infrastructure ourselves.

### Option 2: Google Kubernetes Engine (GKE)

Use Google Kubernetes Engine as the managed Kubernetes platform.

## Decision

We will use Google Kubernetes Engine (GKE) as the Kubernetes platform.

Terraform will provision and manage the GCP infrastructure and GKE
cluster.

The application platform running on Kubernetes will remain under our
control, including:

- Argo CD
- Argo Rollouts
- Observability stack
- Kyverno
- Secrets management
- Autoscaling
- Network policies
- Backup and restore
- Chaos engineering

## Rationale

GKE allows the project to focus more deeply on the production engineering
platform rather than spending significant project time operating the
Kubernetes control plane itself.

This project is primarily intended to demonstrate production DevOps/SRE
practices around a Kubernetes workload.

Using GKE also provides practical experience with:

- GCP networking
- IAM
- Kubernetes
- GKE
- Infrastructure as Code
- Cloud-native security
- Load balancing
- Managed Kubernetes operations

We will still learn the Kubernetes control-plane architecture
conceptually and understand which responsibilities are managed by GKE
and which remain our responsibility.

## Consequences

### Positive

- Less time spent maintaining the Kubernetes control plane
- More time available for GitOps, observability, security and reliability
- Provides practical managed-Kubernetes experience
- Strong alignment with modern cloud DevOps environments
- Terraform remains responsible for infrastructure provisioning

### Negative

- We will not gain hands-on experience operating a Kubernetes control
  plane ourselves
- GKE introduces cloud-provider-specific concepts
- The project may consume GCP resources and therefore requires cost
  monitoring

## Scope

GKE is the runtime Kubernetes platform.

The application platform remains cloud-native and Kubernetes-based so
that most components can be reproduced on another Kubernetes
environment if required.

## References

- Production Engineering Platform Project Brief
- GKE documentation
