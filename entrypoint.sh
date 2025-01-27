#!/bin/sh
chown -R $(whoami) /rails/storage
exec "$@"