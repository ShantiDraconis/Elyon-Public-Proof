# Independent verification guide

Use a clean Linux environment and audit the **public commit you actually cloned**.

```bash
git clone https://github.com/ShantiDraconis/Elyon-Public-Proof
cd Elyon-Public-Proof
git rev-parse HEAD
cat lean-toolchain
cat lakefile.lean

curl -fsSL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh | sh -s -- -y --default-toolchain none
export PATH="$HOME/.elan/bin:$PATH"
elan toolchain install "$(cat lean-toolchain)"
elan default "$(cat lean-toolchain)"

lake update
sha256sum -c certs/elyon_claim1_7_only/SHA256SUMS
lake build MCore.Real.Claim1To7Only
lake build
```

Inspect the kernel dependency output:

```bash
lake env lean lean/MCore/Real/Claim1To7Only.lean
```

The file contains `#print axioms` for:

- `canonicalClaim1To7`
- `canonicalExternalCertificate`
- `canonicalFinalRoot`
- `canonicalFinalProof`

Run source checks on the public endpoint and bridge:

```bash
grep -n "#print axioms" lean/MCore/Real/Claim1To7Only.lean
grep -nE '(^|[^[:alnum:]_])(sorry|admit)([^[:alnum:]_]|$)'   lean/MCore/Real/Claim1To7Only.lean   lean/MCore/Real/BridgeSeven.lean || true
grep -nE '^[[:space:]]*(axiom|constant|constants)[[:space:]]'   lean/MCore/Real/Claim1To7Only.lean   lean/MCore/Real/BridgeSeven.lean || true
```

Then perform the mathematical audit described in `EXTERNAL_AUDIT_CHECKLIST.md` and `SCOPE_AND_LIMITATIONS.md`.

## Historical provenance

The source package records three successful historical runs:

- proof baseline `6634422c8004966b97c9c96b0f878852dbbd9175`, run `36048534795`;
- audit package `d95cbb72b0ea671a1e70b6aa773a8f8647944de4`, run `36049892790`;
- audited release `fed4f79b1b646be824904aa32bd05a5f481791b3`, run `36050478168`.

The public snapshot was prepared from source freeze `d7298c44b8efc7202819f8095cef977e8929d4dc`. Reviewers do not need access to private history to compile and inspect the public snapshot.
