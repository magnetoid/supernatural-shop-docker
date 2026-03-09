#!/bin/sh
set -e
echo "Running migrations..."
node_modules/.bin/medusa db:migrate
echo "Starting server..."
exec node .medusa/server/index.js
