# K9 GREEN Certificate — Zero-Axiom Prime-Divisor Bridge

## Immutable checkpoint

- Stage: K9
- Frozen SHA: `e3b8598a2513b539b285dfb31dc383b770ab840f`
- Frozen ref: `frozen/k9-green-e3b8598`
- Workflow: `certificate`
- Run: `35155579345` (#79)
- Job: `104994105119` (`k9`)
- Toolchain: Lean `4.19.0`, Lake `5.0.0-6caaee8`
- Runner: Ubuntu 24.04
- Result: GREEN / success

This certificate is documentary. It does not redefine or move the frozen checkpoint above.

## Gates passed

1. G0 fail-closed source hygiene: PASS — no `sorry`, `admit`, or Lean `axiom`/`constant(s)` declarations admitted by the source firewall.
2. Preserve K8 GREEN kernel: PASS — `lake build MCore.K8`.
3. Build K9 local arithmetic core: PASS — `lake build MCore.K9.Core.Arith`.
4. Build K9 prime-divisor bridge: PASS — `lake build MCore.K9`.
5. K9 zero-axiom dependency audit: PASS.
6. Prime-divisor property is not silently assumed: PASS.
7. Endpoint remains non-promoted: PASS — the existing negative certificate firewall for `bealEndpointNode` still compiles.
8. Clean reproduction: PASS — `lake clean` followed by fresh builds of the local arithmetic core, K9, and the full `MCore` target.

## Zero-axiom audit

The run reported no axiomatic dependencies for every audited declaration:

- `MCore.K9.Core.add_succ_core`
- `MCore.K9.Core.mul_succ_core`
- `MCore.K9.Core.add_assoc_core`
- `MCore.K9.Core.mul_add_core`
- `MCore.K9.Core.mul_assoc_core`
- `MCore.nat_dvd_trans`
- `MCore.commonPrime_to_commonDivisor`
- `MCore.commonDivisor_to_commonPrime_of_primeDivisor`
- `MCore.commonPrime_iff_commonDivisor_of_primeDivisor`

The earlier `propext` dependency inherited through the library theorem `Nat.mul_assoc` was removed by a local arithmetic core rather than by weakening the trust policy.

## Dependency statement

K9 depends on the previously certified K8 layer and on the explicit proposition `PrimeDivisorProperty` supplied as a hypothesis to the conditional common-divisor-to-common-prime bridge. K9 does **not** prove `PrimeDivisorProperty` itself.

## Epistemological classification

`PROVED_LOGIC / ZERO_AXIOM_CONDITIONAL_BRIDGE`

K9 proves, with zero reported axiomatic dependencies for the audited declarations, the conditional equivalence between `CommonPrime a b c` and existence of a nontrivial `CommonDivisor`, provided `PrimeDivisorProperty` is supplied.

It does **not** prove the elementary prime-divisor property, and it does **not** prove the Beal Conjecture. The Beal endpoint remains `OPEN_BRIDGE` and non-certified.

## Preservation rule

`frozen/k9-green-e3b8598` must continue to point exactly to `e3b8598a2513b539b285dfb31dc383b770ab840f`. Later documentation, K10 work, TrustPolicy work, papers, or aggregate certificates are descendants and must never mutate this checkpoint.
