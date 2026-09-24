# External Certificate Archive

This directory collects public-safe certificate and audit artifacts copied from related ShantiDraconis research repositories. Each package is stored under:

`external-certificates/<source-repository>/<source-sha-prefix>/...`

The archive preserves source provenance and keeps distinct research lines separate.

## Imported source snapshots

- `m-core-p-vs-np` — source SHA `91124f7b7aad032a6d009d0cf664edbd2d492ca7`
- `m-core-bsd` — source SHA `185703454ebf360a34ed0cc8b3054e18a24d8a50`
- `m-core-hodge` — source SHA `fa1aa759eb956bb9a4496d691b49464e4731e3d4`
- `m-core-riemann` — source SHA `b75dcaaccb979ad5cec5fd46eed6e2c38c2b4cd3`
- `m-core-yang-mills` — source SHA `97a566dad680be3de5fbde11b1b71e4bebc88193`
- `m-core-beal` — source SHA `fe1e5027dbe051cecdf4750ada197a57defae816`
- `navier-stokes-critical-barrier-audit` — source SHA `612579582e24efdc862225038f9b3dfb001fda60`

## What is included

Public-safe certificates, GREEN markers, manifests, gate ledgers, frontier/status material, terminal-producer indices, reproducibility records, selected theorem-status matrices, selected CI/audit records, and formal endpoint artifacts relevant to external verification.

## What is deliberately excluded

Secrets, credentials, private keys, `.env`, local build caches, binary build outputs, unrelated personal data, raw private conversation provenance, and private Git history not necessary for independent verification.

## Interpretation

A file named `CERTIFICATE`, `GREEN`, `FROZEN`, or `CERTIFIED` records the status asserted by its source repository. Archiving it here does not convert that status into independent external mathematical validation. Reviewers should inspect the theorem statements, dependencies, assumptions, and correspondence to the standard mathematical problem.
