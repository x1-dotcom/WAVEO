# X1 WAVEO Panel

![X1 WAVEO Panel](assets/panel-preview.svg)

**X1 WAVEO Panel v1.4 Public RC** is a production-oriented control plane for WAVEO-compatible deployments.

It combines device operations, APK release management, Cloud Sync, pairing, premium workflows, Remote Activation routing, security controls, observability and Android validation in one panel.

## Main capabilities

- Device Control with status, groups, tags, premium state and application metadata
- Portal management and direct `PANEL_API` compatibility
- Premium access and checkout workflows
- Companion pairing and Cloud Sync
- Revision, snapshot and conflict tracking
- Remote Activation routing and ACK handling
- Firebase Callable-compatible X1 router
- APK Manager with stable / beta / canary channels
- staged rollout, pause and rollback state
- Owner / Admin / Operator / Read Only RBAC
- TOTP 2FA
- encrypted provider credentials using AES-256-GCM
- asynchronous job queue and CLI worker
- Maintenance Scheduler
- Notification Center
- Telegram, Discord and generic HTTPS webhooks
- optional HMAC-SHA256 webhook signing
- versioned backups
- hash-chained audit events
- API observability
- Protocol Observatory
- Android Validation registry with PASS / FAIL / N/A / PENDING states

## Public release package

The public package is conservatively minified/obfuscated. It does **not** contain private signing keys, internal reverse-engineering notes or development-only tooling.

The release archive is stored in `release/` as Base64 text parts because this repository integration writes text files only. Use the included assembly script to reconstruct the ZIP and verify its SHA-256.

Expected SHA-256:

`50e6af9e18ff81c4775fa77032805ef47a4c94a28fe0ff72d012a8f4bf058eb3`

## Production requirements

- PHP 8.1+
- PDO SQLite
- OpenSSL
- cURL recommended for integrations
- HTTPS
- writable `storage/` and `uploads/`
- configured `X1_APP_KEY`

## Compatibility status

Server-side contracts and APK routing patches have been structurally validated.

Real-device Android validation is intentionally kept as a separate gate. Structural routing validation is not presented as proof that every Android flow has passed E2E testing.

## Community

- Telegram: https://t.me/+XkuQS_QuD6g4Nzc0
- Discord: https://discord.gg/vSSw6jHmw
- Forum: https://forum.x1panel.space

Copyright © 2026 X1Tech Solutions SA. All Rights Reserved.
