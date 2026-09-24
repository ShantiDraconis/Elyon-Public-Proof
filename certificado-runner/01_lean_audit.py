#!/usr/bin/env python3
from __future__ import annotations
import pathlib, re, sys

ROOT = pathlib.Path(__file__).resolve().parents[1]
TARGETS = [
    ROOT / "lean" / "MCore" / "FinalFail",
]
bad_term = re.compile(r"(^|[^A-Za-z0-9_])(sorry|admit)([^A-Za-z0-9_]|$)")
bad_decl = re.compile(r"^\s*(?:@\[[^]]*\]\s*)?(axiom|constant|constants)\s+")

def main() -> int:
    bad = []
    checked = 0
    for root in TARGETS:
        for f in sorted(root.rglob("*.lean")):
            checked += 1
            for i, line in enumerate(f.read_text(encoding="utf-8").splitlines(), 1):
                if bad_term.search(line):
                    bad.append(f"{f.relative_to(ROOT)}:{i}: placeholder")
                if bad_decl.search(line):
                    bad.append(f"{f.relative_to(ROOT)}:{i}: axiom/constant declaration")
    print(f"[MCORE-LEAN-AUDIT] checked={checked}")
    if bad:
        print("\n".join(bad))
        print("[MCORE-LEAN-AUDIT] RED")
        return 1
    print("[MCORE-LEAN-AUDIT] PASS")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
