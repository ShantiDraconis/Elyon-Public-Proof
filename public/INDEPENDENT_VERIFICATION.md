# Independent verification guide

Use a clean Linux environment.

```bash
git checkout fed4f79b1b646be824904aa32bd05a5f481791b3
curl -fsSL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh | sh -s -- -y --default-toolchain none
export PATH="$HOME/.elan/bin:$PATH"
elan toolchain install "$(cat lean-toolchain)"
elan default "$(cat lean-toolchain)"
lake update
sha256sum -c certs/elyon_claim1_7_only/SHA256SUMS
lake build MCore.Real.Claim1To7Only
```

Then inspect:

```bash
grep -n "#print axioms" lean/MCore/Real/Claim1To7Only.lean
grep -R -nE '(^|[^[:alnum:]_])(sorry|admit)([^[:alnum:]_]|$)' lean/MCore/Real/Claim1To7Only.lean
```

For a full mathematical audit, reviewers should also inspect the imported modules underlying each of the seven claims, not only the wrapper.
