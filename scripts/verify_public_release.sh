#!/usr/bin/env bash
set -euo pipefail

echo "== ELYON PUBLIC AUDIT =="
echo "commit: $(git rev-parse HEAD)"
echo "toolchain: $(cat lean-toolchain)"

test -f public/EXTERNAL_CERTIFICATE_COMPLETE.json
test -f public/PUBLIC_EXTERNAL_CERTIFICATE.md
test -f public/INDEPENDENT_VERIFICATION.md
test -f AUDIT_PROVENANCE.json
test -f EXTERNAL_AUDIT_CHECKLIST.md
test -f SCOPE_AND_LIMITATIONS.md
test -f lean/MCore/Real/Claim1To7Only.lean
test -f lean/MCore/Real/BridgeSeven.lean

echo "== SHA256 =="
sha256sum -c certs/elyon_claim1_7_only/SHA256SUMS

critical=(
  lean/MCore/Real/Claim1To7Only.lean
  lean/MCore/Real/BridgeSeven.lean
)

echo "== PLACEHOLDER SCAN =="
if grep -nE '(^|[^[:alnum:]_])(sorry|admit)([^[:alnum:]_]|$)' "${critical[@]}"; then
  echo "FAIL: sorry/admit found in public endpoint or bridge"
  exit 1
fi

echo "== CUSTOM AXIOM DECLARATION SCAN =="
if grep -nE '^[[:space:]]*(axiom|constant|constants)[[:space:]]' "${critical[@]}"; then
  echo "FAIL: custom axiom/constant declaration found in public endpoint or bridge"
  exit 1
fi

echo "== DEPENDENCIES =="
lake update

echo "== KERNEL BUILD =="
lake build MCore.Real.Claim1To7Only

echo "== AXIOM FOOTPRINT =="
lake env lean lean/MCore/Real/Claim1To7Only.lean

echo "PUBLIC_SCOPED_AUDIT: GREEN"
echo "Semantic correspondence to the standard P vs NP problem remains an independent mathematical-review obligation."
