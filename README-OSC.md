# GlitchTip on Eyevinn Open Source Cloud

[GlitchTip](https://glitchtip.com) is an open source error monitoring platform compatible with the Sentry SDK. Drop in your existing Sentry DSN URL and start collecting errors, performance events, and uptime metrics.

## Run on OSC

Deploy GlitchTip as a managed service on [Eyevinn Open Source Cloud](https://www.osaas.io) — no infrastructure management, instant provisioning, pay-as-you-go.

### Required configuration

| Variable | Description |
|---|---|
| `SECRET_KEY` | Django cryptographic secret (generate a random string) |
| `DATABASE_URL` | PostgreSQL connection string |

### Optional configuration

| Variable | Description |
|---|---|
| `REDIS_URL` | Redis/Valkey connection string for queuing and caching |
| `EMAIL_URL` | SMTP connection string for alert emails |
| `DEFAULT_FROM_EMAIL` | Sender address for outgoing emails |

### Sentry SDK compatibility

GlitchTip is a drop-in replacement for Sentry. Replace the Sentry DSN hostname with your OSC instance hostname. All official Sentry SDKs (JavaScript, Python, Go, Ruby, Java, .NET, PHP, iOS, Android) work without code changes.

## About Eyevinn Open Source Cloud

[Eyevinn Open Source Cloud](https://www.osaas.io) is a platform for running open source software as managed services. Maintained by [Eyevinn Technology](https://www.eyevinn.se).
