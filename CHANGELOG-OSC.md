# OSC Changelog

## 2026-04-24

- Added `Dockerfile.osc` for Eyevinn Open Source Cloud deployment
- Added `osc-entrypoint.sh` with DATABASE_URL parsing and OSC_HOSTNAME → GLITCHTIP_DOMAIN mapping
- Enabled embedded worker mode (`GLITCHTIP_EMBED_WORKER=true`) for single-container operation
- Added `README-OSC.md` with OSC deployment documentation
- Submitted to OSC service catalog via supply pipeline
