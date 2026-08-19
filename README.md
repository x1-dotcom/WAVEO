<p align="center">
  <img src="./assets/x1-waveo-hero.svg" alt="X1 WAVEO" width="100%" />
</p>

# X1 WAVEO Panel

**X1 WAVEO Panel v1.4 Public RC** is a public X1 control-plane project for WAVEO-compatible deployments.

It brings device operations, release management, pairing, cloud-state workflows, security controls, observability and Android validation into one self-hosted operational surface.

<p align="center">
  <img src="./assets/x1-waveo-status.svg" alt="WAVEO status" width="100%" />
</p>

## Public RC means Public RC

The repository contains public source under `src/` and is presented as a **Release Candidate**, not as a blanket production guarantee for every environment.

The existing public layout has been prepared for distribution, while private signing material, internal development notes and sensitive tooling remain outside the public repository.

A source tree being present does not automatically prove every runtime path on every device or server configuration.

## Operational surface

WAVEO currently documents support for these public areas:

- device control, grouping, tags and application metadata;
- portal management;
- pairing and cloud-state workflows;
- revision, snapshot and conflict tracking;
- remote activation routing and acknowledgements;
- application release channels and staged rollout state;
- pause and rollback controls;
- role-based administration;
- TOTP two-factor authentication;
- encrypted external-provider credentials;
- asynchronous jobs and worker execution;
- maintenance scheduling;
- notification integrations;
- versioned backups;
- chained audit events;
- API and protocol observability;
- Android validation with explicit `PASS / FAIL / N/A / PENDING` states.

## Control loop

WAVEO is designed around a simple operational rule:

**DEFINE STATE → DELIVER STATE → RECEIVE ACK → OBSERVE RESULT → VALIDATE BEHAVIOR**

A command being queued or delivered is not the same as the final device behavior being proven.

## Public-source discipline

The public PHP source is conservatively prepared for distribution. The project does not rely on an opaque encoded runtime loader as the public application model.

Sensitive material must never be committed with an installation, including production credentials, signing material, private keys, customer data or environment-specific secrets.

## Requirements

- PHP 8.1+
- PDO SQLite
- OpenSSL
- HTTPS
- writable runtime storage and upload directories
- installation-specific application key
- cURL recommended for external integrations

## Installation

1. Copy `src/` to the target web directory.
2. Create the environment configuration from the provided example.
3. Generate and configure a strong installation-specific application key.
4. Ensure runtime storage and upload directories have the required permissions.
5. Open the installer and create the first Owner account.
6. Configure the worker using cron/systemd where queued operations are required.
7. Run the available validation surfaces before treating the deployment as production-ready.

## Compatibility is evidence-based

WAVEO targets the client contracts and routing behavior implemented by this project, but compatibility can still vary with application version, Android version, device model, server configuration and upstream behavior.

When reporting a compatibility problem, include the application/APK version, Android version, device model, affected feature, expected behavior, actual behavior and relevant sanitized logs.

Do not include passwords, tokens, private credentials or signing material in public issues.

## X1 release rule

We distinguish between:

- **SOURCE PRESENT** — implementation is in the repository;
- **TESTED** — a reproducible test has passed;
- **RUNTIME VERIFIED** — behavior was observed in a real runtime;
- **PUBLIC RC** — the version is published as a release candidate;
- **PRODUCTION VERIFIED** — only when production evidence genuinely exists.

These states are not interchangeable.

## Community

- Telegram: https://t.me/+XkuQS_QuD6g4Nzc0
- Discord: https://discord.gg/vSSw6jHmw
- Forum: https://forum.x1panel.space

---

<p align="center">
  <strong>CONTROL THE STATE.</strong><br>
  <strong>OBSERVE THE RESULT.</strong><br>
  <strong>VERIFY THE BEHAVIOR.</strong><br><br>
  <strong>X1 // WAVEO</strong>
</p>

<p align="center">
  © 2026 X1Tech Solutions SA. All Rights Reserved.
</p>
