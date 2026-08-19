# X1 WAVEO Panel v1.4 Public RC

Production-oriented control panel for the X1 WAVEO integration.

This public build contains conservatively minified PHP source and excludes private signing keys, internal reverse-engineering notes and development-only tooling.

## Highlights

- Device Control
- Portal management
- Premium access and checkout
- Companion pairing
- Cloud Sync with revision/snapshot tracking
- Conflict management
- Remote Activation routing
- Firebase Callable-compatible X1 router
- APK Manager with channels, rollout and rollback state
- RBAC: Owner / Admin / Operator / Read Only
- TOTP 2FA
- encrypted provider credentials
- async job queue
- maintenance scheduling
- notifications
- Telegram / Discord / generic HTTPS webhooks
- audit and API observability
- Protocol Observatory
- Android Validation registry

## Production requirements

- PHP 8.1+
- PDO SQLite
- OpenSSL
- cURL recommended for integrations
- HTTPS
- writable `storage/` and `uploads/`
- a configured `X1_APP_KEY`

## Compatibility status

Server-side contracts and APK routing patches are developed and structurally validated.

Real-device Android validation remains a separate gate. Do not treat structural routing validation as proof that every Android flow has passed E2E testing.

Copyright © 2026 X1Tech Solutions SA. All Rights Reserved.
