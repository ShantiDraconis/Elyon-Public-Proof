#!/usr/bin/env python3
import json, hashlib
from pathlib import Path
from datetime import datetime, timezone

ROOT=Path(".")
SRC=ROOT/"final-proof"/"global_sources.json"
OUT=ROOT/"evidence"
OUT.mkdir(exist_ok=True)

cfg=json.loads(SRC.read_text())
pnp_reuse_path=ROOT/"final-proof"/"pnp_reuse_chain.json"
pnp_reuse=json.loads(pnp_reuse_path.read_text()) if pnp_reuse_path.exists() else None
chains=[]
for c in cfg["chains"]:
    local_refs=[]
    for p in cfg["source_of_truth"]:
        q=ROOT/p
        if q.exists():
            text=q.read_text(errors="ignore")
            if c["slot"] in text or c["final_fail"] in text:
                local_refs.append(p)
    chains.append({
        "slot":c["slot"],
        "repo":c["repo"],
        "pinned_head":c["pinned_head"],
        "terminal_producer":c["terminal_producer"],
        "source_files":c["canonical"],
        "final_fail":c["final_fail"],
        "consumer":c["consumer"],
        "state":c["state"],
        "mcore_linked_from":local_refs,
        "promotion":"BLOCKED" if "OPEN" in c["state"] else "REVIEW"
    })

closed=sum(1 for c in chains if c["promotion"]=="CLOSED")
report={
  "schema":"mcore.global-final-proof-link-report.v1",
  "generated_at":datetime.now(timezone.utc).isoformat(),
  "final_proof":f"{closed}/7",
  "chains":chains,
  "final_fail":cfg["final_fail"],
  "final_external":cfg["final_external"],
  "pnp_reuse_chain":pnp_reuse,
  "policy":"Cross-repository evidence linkage is not proof promotion. A slot closes only after the terminal theorem is kernel-checked and linked through the official consumer."
}
payload=json.dumps(report,indent=2,sort_keys=True)
(OUT/"global_final_proof_links.json").write_text(payload+"\n")
(OUT/"global_open_terminal_producers.json").write_text(json.dumps(
  [{"slot":c["slot"],"repo":c["repo"],"terminal_producer":c["terminal_producer"],"consumer":c["consumer"]}
   for c in chains if c["promotion"]!="CLOSED"],indent=2,sort_keys=True)+"\n")
root=hashlib.sha256(payload.encode()).hexdigest()
(OUT/"GLOBAL_LINK_ROOT_SHA256").write_text(root+"\n")
print("GLOBAL_FINAL_PROOF_LINKER")
print("FINAL_PROOF",report["final_proof"])
for c in chains:
    print(c["slot"],c["state"],"->",c["consumer"])
print("GLOBAL_LINK_ROOT",root)
