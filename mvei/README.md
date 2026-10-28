# MVEI — public proof book

`LIVRO_DE_PROVAS_PUBLICO.md` is the MVEI proof book restricted to the 16 public ShantiDraconis repositories
(in Portuguese). Every count in it was recomputed for this subset and comes from the Lean kernel
(`Lean.collectAxioms`, the function behind `#print axioms`).

| Closed theorems in the public repositories | |
|---|---:|
| Counting each project | 1 338 |
| Unique (name + statement) | 1 272 |
| Unique, without the lemmas Lean generates itself (`eq_1`, `mk.inj`, `sizeOf_spec`, `deriving`) | 631 |

The data files are here, at the same relative paths the book cites, so the SHA-256 values in its
"Reprodutibilidade" section can be checked with `sha256sum`:

- `_verificacao/VERIFICACAO.json` — every project, every theorem, its statement and its axioms
- `_verificacao/SIMULACAO.json`, `_verificacao/INTEGRIDADE.json`, `_indice/INDEX.json`
- `correcoes/Elyon-Public-Proof/imports-no-topo.patch` — the one MVEI correction used for this repository
- `BUILD_LOG_PUBLICO.txt` — one block per project: Lean version, result, errors

The full verification, including private repositories, stays in the author's MVEI and cannot be
checked from here.
