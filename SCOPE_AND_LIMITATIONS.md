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
