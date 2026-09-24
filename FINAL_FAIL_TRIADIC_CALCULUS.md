# FINAL_FAIL triadic closed-center dynamics

Formal sources:
- `lean/MCore/FinalFail/TriadicObstructionCalculus.lean`
- `lean/MCore/FinalFail/ClosedCenterHard.lean`

Status: NEW FORMAL METAMATHEMATICS / NO PROBLEM-ENDPOINT PROMOTION.

The original triadic calculus distinguished three sites: start, middle and finish.
The hardened version now separates two oriented forces:

```text
advance:  START  -> CENTER -> FINISH
return:   START <- CENTER <- FINISH
```

Thus the center is simultaneously:
1. the image of START under the advance force;
2. the image of FINISH under the return force;
3. a branch point with two admissible outgoing transitions, CENTER -> START and CENTER -> FINISH.

The unlabeled transition relation is therefore non-unique at CENTER. This is the
formal version of leaving the branch open. It is not a new numerical definition
of 0/0 and it does not assert that one branch is selected by the formal system.

## Closedness

`ClosedAt` attaches the already-existing START/CENTER/FINISH closed propositions
to the three sites. `AllSitesClosed` asserts closure of all three. The theorem
`closed_transition_preserves_closed` proves that every allowed transition
remains inside the closed triad.

## HARD semantic layer

`ClosedCenterHard Start Center Finish` contains exactly four maps that an
application must prove:

```text
Start  -> Center
Center -> Start
Center -> Finish
Finish -> Center
```

From those four maps the kernel derives:

```text
Start <-> Center
Center <-> Finish
Start <-> Finish
```

and therefore a certified START proposition yields FINISH.

This is the new HARD architecture. It is deliberately fail-closed: the formal
core does not manufacture any of the four semantic maps. For an open problem,
claiming resolution requires instantiating START, CENTER and FINISH with the
actual mathematical statements and proving all required maps without sorry,
admit, hidden oracle, circularity, trivial witnesses or semantic weakening.

The theorem `closed_center_terminal_chain_closure` states the exact conditional
resolution principle. It is a metatheorem about the architecture, not a proof
of any currently open Millennium endpoint.

## Relation to the earlier compression calculus

The older `compressSite` remains useful as the many-to-one map toward CENTER.
The new two-force system adds the missing directional dynamics:
START -> CENTER -> FINISH and FINISH -> CENTER -> START.

So compression and bidirectional dynamics coexist:
- compression identifies the common CENTER;
- the two forces describe allowed motion through it;
- the semantic HARD maps determine whether a concrete mathematical problem
  actually realizes those arrows.
