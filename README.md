# Elyon Public Proof

Public, independently reviewable snapshot of the Elyon Claim1–Claim7 formal verification package.

## Verify in a clean environment

```bash
git clone https://github.com/ShantiDraconis/Elyon-Public-Proof
cd Elyon-Public-Proof
curl -fsSL https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh | sh -s -- -y --default-toolchain none
export PATH="$HOME/.elan/bin:$PATH"
elan toolchain install "$(cat lean-toolchain)"
elan default "$(cat lean-toolchain)"
lake update
sha256sum -c certs/elyon_claim1_7_only/SHA256SUMS
lake build MCore.Real.Claim1To7Only
lake build
```

Expected result: the scoped Claim1–Claim7 endpoint and the repository build complete successfully under the pinned toolchain.

## One-command scoped audit

After installing the pinned Lean toolchain:

```bash
bash scripts/verify_public_release.sh
```

The script verifies the frozen SHA-256 manifest, scans the public endpoint/bridge for placeholders or local axiom declarations, builds the scoped endpoint, and prints its Lean axiom footprint.

## Audit entry points

Start with `AUDIT_INDEX.md`. The core public evidence is:

- `public/PUBLIC_EXTERNAL_CERTIFICATE.md`
- `public/EXTERNAL_CERTIFICATE_COMPLETE.json`
- `public/INDEPENDENT_VERIFICATION.md`
- `AUDIT_PROVENANCE.json`
- `CRITICAL_BLOB_EQUIVALENCE.json`
- `PUBLICATION_MANIFEST.json`
- `AUDITOR_REPORT_TEMPLATE.md`
- `EXTERNAL_AUDIT_CHECKLIST.md`
- `SCOPE_AND_LIMITATIONS.md`
- `certs/elyon_claim1_7_only/SHA256SUMS`
- `lean/MCore/Real/Claim1To7Only.lean`
- `lean/MCore/Real/BridgeSeven.lean`

## Certified repository-local chain

`Claim1 → Claim2 → Claim3 → Claim4 → Claim5 → Claim6 → Claim7 → EXTERNAL_CERTIFICATE → FINAL_ROOT → FINAL_PROOF`

The four public endpoint declarations are:

- `MCore.Real.Claim1To7Only.canonicalClaim1To7`
- `MCore.Real.Claim1To7Only.canonicalExternalCertificate`
- `MCore.Real.Claim1To7Only.canonicalFinalRoot`
- `MCore.Real.Claim1To7Only.canonicalFinalProof`

## Provenance

Publication source freeze:

`d7298c44b8efc7202819f8095cef977e8929d4dc`

Historical successful verification anchors:

- `6634422c8004966b97c9c96b0f878852dbbd9175` — run `36048534795`
- `d95cbb72b0ea671a1e70b6aa773a8f8647944de4` — run `36049892790`
- `fed4f79b1b646be824904aa32bd05a5f481791b3` — run `36050478168`

The historical SHAs belong to the source history and are recorded here as provenance anchors; this public repository is a clean publication snapshot rather than a copy of private Git history.

## Independent-review boundary

A GREEN Lean/kernel build establishes that the published formal terms typecheck in the pinned environment. It does **not by itself** establish that the repository's definitions and reductions exactly capture the standard P versus NP problem. That semantic correspondence is an independent mathematical-review obligation documented in `SCOPE_AND_LIMITATIONS.md`.

The repository intentionally excludes `.lake/`, `.env`, credentials, private keys, local build products, and unrelated private Git history.

## DOI / scientific record

- DOI: [10.6084/m9.figshare.33990856](https://doi.org/10.6084/m9.figshare.33990856)
- ORCID: [0009-0006-6874-3910](https://orcid.org/0009-0006-6874-3910)


## Citation, author identity, and discovery metadata

**Author:** Tiago Paschoalatto Fagliari  
**ORCID:** https://orcid.org/0009-0006-6874-3910  
**DOI:** https://doi.org/10.6084/m9.figshare.33990856  
**Licensing:** scientific/documentary content — CC BY 4.0; software/formal source code — MIT

Recommended citation metadata is available in `CITATION.cff` and `codemeta.json`. Machine-readable discovery metadata is also provided in `DISCOVERY_METADATA.json`.

### Research areas and communities that may benefit from this package

This repository is relevant to reviewers and researchers working in:

- theoretical computer science;
- computational complexity and P versus NP;
- SAT, CNF, Cook–Levin style encodings, restrictions, and circuit complexity;
- proof theory and formal methods;
- theorem proving and Lean 4;
- proof engineering, reproducible mathematics, and machine-checked verification;
- mathematical logic and computability;
- automated reasoning and proof-carrying research artifacts;
- software verification and trustworthy computing;
- research reproducibility, scientific software preservation, and external audit methodology;
- AI-assisted formal mathematics, when used with independent human review of the resulting formal statements.

### Search terms

`P versus NP`, `P vs NP`, `computational complexity`, `Lean 4`, `formal proof`, `formal verification`, `theorem proving`, `SAT`, `CNF`, `Cook-Levin`, `circuit complexity`, `proof audit`, `reproducible mathematics`, `machine-checked proof`, `formal methods`, `proof engineering`, `ELYON`, `M-Core`.

For press, reviewers, and indexers, use the DOI and ORCID above as the stable discovery identifiers.


## Cross-repository certificate archive

Additional public-safe certificates and audit evidence from related research repositories are indexed in `external-certificates/README.md`. Every imported package is namespaced by source repository and source SHA so independent reviewers can distinguish provenance and scope.
