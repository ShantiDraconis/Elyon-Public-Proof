#!/usr/bin/env bash
set -euo pipefail
# ELYON_FINAL_EXTERNAL v1.0.0 / package revision v1.3.1-preparatory
# FAIL-CLOSED PREPARATORY freeze. Never emits FINAL_ROOT or ISSUED.
PACKAGE_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$PACKAGE_DIR"
echo "[freeze.sh] $PACKAGE_DIR - PREPARATORY_NOT_ISSUED"
JSON_FILES=(manifest.json status.json provenance.json gate_ledger.json axiom_footprint.json revocation.json MATH_TERMINAL_BOUNDARY_20260922.json)
PAYLOAD=(manifest.json README.md provenance.json gate_ledger.json axiom_footprint.json reproducibility.md status.json MATH_TERMINAL_BOUNDARY_20260922.json revocation.json freeze.sh)

echo "[1/8] JSON syntax"
for f in "${JSON_FILES[@]}"; do python3 -m json.tool "$f" >/dev/null; done

echo "[2/8] Fail-closed Lean-source hygiene if Lean files are present"
if find . -type f -name '*.lean' -print -quit | grep -q .; then
  if grep -R -n -E '(^|[^[:alnum:]_])(sorry|admit|sorryAx)([^[:alnum:]_]|$)' --include='*.lean' .; then
    echo 'FAIL forbidden proof escape'; exit 1
  fi
fi

echo "[3/8] Normative preparatory state"
python3 <<'PY2'
import json
m=json.load(open('manifest.json')); s=json.load(open('status.json'))
assert m['package_state']=='PREPARATORY'
assert m['public_status']=='PREPARATORY_NOT_ISSUED'
assert m['freeze_state']=='FROZEN_PREPARATORY'
assert m['issuance_gate']['FINAL_EXTERNAL_ISSUED'] is False
assert m['root']['FINAL_ROOT'] is None
assert m['root']['PREPARATORY_ROOT'] is None
assert s['issuance']['FINAL_EXTERNAL_ISSUED'] is False
assert s['final_proof']=='0/7'
assert m['final_proof']['display']=='0/7'
assert m['anchors']['ELYON']['base']=='483f6bdc06b74a0239481085e25c9a9fdccb1a8f'
assert m['anchors']['ELYON']['audit']=='0f71ffea68ed52691201144140fb1a342d03b8d7'
assert m['anchors']['ELYON']['run']=='35378862267'
assert m['anchors']['ELYON']['run_status']=='SUCCESS'
PY2

echo "[4/8] Blocker classes remain fail-closed"
python3 <<'PY2'
import json
m=json.load(open('manifest.json'))
b=json.load(open('MATH_TERMINAL_BOUNDARY_20260922.json'))
blockers=[]
if 'P01ConstructionGap' in b.get('open_gaps', []): blockers.append('P01ConstructionGap')
if 'G21Pointwise' in b.get('open_gaps', []): blockers.append('G21Pointwise')
if m['human_review']['authority']=='UNSET': blockers.append('human_review')
if m['production']['app']['app_repository']=='UNSET': blockers.append('app')
if m['production']['crypto']['crypto_provider']=='UNSET': blockers.append('crypto')
if m['production']['hardware_attestation']['status']=='UNSET': blockers.append('hardware')
assert m['G3']['status']=='CLOSED_GREEN_FROZEN_CERTIFIED'
assert m['final_proof']['taxonomy']['FINAL_EXTERNAL_TWO_GAP']=='0/2'
assert m['final_proof']['taxonomy']['P_VS_NP_ENDPOINT']=='OPEN'
assert m['final_proof']['taxonomy']['GLOBAL_7_PROBLEMS']=='0/7'
assert blockers==['P01ConstructionGap','G21Pointwise','human_review','app','crypto','hardware'], blockers
print('blockers:', blockers)
PY2

echo "[5/8] Generate canonical PACKAGE_SHA256SUMS"
rm -f SHA256SUMS PREPARATORY_ROOT
sha256sum "${PAYLOAD[@]}" > SHA256SUMS

echo "[6/8] Generate PREPARATORY_ROOT out-of-band"
sha256sum SHA256SUMS | awk '{print $1}' > PREPARATORY_ROOT
cat PREPARATORY_ROOT

echo "[7/8] Re-verify payload was not mutated"
sha256sum -c SHA256SUMS

echo "[8/8] FINAL_ROOT remains null / issuance remains false"
python3 <<'PY2'
import json
m=json.load(open('manifest.json')); s=json.load(open('status.json'))
assert m['root']['FINAL_ROOT'] is None
assert m['issuance_gate']['FINAL_EXTERNAL_ISSUED'] is False
assert s['issuance']['FINAL_EXTERNAL_ISSUED'] is False
PY2

echo 'RESULT=FROZEN_PREPARATORY'
echo 'FINAL_EXTERNAL_ISSUED=false'
