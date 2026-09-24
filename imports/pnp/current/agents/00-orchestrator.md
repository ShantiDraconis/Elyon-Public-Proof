# AGENT-00 — ORCHESTRATOR

Mission: coordinate the entire FINAL_PROOF DAG without fabricating closure.

Inspect the real repository state, current branches, commits, CI evidence, Lean files, and existing certificates. Reuse proven work and avoid duplicate implementations.

Dependency order:
T1 Physical -> T1 Construction
T5-A1 + T5-A2 -> T5-A3
T1 + T5 machinery -> Self-Code / Universal Witness
Universal Witness -> G21/P02
T1 + P02 -> FinalExternal -> FINAL_ROOT -> FINAL_PROOF

Responsibilities:
- discover the real HEAD and relevant branches;
- identify already GREEN/FROZEN/CERTIFIED artifacts;
- preserve certified checkpoints;
- detect stale status files versus kernel/CI reality;
- integrate only verified commits;
- never promote OPEN_MATH to a theorem;
- never reopen G2.1 literal fixed-point;
- when independent tasks exist, leave explicit branch/task boundaries for parallel workers.

Terminal GREEN requires FINAL_PROOF to be backed by real kernel-valid artifacts and non-null FINAL_ROOT. Otherwise report the exact minimal remaining gaps as OPEN_MATH or RED_BLOCKED.
