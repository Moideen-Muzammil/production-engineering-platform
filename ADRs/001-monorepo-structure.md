# ADR-001: Use a Monorepo Structure

## Status

Accepted

## Context

This project is a portfolio and learning project focused on building a production-grade DevOps/SRE platform.

The project contains three major areas:

- Application source code
- Infrastructure as Code
- GitOps/Kubernetes configuration

The project can be organized either as multiple repositories or as a single repository containing separate directories.

## Options Considered

### Option 1: Multiple Repositories

Separate repositories for:

- Application source
- Infrastructure
- GitOps configuration

### Option 2: Monorepo

A single repository containing:

- `app-source/`
- `infra/`
- `gitops-config/`

## Decision

We will use a monorepo.

The repository will be named:

`production-engineering-platform`

## Rationale

This project is primarily intended for learning, portfolio demonstration, and interview preparation.

A monorepo provides:

- One GitHub repository for the complete project
- Easier navigation for recruiters and reviewers
- A single place for documentation and architecture decisions
- Clear separation between application, infrastructure, and GitOps through directories
- Simpler project management during development

## Consequences

### Positive

- Easier to manage as a solo project
- Easier for reviewers to understand the complete system
- One project URL can represent the entire platform
- Documentation and implementation remain together

### Negative

- Less repository-level isolation
- Changes to different areas share the same Git history
- Repository permissions cannot be separated by component

## References

Project Brief: Production-Grade GitOps Platform with Progressive Delivery, Observability and Supply-Chain Security
