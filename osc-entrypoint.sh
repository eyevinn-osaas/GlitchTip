#!/bin/bash
set -e

# DATABASE_URL parsing
if [ -n "$DATABASE_URL" ]; then
  if [[ "$DATABASE_URL" =~ ^([^:]+)://([^:]*):?([^@]*)@([^:]+):([0-9]+)/?(.*)$ ]]; then
    DB_SCHEME="${BASH_REMATCH[1]}"
    export DB_HOST="${BASH_REMATCH[4]}" DB_PORT="${BASH_REMATCH[5]}"
    export DB_USER="${BASH_REMATCH[2]}" DB_PASSWORD="${BASH_REMATCH[3]}"
    export DB_NAME="${BASH_REMATCH[6]}"
    case "$DB_SCHEME" in
      "postgresql"|"postgres")
        export PGHOST="$DB_HOST" PGPORT="$DB_PORT" PGUSER="$DB_USER"
        export PGPASSWORD="$DB_PASSWORD" PGDATABASE="$DB_NAME" POSTGRES_URL="$DATABASE_URL" ;;
    esac
  fi
fi

# OSC_HOSTNAME → GLITCHTIP_DOMAIN
if [ -n "$OSC_HOSTNAME" ]; then
  export GLITCHTIP_DOMAIN="${GLITCHTIP_DOMAIN:-https://$OSC_HOSTNAME}"
fi

# Run web + embedded worker in a single container
export GLITCHTIP_EMBED_WORKER="${GLITCHTIP_EMBED_WORKER:-true}"

exec "$@"
