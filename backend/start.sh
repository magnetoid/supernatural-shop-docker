#!/bin/sh
set -e
echo "Running migrations..."
npx medusa db:migrate
echo "Starting server..."
exec npm run start
