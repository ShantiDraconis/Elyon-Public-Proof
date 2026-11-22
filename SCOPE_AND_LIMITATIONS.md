# Scope and limitations

## Scope

The public certificate in this repository covers exactly the seven-claim chain implemented by `MCore.Real.Claim1To7Only`.

The final public aliases are:

- `EXTERNAL_CERTIFICATE := Claim1To7Evidence canonicalSevenEndpoint`
- `FINAL_ROOT := EXTERNAL_CERTIFICATE`
- `FINAL_PROOF := FINAL_ROOT`

The concrete evidence is assembled in `MCore.Real.SevenCertificateBridge.canonicalSevenGreenEvidence`.

## What a GREEN build establishes

A successful clean build shows that the checked Lean declarations compile under the pinned Lean 4.19.0 / mathlib 4.19.0 environment and that the endpoint terms are accepted by the Lean kernel.

The source also prints the axiom dependencies of the public endpoints with `#print axioms`.

## What requires independent mathematical review

External reviewers should separately verify:

- that each formal definition corresponds to its intended standard mathematical notion;
- that Claim1–Claim7, taken together, imply the intended external mathematical statement rather than only the repository-local endpoint;
- that the selected canonical endpoint is sufficiently general for any broader claim being made;
- that reductions and encodings preserve the required semantics;
- that no material theorem is weakened by an unintended definition, specialization, vacuous premise, or mismatched quantifier;
- that the theorem called `FINAL_PROOF` has the same mathematical content as any claimed result outside this repository.

## Publication language

The package may accurately be described as a reproducible Lean-checked formal package submitted for independent review. It should not be described as independently validated, peer reviewed, journal accepted, or a settled resolution of P versus NP unless and until those separate external reviews occur.

## Status names and evidence boundaries (2026-11-22)

The source declaration `canonicalFinalProof : FINAL_PROOF` proves a **repository-local alias** for seven claims at the specific `canonicalSevenEndpoint`. It must not be displayed as an externally certified Millennium theorem. The canonical endpoint fixes `α = 1`, `β = 1`, and `deficitC = 0`, with example circuits and a constant family; this does not imply the universal external theorem without a separately checked semantic bridge.

Use separate status namespaces:

- `INTERNAL_PROVED_IN_SOURCE`: a Lean proof term is present for the local proposition; recheck with pinned toolchain before asserting fresh build success.
- `EXTERNAL_OPEN_MATH`: the intended general external theorem or bridge remains unproved by this package.
- `EXTERNAL_NOT_CERTIFIED`: no audited external final certificate has been issued.
- `FINAL_FAIL`: may describe an audited failed proof attempt, **not** mathematical falsity of the theorem.
- `INDETERMINATE`: symbolic mathematical state, not a certification failure.

The 2026-11-22 audit inspected repository source but did not rerun Lean, independent comparators, or CI. Historical GREEN runs are references, not fresh validation.
