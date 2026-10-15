#!/bin/bash
# Deploys worker.js as the SEPARATE worker "pareto-console-api" (own KV, own ACCESS_KEY).
# Always includes ALL non-secret bindings from metadata.json or they get wiped.
set -euo pipefail
cd "$(dirname "$0")"
set -a; source /Users/leosantana/.config/cloudflare/token.env; set +a
ACCOUNT_ID=e5fb63286d36e63687bf9109759eb70e
SCRIPT_NAME=pareto-console-api
curl -s -X PUT "https://api.cloudflare.com/client/v4/accounts/${ACCOUNT_ID}/workers/scripts/${SCRIPT_NAME}" \
  -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}" \
  -F "metadata=@metadata.json;type=application/json" \
  -F "worker.js=@worker.js;type=application/javascript+module"
echo
