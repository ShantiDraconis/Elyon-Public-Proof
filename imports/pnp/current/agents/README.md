# ATK Agent Swarm

This directory defines autonomous missions for the P-vs-NP formalization pipeline.

## Global invariant

Every agent must iterate:

INSPECT -> IMPLEMENT -> BUILD -> TEST -> DIAGNOSE -> FIX -> REBUILD

Do not stop on an intermediate compiler/test error.

Terminal states are only:
- GREEN
- GREEN/FROZEN/CERTIFIED
- OPEN_MATH
- RED_BLOCKED

Never obtain GREEN with `sorry`, `admit`, `sorryAx`, a newly introduced axiom that states the missing result, fabricated CI evidence, fabricated SHAs/runs, or by replacing a required physical implementation with an abstract interface.

Preserve previously GREEN/FROZEN/CERTIFIED checkpoints unless a concrete incompatibility is demonstrated.

The literal fixed-point G2.1 route is CLOSED_BY_FALSIFICATION and must not be reopened.

## Dependency DAG

01 T1 Physical Verifier -> 02 T1 Machine Construction
03 T5-A1 + 04 T5-A2 -> 05 T5-A3
02 + 04/05 -> 06 Self-Code / Universal Witness
06 -> 07 G21 / P02
02 + 07 -> 08 Final External
09 Audit/Freeze/Certify validates any GREEN artifact
00 Orchestrator coordinates the whole DAG

## Activation

Use the GitHub Actions workflow `ATK Agent Mission` and choose an agent id 00-09.
Each run creates its own `agent/<id>-<run-id>` branch, executes the selected mission, commits changes, and pushes the branch.

Required repository secret:
- `OPENAI_API_KEY`

The workflow deliberately does not merge to main automatically. Promotion into a certified lane must pass the audit agent and existing CI.
