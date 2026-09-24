# M-Core Read-Only Export Boundary v1

M-Core remains the formal mathematical core. It is not an executable brain and
is not a runtime dependency of consumers.

The only supported consumer surface is:

`EXPORTS/MCORE_READONLY_INTERFACE_V1.json`

The manifest pins the certified indeterminacy/HARD core and exposes only a small
allowlist of definitions and proved invariants. Problem-specific attack modules,
workflow control, repository mutation, proof promotion, and FINAL_PROOF state are
outside the interface.

A consumer may reimplement the exported semantics locally, but must not infer
that it has inherited any theorem or capability that is absent from the
allowlist.

The interface is deliberately read-only. Expanding it requires a new version,
a new audit, and an explicit allowlist change.
