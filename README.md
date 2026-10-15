# PARETO Console

Separate copy of the Native Ads Console for the PARETO accounts only.
Own Cloudflare Worker (`pareto-console-api`, `worker/`), own KV namespace, own ACCESS_KEY.
Deploy the worker with `worker/deploy.sh` (never a bare API call — it keeps the KV binding).
No data from the original system (no costs, balances, sales, other accounts' tokens).
