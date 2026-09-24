#!/usr/bin/env python3
from __future__ import annotations
import json
import pathlib
import sys

ROOT = pathlib.Path(__file__).resolve().parents[1]
STATUS = ROOT / "MCCS_STATUS.json"

def main() -> int:
    data = json.loads(STATUS.read_text(encoding="utf-8"))
    c = data["counters"]
    queues = {q["repo"]: q for q in data["queues"]}

    canonical_ok = (
        c.get("terminal_certificates_green_frozen") == 7
        and c.get("canonical_hard_bases_green_frozen") == 7
    )
    print(f"[CERT-1] CANONICAL FOUNDATION = {'7/7 GREEN_FROZEN PASS' if canonical_ok else 'RED'}")

    m = queues["M-Core"]
    mf = m.get("formulation_obligations", {})
    mg, mo, mt = mf.get("green", 0), mf.get("open", 0), mf.get("total", 0)
    print(f"[CERT-2] M-CORE FORMULATION = {mg}/{mt} GREEN + {mo}/{mt} OPEN")
    for item in mf.get("green_items", []):
        print(f"  GREEN: {item}")
    for item in mf.get("open_items", []):
        print(f"  OPEN:  {item}")

    p = queues["m-core-p-vs-np"]
    print("[CERT-3] P01 FRONTIER")
    print(f"  HEAD: {p.get('active_attack_head')}")
    print(f"  KERNEL: {p.get('kernel_state')}")
    print(f"  TARGET: {p.get('current')}")
    print(f"  NEXT: {p.get('next_delta')}")
    for item in p.get("rejected_shortcuts", []):
        print(f"  NEGATIVE_CONTROL: {item}")

    final = c.get("final_proof")
    print(f"[CERT-4] 7 FINAL PROOFS = {final}")
    for name, q in queues.items():
        if name == "M-Core":
            continue
        print(f"  {name}: {q.get('state')} / {q.get('kernel_state')} / {q.get('current')}")

    print("[CERT-5] EXTERNAL PRIZE PATH")
    print("  Internal Lean/ATK validation is not an automatic prize certificate.")
    print("  Publication, external review/acceptance, and each prize body's current rules remain separate.")

    all_closed = (
        canonical_ok
        and mg == mt and mo == 0
        and final == "7/7"
        and all(
            q.get("state") in {"GREEN_CLOSED", "GREEN_FROZEN"}
            for name, q in queues.items()
            if name != "M-Core"
        )
    )
    if all_closed:
        print("CERTIFICADO FINAL = GREEN_CANDIDATE / 8/8 INTERNAL CLOSED")
        return 0

    print("CERTIFICADO FINAL = RED/OPEN")
    return 1

if __name__ == "__main__":
    raise SystemExit(main())
