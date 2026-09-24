# Public clean-room reproduction

This is the recommended reproduction procedure for an external reviewer who has **no access to the private source repository**.

## 1. Clone the public snapshot

```bash
git clone https://github.com/ShantiDraconis/Elyon-Public-Proof
cd Elyon-Public-Proof
git rev-parse HEAD
```

Record the public commit SHA in the reviewer report.

## 2. Verify the pinned environment

```bash
cat lean-toolchain
grep -n "mathlib" lakefile.lean
```

Expected toolchain: `leanprover/lean4:v4.19.0`.  
Expected mathlib tag: `v4.19.0`.

## 3. Install Lean and resolve dependencies

```bash
curl -fsSL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh | sh -s -- -y --default-toolchain none
export PATH="$HOME/.elan/bin:$PATH"
elan toolchain install "$(cat lean-toolchain)"
elan default "$(cat lean-toolchain)"
lake update
```

## 4. Verify frozen checksums

```bash
sha256sum -c certs/elyon_claim1_7_only/SHA256SUMS
```

These checksums cover the frozen scoped certificate package and its principal endpoint.

## 5. Run the public audit

```bash
bash scripts/verify_public_release.sh
```

Then run the whole repository build:

```bash
lake build
```

## 6. Inspect the formal endpoints

Review:

- `lean/MCore/Real/Claim1To7Only.lean`
- `lean/MCore/Real/BridgeSeven.lean`
- every imported theorem used by `canonicalSevenGreenEvidence`;
- the four `#print axioms` outputs.

## 7. Perform the semantic correspondence audit

Do not stop at successful compilation. Determine whether the definitions, quantifiers, encodings, reductions, canonical endpoint, and final aliases correspond to the standard external mathematical claim being discussed.

See `SCOPE_AND_LIMITATIONS.md` and `EXTERNAL_AUDIT_CHECKLIST.md`.

## Historical source references

The following SHAs/runs are provenance records from the source history:

- baseline `6634422c8004966b97c9c96b0f878852dbbd9175`, run `36048534795`;
- audit `d95cbb72b0ea671a1e70b6aa773a8f8647944de4`, run `36049892790`;
- audited release `fed4f79b1b646be824904aa32bd05a5f481791b3`, run `36050478168`;
- publication source freeze `d7298c44b8efc7202819f8095cef977e8929d4dc`.

An external reviewer does not need access to those private commits to reproduce the public snapshot.
