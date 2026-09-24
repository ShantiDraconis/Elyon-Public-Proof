# Claim1-7 external audit reproduction

Pinned proof baseline:

- commit: `6634422c8004966b97c9c96b0f878852dbbd9175`
- successful GitHub Actions run: `36048534795`
- Lean toolchain: `leanprover/lean4:v4.19.0`

Reproduce the scoped kernel check:

```bash
git checkout 6634422c8004966b97c9c96b0f878852dbbd9175
curl -fsSL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh | sh -s -- -y --default-toolchain none
export PATH="$HOME/.elan/bin:$PATH"
elan toolchain install "$(cat lean-toolchain)"
elan default "$(cat lean-toolchain)"
lake update
sha256sum -c certs/elyon_claim1_7_only/SHA256SUMS
lake build MCore.Real.Claim1To7Only
```

The source prints the axioms of the Claim1-7 bundle and of the scoped external-certificate, final-root, and final-proof endpoints.

Scope is strictly Claim1 through Claim7. This reproduction package does not promote unrelated proof lanes or assert the status of the global ELYON package.
