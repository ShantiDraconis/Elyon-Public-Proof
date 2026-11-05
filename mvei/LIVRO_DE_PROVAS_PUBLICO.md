# Livro de Provas — ecossistema ShantiDraconis / M-Core

> Este livro cobre só os repositórios públicos de ShantiDraconis (26 de 260). As contagens abaixo foram recalculadas para esse conjunto e podem ser refeitas por qualquer pessoa a partir dos repositórios. A verificação completa, com os repositórios privados, fica no MVEI do autor e não pode ser conferida a partir daqui.

Gerado pelo MVEI em 2026-11-05 17:45 UTC. Verificação feita no kernel do Lean (`Lean.collectAxioms`, a função de `#print axioms`). **T** = fechado só com axiomas padrão (propext, Classical.choice, Quot.sound); **Ω** = aberto; **condicional** = vale no mundo do repositório, que aceita os axiomas que ele declara (ou, onde o MVEI acrescentou uma camada de nomes, os axiomas dela, que são hipóteses do MVEI).

## Visão geral

| | |
|---|---|
| Repositórios | 26 (25 com conteúdo, 1 vazios) |
| Projetos Lean encontrados | 229 |
| Compilados (nesta máquina ou no GitHub Actions, com o Mathlib) | 208 (43 com lakefile reconstruído) |
| Não compilaram | 21 |
| Sem compilar: o Mathlib não baixou ou não foi tentado | 0 |
| Teoremas fechados (T), por projeto | 78266 (74631 no build dos projetos, 3635 checados arquivo a arquivo; 54482 em projetos que só compilaram com lakefile gerado ou correções do MVEI) |
| Teoremas fechados únicos (nome + enunciado) | 21069 (as cópias em pastas de snapshot contam uma vez) |
| Únicos sem os lemas que o Lean gera sozinho | 13390 (fora: equações `eq_N`, `mk.inj`, `sizeOf_spec`, lemas de `deriving`) |
| Fechados sem variáveis no enunciado | 2234 dos 13390 únicos escritos são afirmações sobre objetos concretos (sem ∀, ∃ ou →: contas, valores e definições do próprio arquivo); os outros têm variáveis |
| Fechados em famílias numeradas | 136 dos 13390 únicos escritos têm nome numa família de 20 ou mais com o mesmo padrão (`precedence_0001`, `precedence_0002`, …), o sinal de arquivo gerado por programa |
| Fechados com enunciado vazio | 213 dos 13390 únicos escritos não afirmam nada: 3 com conclusão `True`, 1 `∃ …, True` e 209 campo de registro igual ao valor que o próprio arquivo gravou (lista em ENUNCIADOS_VAZIOS.md) |
| Arquivos .lean sem lakefile (o MVEI montou 15 projetos) | 4 compilaram, 319 teoremas fechados |
| Teoremas condicionais | 29 no build |
| Pontes abertas (sorryAx) | 0 no build, 504 arquivo a arquivo |
| Checados arquivo a arquivo (arquivos fora de qualquer build) | 6383 teoremas: 3635 fechados, 0 condicionais, 504 abertos, 400 com erro na prova, 1844 não alcançados |
| Axiomas declarados (projetos compilados) | 236 |
| Auditoria estática de todos os .lean | 60624 teoremas, 300 axiomas, 17 `sorry` |

A auditoria estática conta o texto de todos os arquivos (inclusive os que não compilam ou precisam do Mathlib); os números do kernel valem só para o que compilou.

## Resumo por repositório

| Repositório | Fechados | Condicionais | Abertos | Projetos (ok / em parte / falha / sem Mathlib) | Status |
|---|---:|---:|---:|---|---|
| atk-p-vs-np-public | 46677 | 4 | 0 | 20 / 23 / 2 / 0 | compilou em parte |
| atk-hodge-public | 8220 | 0 | 0 | 23 / 2 / 2 / 0 | compilou em parte |
| atk-beal-public | 4705 | 0 | 0 | 15 / 5 / 1 / 0 | compilou em parte |
| atk-navier-stokes-public | 4173 | 5 | 0 | 37 / 12 / 7 / 0 | compilou em parte |
| atk-yang-mills-public | 2697 | 0 | 0 | 9 / 5 / 1 / 0 | compilou em parte |
| atk-bsd-public | 2657 | 0 | 0 | 17 / 3 / 1 / 0 | compilou em parte |
| atk-riemann-public | 2290 | 20 | 0 | 17 / 8 / 5 / 0 | compilou em parte |
| clay-p-vs-np-proof | 1030 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| clay-riemann-proof | 708 | 0 | 0 | 0 / 1 / 0 / 0 | compilou em parte |
| Elyon-Public-Proof | 579 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| clay-bsd-proof | 393 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| atk-math-core-public | 245 | 0 | 0 | 1 / 0 / 1 / 0 | compilou em parte |
| Beit-Hamikdash-iii | 194 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| clay-navier-stokes-proof | 41 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| clay-navier-stokes-statement | 14 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| clay-p-vs-np-statement | 4 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| clay-riemann-statement | 2 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| beal-statement | 1 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| clay-bsd-statement | 1 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| beal-proof | 0 | 0 | 0 | 0 / 0 / 1 / 0 | não compilou |

## Mapa por domínio

| Domínio | Repositórios | Teoremas fechados (kernel) | Pontes abertas | `sorry` no texto |
|---|---:|---:|---:|---:|
| Lógica e metamatemática | 22 | 74631 | 0 | 17 |
| Beal | 3 | 4706 | 0 | 0 |
| BSD | 3 | 3051 | 0 | 0 |
| Navier–Stokes | 3 | 4228 | 0 | 12 |
| P vs NP | 3 | 47711 | 0 | 1 |
| Riemann | 3 | 3000 | 0 | 0 |
| Teologia, Cabala e textos sagrados | 2 | 773 | 0 | 0 |
| Outros | 2 | 0 | 0 | 0 |
| Hodge | 1 | 8220 | 0 | 0 |
| Yang–Mills | 1 | 2697 | 0 | 0 |
| Arte, cenografia e Olimpíadas | 1 | 0 | 0 | 0 |

## Todos os teoremas declarados × o que o kernel checou

Os arquivos `.lean` declaram 60624 `theorem`/`lemma` (24066 nomes distintos; as cópias em snapshots repetem nomes). Cada um foi procurado no que o kernel leu, no build do projeto ou no teste arquivo a arquivo. A lista completa, com arquivo, linha, estado e motivo, está em `propostas/_verificacao/TEOREMAS.csv`.

| Estado | Teoremas declarados |
|---|---:|
| fechado no kernel | 37551 |
| condicional (axiomas do repositório ou, em mishkan-iii-core, da camada de nomes do MVEI) | 29 |
| aberto (`sorry`) | 490 |
| nunca checado pelo kernel | 22554 |

Nomes distintos entre os declarados que fecharam: 10018. Esta é a contagem mais conservadora: só teoremas escritos no texto (sem os lemas que o Lean gera), cada nome uma vez.

Por que os não checados não foram checados:

| Motivo | Teoremas |
|---|---:|
| o arquivo não compilou (erro nele ou num arquivo que ele importa) | 19602 |
| testado arquivo a arquivo: o Lean não chegou ao teorema (import ausente, erro de sintaxe que interrompe o arquivo ou tempo esgotado) | 1815 |
| o arquivo compilou, mas o nome não apareceu no kernel (private, mutual ou gerado por macro) | 400 |
| testado arquivo a arquivo: a prova escrita não passa no kernel (o Lean deu erro nela) | 387 |
| o projeto compilou, mas este arquivo não faz parte do alvo do lakefile | 350 |

Repositórios com mais teoremas nunca checados: atk-math-core-public (19341), atk-p-vs-np-public (1468), clay-riemann-proof (435), atk-hodge-public (368), atk-riemann-public (276), atk-beal-public (234), atk-navier-stokes-public (233), atk-bsd-public (107), beal-proof (41), Elyon-Public-Proof (38), atk-yang-mills-public (11), Beit-Hamikdash-iii (2).

## Preenchimento automático: o que as táticas já fecham

Para cada axioma declarado (proposição) e cada teorema aberto ou com erro, o MVEI pediu ao kernel uma prova com táticas automáticas (`rfl`, `decide`, `simp`, `omega` e, com o Mathlib, `norm_num`, `linarith`, `positivity`, `ring`, `tauto`, `aesop`) e uma refutação. Só conta o que o kernel aceitou com os axiomas padrão. A tática que funcionou é a prova que pode substituir o `sorry`, o axioma ou a prova com erro.

| | |
|---|---:|
| Axiomas testados | 16 |
| Axiomas demonstráveis (podem virar teorema) | 0 |
| Axiomas refutáveis (inconsistentes: com eles se prova qualquer coisa) | 0 |
| Teoremas abertos ou com erro que uma tática fecha | 19 |
| Teoremas abertos ou com erro refutáveis | 0 |

Teoremas que uma tática fecha (até 25; todos em `TEOREMAS.csv`):

- atk-bsd-public: `MCore.BackwardAudit.P_on_1933a1`
- atk-bsd-public: `MCore.BackwardAudit.Q_on_1933a1`
- atk-bsd-public: `MCore.abstractRankCounterexample_not_rankPart`
- atk-p-vs-np-public: `MCore.P012.toOneDisplacementNumerator_eq`
- atk-p-vs-np-public: `MCore.P012.toNegOneDisplacementNumerator_eq`
- atk-p-vs-np-public: `MCore.Real.PNPNTMTableauEncoding.trimTrailingBlank_all_blank`
- atk-p-vs-np-public: `MCore.Real.PNPNTMTableauEncoding.ntmSymbolCode_lt_three`
- atk-p-vs-np-public: `MCore.Real.PNPNTMTableauEncoding.indexedTransitionsAux_get_mem`
- atk-p-vs-np-public: `MCore.Real.PNPNTMTableauEncoding.ntmClauseWeight_append`
- atk-p-vs-np-public: `MCore.Real.PNPNTMTableauEncoding.filterMap_mem_exists`
- atk-p-vs-np-public: `MCore.Real.P02OpenClosedDuality.open_eq_neg_closed`
- atk-p-vs-np-public: `MCore.Real.P02OpenClosedDuality.terminal_duality_consistent_shape`
- atk-p-vs-np-public: `MCore.Real.P02OpenClosedIrreflexiveCollapse.consistent_terminal_duality`
- atk-riemann-public: `ATK.equal_projection_comparison`
- atk-riemann-public: `MCore.RH.R0.d3GaussianMultiplierReal_coe`
- atk-riemann-public: `MCore.RH.R2.SN_eq_sum_roses`
- atk-riemann-public: `MCore.Material.closure_produces_bound`
- atk-yang-mills-public: `MCore.YangMills.QClaimTests.balancedExample_stops_at_Q`
- atk-yang-mills-public: `MCore.YangMills.QClaimTests.balancedExample_resolves_I00`

## Projetos compilados

| Repositório | Projeto | Lean | Resultado | T | Ω | cond. | axiomas declarados |
|---|---|---|---|---:|---:|---:|---:|
| atk-beal-public | `branches/m-core-beal/atk-kernel-check/atk-kernel` | leanprover/lean4:v4.34.1 | ok | 19 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/atk_beal-full-toolchain-20261006` | leanprover/lean4:v4.33.1 | ok (reconstruído) | 548 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/atk_beal-parity-to-t59-partition-20261001` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 497 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/atk_beal-two-sided-resolution-20261001` | leanprover/lean4:v4.19.0 | falhou | 547 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/atk_concrete-terminal-law` | leanprover/lean4:v4.19.0 | ok | 113 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/atk_power-sum-balance-identity-20261008` | leanprover/lean4:v4.19.0 | ok | 118 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/attack_beal-b01-o1-conductor-bridge-20260926` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 578 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/attack_beal-gcd-endpoint-equivalence-20260927` | leanprover/lean4:v4.19.0 | ok | 125 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/attack_t31-frey-nodal-arithmetic-20260920` | leanprover/lean4:v4.19.0 | ok | 308 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/attack_t36e2-c4-unit-minimality-20260920` | leanprover/lean4:v4.29.0-rc6 | falhou | 375 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/attack_t46-newform-signature-split-20260920` | leanprover/lean4:v4.19.0 | ok | 398 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/attack_t61-modern-reduction-port-20260920` | leanprover/lean4:v4.29.0-rc6 | falhou | 475 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/k7-BEAL` | leanprover/lean4:v4.19.0 | ok | 74 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/k7-preflight_Beal-OfficialSpec` | leanprover/lean4:v4.19.0 | ok | 76 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/meta_finalproof-frontier-map-v1` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 14 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/research_pure-math-final-proof-v1` | leanprover/lean4:v4.19.0 | falhou | 153 | 0 | 0 | 0 |
| atk-beal-public | `branches/m-core-beal/work_beal-bilateral-mincut-20261005` | leanprover/lean4:v4.19.0 | ok | 149 | 0 | 0 | 0 |
| atk-beal-public | `imports/lean/MCore` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-beal-public | `imports/m-core-beal` | leanprover/lean4:v4.19.0 | ok | 118 | 0 | 0 | 0 |
| atk-beal-public | `imports/m-core-beal/atk-kernel` | leanprover/lean4:v4.34.1 | ok | 1 | 0 | 0 | 0 |
| atk-beal-public | `imports/m-core-beal/lean` (avulso) | leanprover/lean4:v4.19.0 | ok (reconstruído) | 19 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/a0-preaudit/a0` | leanprover/lean4:v4.19.0 | ok | 0 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/atk-kernel-check/atk-kernel` | leanprover/lean4:v4.34.1 | ok | 5 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/atk-terminal-forward-20261012/atk-kernel` | leanprover/lean4:v4.34.1 | ok | 2 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/atk_auto-compose-terminal-20260930` | leanprover/lean4:v4.19.0 | ok | 226 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/atk_bsd-doubling-descent-20260928` | leanprover/lean4:v4.35.0-rc3 | ok | 2 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/atk_bsd-local-order-20261006` | leanprover/lean4:v4.19.0 | ok | 483 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/atk_bsd-lowrank-material-bridge-20261007` | leanprover/lean4:v4.19.0 | ok | 219 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/atk_first-real-open-math-bsd-20261005` | leanprover/lean4:v4.19.0 | ok | 251 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/atk_next-bsd-concrete-realizable-domain-20260928` | leanprover/lean4:v4.19.0 | ok | 165 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/atk_next-bsd-two-descent-finite-quotient-20260929` | leanprover/lean4:v4.35.0-rc3 | ok | 3 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/atk_terminal-parameter-law-20261003` | leanprover/lean4:v4.19.0 | ok | 213 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/attack_bsd-certified-foundation` | leanprover/lean4:v4.19.0 | falhou | 162 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/audit_multistate-proof-refutation-v1` | leanprover/lean4:v4.19.0 | falhou | 207 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/h2-archimedean-failclosed` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 25 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/k7-BSD` | leanprover/lean4:v4.19.0 | ok | 74 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/k7-preflight_BSD-OfficialSpec` | leanprover/lean4:v4.19.0 | ok | 76 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/open-math_bsd-gaps-20261004` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 230 | 0 | 0 | 0 |
| atk-bsd-public | `branches/m-core-bsd/research_pure-math-final-proof-v1` | leanprover/lean4:v4.19.0 | ok | 155 | 0 | 0 | 0 |
| atk-bsd-public | `imports/lean/MCore/Material` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-bsd-public | `imports/m-core-bsd` | leanprover/lean4:v4.19.0 | ok | 156 | 0 | 0 | 0 |
| atk-bsd-public | `imports/m-core-bsd/atk-kernel` | leanprover/lean4:v4.34.1 | ok | 3 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_auto-compose-terminal-20260930` | leanprover/lean4:v4.19.0 | ok | 586 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_first-real-open-math-20261005` | leanprover/lean4:v4.19.0 | ok | 83 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_hodge-closed-math-line-20261007` | leanprover/lean4:v4.19.0 | falhou | 692 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_hodge-material-producer-gate-20260928` | leanprover/lean4:v4.19.0 | ok | 84 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_hodge-material-target-hardening-20261001` | leanprover/lean4:v4.19.0 | ok | 272 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_hodge-r3-universal-family-compat-20260927` | leanprover/lean4:v4.19.0 | ok | 252 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_hodge-recovered-material-chain-20261007` | leanprover/lean4:v4.19.0 | ok | 788 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_hodge-relative-cycle-to-variational-20261001` | leanprover/lean4:v4.19.0 | ok | 287 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_kernel-r3-basepoint-20260928` | leanprover/lean4:v4.19.0 | ok | 180 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_material-rigid-integration-20261009` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 557 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/atk_proof-inventory-3fc16284` | leanprover/lean4:v4.19.0 | ok | 244 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/audit_multistate-proof-refutation-v1` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 109 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/cert_hdg-final-attack-4419293f-run35232076043` | leanprover/lean4:v4.19.0 | ok | 304 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/cert_journal-hodge-reduction-v1-8622e316-run35519976669` | leanprover/lean4:v4.19.0 | ok | 263 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/claim_hodge-prize-surgery-lane2` | leanprover/lean4:v4.19.0 | ok | 297 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/frozen_hodge-exact-remaining-green-78f997e5` | leanprover/lean4:v4.19.0 | ok | 553 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/hdg-bridge-open` | leanprover/lean4:v4.19.0 | ok | 301 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/k7-HODGE` | leanprover/lean4:v4.19.0 | ok | 74 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/k7-preflight_Hodge-OfficialSpec` | leanprover/lean4:v4.19.0 | ok | 76 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/open-math_hodge-final-certificate-chain` | leanprover/lean4:v4.19.0 | ok | 109 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/open-math_hodge-gap-20261004` | leanprover/lean4:v4.19.0 | falhou | 857 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/research_pure-math-final-proof-v1` | leanprover/lean4:v4.19.0 | ok | 89 | 0 | 0 | 0 |
| atk-hodge-public | `branches/m-core-hodge/reset_hodge-empty-final-scaffold` | leanprover/lean4:v4.19.0 | ok | 60 | 0 | 0 | 0 |
| atk-hodge-public | `imports/m-core-hodge` | leanprover/lean4:v4.19.0 | ok | 1101 | 0 | 0 | 0 |
| atk-hodge-public | `imports/m-core-hodge/atk-kernel` | leanprover/lean4:v4.34.1 | ok | 2 | 0 | 0 | 0 |
| atk-hodge-public | `imports/m-core-hodge/lean` (avulso) | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-hodge-public | `imports/open_math` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-math-core-public | `imports/AxiomaticMillenium` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-math-core-public | `imports/M-Core/lean` (avulso) | leanprover/lean4:v4.19.0 | ok (reconstruído) | 245 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/M-private/cert_L-219-GH311` | leanprover/lean4:v4.34.0-rc2 | ok | 61 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/M-private/chain_219-forward-corrected` | leanprover/lean4:v4.34.0-rc2 | falhou | 132 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/M-private/math_low-route` | leanprover/lean4:v4.34.0-rc2 | ok | 13 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/a2.1-weightedIBP` | leanprover/lean4:v4.32.1 | ok | 458 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_axiom-free-targets-20261008` | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_axiom-free-targets-20261008/formal/lean` | leanprover/lean4:v4.19.0 | ok | 23 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_falsified-terminal-inhabitants-20260930` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 2 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_k1a-xieps-exact-derivative` | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_k1a-xieps-exact-derivative/formal/millennium/lean` | leanprover/lean4:v4.19.0 | ok | 16 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_kernel-theta-budget-20260928` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 234 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_kernel-theta-budget-20260928/formal/lean` | leanprover/lean4:v4.19.0 | ok | 125 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_material-unification-v2-20260928` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 30 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_next-ns-directional-depletion-20260928/formal/lean` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 8 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_ns-forcing-001` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 238 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/atk_ns-weightedlow-constant-firewall-20261001` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 7 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/attack_n01-reuse-bulk-tail-20260921` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 99 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/attack_ns003-o1-core-v419` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 116 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/attack_ns003-o1-core-v419/formal/millennium/lean` | leanprover/lean4:v4.19.0 | ok | 50 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/audit_closure-target-tree-v56/formal/G1` (avulso) | leanprover/lean4:v4.19.0 | ok (reconstruído) | 26 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/audit_g1-beta-multiprover-20260913/formal/lean` | leanprover/lean4:v4.19.0 | falhou | 17 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/copilot_primitive-to-bridge` | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/copilot_teorema-alvo-hdynamic` | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/frozen_ns-conditional-closure-ba79d393` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 15 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/open-math_ns-final-empty` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 415 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/open-math_ns-final-empty/formal/lean` | leanprover/lean4:v4.19.0 | falhou | 22 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/research_pure-math-final-proof-v1` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 7 | 0 | 0 | 0 |
| atk-navier-stokes-public | `branches/navier-stokes-critical-barrier-audit/work_first-real-open-math-20261005/formal/lean` | leanprover/lean4:v4.19.0 | ok | 21 | 0 | 0 | 0 |
| atk-navier-stokes-public | `imports/M-private` | leanprover/lean4:v4.34.0-rc2 | ok | 812 | 0 | 1 | 0 |
| atk-navier-stokes-public | `imports/Material` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit` | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/formal/G1` (avulso) | leanprover/lean4:v4.19.0 | ok (reconstruído) | 29 | 0 | 0 | 0 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/formal/lean` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 317 | 0 | 1 | 19 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/formal/millennium/lean` | leanprover/lean4:v4.19.0 | falhou | 50 | 0 | 0 | 0 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_correct-provenance-attribution-20260912/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_final-two-stage-review-nsb2-20260912/formal/lean` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 165 | 0 | 1 | 19 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_g1-beta-multiprover-20260913/formal/lean` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 165 | 0 | 1 | 19 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_g1-beta-multiprover-20260913/formal/millennium/lean` | leanprover/lean4:v4.19.0 | falhou | 128 | 0 | 0 | 0 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_g1-prize-standard-v4-20260913/formal/millennium/lean` | leanprover/lean4:v4.19.0 | ok | 71 | 0 | 0 | 0 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_millennium-multiprover-structure-20260913/formal/lean` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 165 | 0 | 1 | 19 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_millennium-multiprover-structure-20260913/formal/millennium/lean` | leanprover/lean4:v4.19.0 | ok | 136 | 0 | 0 | 0 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_add-lre-ns-framework/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_audit-search-terms/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_claim-navier-stokes-git-evidence/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_compare-mathematical-formulas/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_execute-multi-agent-audit/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_fix-doc-date-error/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_navier-stokes-critical-barrier-audit/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_navier-stokes-noncircular-implementation/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_registro-git-navier-stokes/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_revendo-arquivos-auditoria/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_shanti-0-0-default-history/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_shanti-auditoria-ns/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_target-extractor/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_task-219265797-1361927617-c6bfd6e0-3c0d-429b-a267-9cea34423468/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/copilot_update-reference-section/formal/lean` | leanprover/lean4:stable | ok | 0 | 0 | 0 | 10 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/preservation/session-scratch-20260913` | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_falsified-terminal-inhabitants-20260930` | leanprover/lean4:v4.19.0 | falhou | 1829 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_g21-final-integration-clean-20260930` | leanprover/lean4:v4.19.0 | falhou | 1199 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_g21-same-input-core-close-20260930` | leanprover/lean4:v4.19.0 | falhou | 569 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_hardened-final-boundary-20261001` | leanprover/lean4:v4.19.0 | ok | 628 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_next-p01-integrated-machine-20260929` | leanprover/lean4:v4.19.0 | ok | 100 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_next-pnp-finite-clock-explicit-coding-20260928` | leanprover/lean4:v4.19.0 | ok | 666 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-exact-bounded-outcome-20260930` | leanprover/lean4:v4.19.0 | falhou | 1952 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-exact-consumption-certificate-20260930` | leanprover/lean4:v4.19.0 | ok | 1847 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-exact-rebuild-clean-20260930` | leanprover/lean4:v4.19.0 | falhou | 492 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-exact-runtime-v2-20260930` | leanprover/lean4:v4.19.0 | falhou | 1952 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-post-mincut-advance-20261001` | leanprover/lean4:v4.19.0 | ok | 2830 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-preserving-input-reader-20260930` | leanprover/lean4:v4.19.0 | falhou | 882 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-preserving-unary-read-20260930` | leanprover/lean4:v4.19.0 | falhou | 882 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-real-neg-macro` | leanprover/lean4:v4.19.0 | ok | 1805 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-real-neg-macro/external/p02-kleene-adapter` | leanprover/lean4:v4.19.0 | ok | 2 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-seq-runbranches-20260929` | leanprover/lean4:v4.19.0 | falhou | 99 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-successor-cycle-20261005` | leanprover/lean4:v4.19.0 | falhou | 1288 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-terminal-promotion-candidate-20260930` | leanprover/lean4:v4.19.0 | falhou | 1481 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-verifier-decomposition-20261008` | leanprover/lean4:v4.19.0 | ok | 720 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p01-witness-prep-global-44e3327a` | leanprover/lean4:v4.19.0 | ok | 1178 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p02-a1-completeness-fast-20260925` | leanprover/lean4:v4.19.0 | falhou | 2473 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p02-lane4-terminal-densify-20261003` | leanprover/lean4:v4.19.0 | falhou | 2512 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p02-only-20261001` | leanprover/lean4:v4.19.0 | falhou | 2372 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_p03-closure-repair-20261025` | leanprover/lean4:v4.19.0 | falhou | 4007 | 0 | 3 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_pnp-rigorous-terminal-decomposition-20261001` | leanprover/lean4:v4.19.0 | ok | 553 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_shared-multistate-signature-20260926` | leanprover/lean4:v4.19.0 | ok | 32 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/atk_structural-fixed-point-20261006` | leanprover/lean4:v4.19.0 | falhou | 2792 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/attack_g3-model-match-only-20260922` | leanprover/lean4:v4.19.0 | ok | 125 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/attack_material-orientation-clean-v2-20260921` | leanprover/lean4:v4.19.0 | ok | 928 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/audit_multistate-proof-refutation-v1` | leanprover/lean4:v4.19.0 | ok | 341 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/cert_p012-full-lemma-suite-54b42c0e-run35841388703` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 1159 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/discovery_pnp-open-math-20261004` | leanprover/lean4:v4.19.0 | falhou | 2524 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/k7-PNP` | leanprover/lean4:v4.19.0 | ok | 74 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/k7-preflight` | leanprover/lean4:v4.19.0 | ok | 76 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/meta_finalproof-frontier-map-v1` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 18 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/red_C11-aa8b19a1` | leanprover/lean4:v4.19.0 | falhou | 312 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/red_C8-3394f470` | leanprover/lean4:v4.19.0 | falhou | 182 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/research_pure-math-final-proof-v1` | leanprover/lean4:v4.19.0 | falhou | 325 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/work_C12-progress-coverage` | leanprover/lean4:v4.19.0 | ok | 361 | 0 | 0 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/work_C9-two-channel-bridge` | leanprover/lean4:v4.19.0 | falhou | 294 | 0 | 1 | 0 |
| atk-p-vs-np-public | `branches/m-core-p-vs-np/work_pnp-minimal-sat-search-20261005` | leanprover/lean4:v4.19.0 | falhou | 1224 | 0 | 0 | 0 |
| atk-p-vs-np-public | `imports/M-Core/imports/pnp/b406b806/lean/MCore/Real` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-p-vs-np-public | `imports/M-Core/imports/pnp/c102d9d4/lean/MCore/Real` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-p-vs-np-public | `imports/m-core-p-vs-np` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 1590 | 0 | 0 | 0 |
| atk-p-vs-np-public | `imports/m-core-p-vs-np/atk-kernel` | leanprover/lean4:v4.34.1 | ok | 2 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk-kernel-check/atk-kernel` | leanprover/lean4:v4.34.1 | ok | 13 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_cert-repair-rh-b8077235` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 33 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_euler-audit-20261016` | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_master-rh-gram-repair-20260930` | leanprover/lean4:v4.19.0 | ok | 1 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_rh-log-majorant-split-20261001` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 83 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_rh-material-decision-objects-20261001` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 6 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_rh-material-recovery-20261007` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 230 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_rh-multistate-decay-hardening-20261001` | leanprover/lean4:v4.19.0 | falhou | 94 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 190 | 0 | 20 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_rh-tristate-material-hardening-20261001` | leanprover/lean4:v4.19.0 | ok | 197 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_rh-two-sided-resolution-20261001` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 74 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_riemann-indeterminate-transform-test-20261011/experiments/indeterminate-transform` | leanprover/lean4:v4.19.0 | falhou | 14 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_riemann-li-zeta-v435-20261025/experiments/li-criterion` | leanprover/lean4:v4.35.0 | ok | 40 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/atk_terminal-parameter-law-20261003` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 421 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/attack_kfar-weighted-bilinear-decay-20260926` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 46 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/attack_r01-quantitative-zero-criterion-20260921` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 39 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/attack_r2-multistate-sn-gap` | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/attack_rh-multistate-sn-gap-20260926` | leanprover/lean4:v4.19.0 | ok | 107 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/attack_typed-final-endpoint-v1` | leanprover/lean4:v4.19.0 | ok | 42 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/audit_multistate-proof-refutation-v1` | leanprover/lean4:v4.19.0 | ok | 91 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/audit_r0-4-chi-memlp` | leanprover/lean4:v4.19.0 | ok | 85 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/claude_atk-protocol-setup-wzeajl/atk-kernel` | leanprover/lean4:v4.34.1 | ok | 53 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/k7-preflight_RH-OfficialSpec` | leanprover/lean4:v4.19.0 | ok | 82 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/open-math_rh-gap-20261004` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 135 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/research_nb-zero-limit-frontier` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 30 | 0 | 0 | 0 |
| atk-riemann-public | `branches/m-core-riemann/research_pure-math-final-proof-v1` | leanprover/lean4:v4.19.0 | ok | 7 | 0 | 0 | 0 |
| atk-riemann-public | `imports/lean/MCore/Material` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-riemann-public | `imports/m-core-riemann` | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 177 | 0 | 0 | 0 |
| atk-riemann-public | `imports/m-core-riemann/atk-kernel` | leanprover/lean4:v4.34.1 | falhou | 0 | 0 | 0 | 0 |
| atk-riemann-public | `imports/m-core-riemann/atk-kernel/ATK` (avulso) | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/atk_b6-ym4-physical-harden` | leanprover/lean4:v4.19.0 | ok | 707 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/atk_delta-habitants-finalize-20260927` | leanprover/lean4:v4.19.0 | falhou | 710 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/atk_first-real-open-math-20261005` | leanprover/lean4:v4.19.0 | ok | 58 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/atk_proof-inventory-d8a5e95e` | leanprover/lean4:v4.19.0 | falhou | 183 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/atk_ym-b60-field-bundle-20261001` | leanprover/lean4:v4.19.0 | ok | 56 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/atk_ym-material-promotion-v13-20261007` | leanprover/lean4:v4.19.0 | falhou | 258 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/attack_B6-k30-concrete-realization-v1` | leanprover/lean4:v4.19.0 | falhou | 183 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/audit_multistate-proof-refutation-v1` | leanprover/lean4:v4.19.0 | ok (reconstruído) | 76 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/frozen_first-real-open-math-green-1f0aa029` | leanprover/lean4:v4.19.0 | falhou | 183 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/frozen_inhabitant-arsenal-v1-green-a1a04873` | leanprover/lean4:v4.19.0 | ok | 47 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/k3-staging` | leanprover/lean4:v4.19.0 | ok | 67 | 0 | 0 | 0 |
| atk-yang-mills-public | `branches/m-core-yang-mills/k7-preflight-officialspec` | leanprover/lean4:v4.19.0 | ok | 82 | 0 | 0 | 0 |
| atk-yang-mills-public | `imports/lean/MCore/Material` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-yang-mills-public | `imports/m-core-yang-mills` | leanprover/lean4:v4.19.0 | ok | 85 | 0 | 0 | 0 |
| atk-yang-mills-public | `imports/m-core-yang-mills/atk-kernel` | leanprover/lean4:v4.34.1 | ok | 2 | 0 | 0 | 0 |
| beal-proof | `.` | leanprover/lean4:v4.36.0-rc2 | falhou | 0 | 0 | 0 | 0 |
| beal-statement | `.` | leanprover/lean4:v4.36.0-rc2 | ok | 1 | 0 | 0 | 0 |
| Beit-Hamikdash-iii | `.` | leanprover/lean4:v4.35.0 | ok | 194 | 0 | 0 | 0 |
| clay-bsd-proof | `.` | leanprover/lean4:v4.36.0-rc2 | ok | 393 | 0 | 0 | 0 |
| clay-bsd-statement | `.` | leanprover/lean4:v4.36.0-rc2 | ok | 1 | 0 | 0 | 0 |
| clay-navier-stokes-proof | `.` | leanprover/lean4:v4.36.0-rc2 | ok | 41 | 0 | 0 | 0 |
| clay-navier-stokes-statement | `.` | leanprover/lean4:v4.36.0-rc2 | ok | 14 | 0 | 0 | 0 |
| clay-p-vs-np-proof | `.` | leanprover/lean4:v4.36.0-rc2 | ok | 1030 | 0 | 0 | 0 |
| clay-p-vs-np-statement | `.` | leanprover/lean4:v4.36.0-rc2 | ok | 4 | 0 | 0 | 0 |
| clay-riemann-proof | `.` | leanprover/lean4:v4.36.0-rc2 | falhou | 708 | 0 | 0 | 0 |
| clay-riemann-statement | `.` | leanprover/lean4:v4.36.0-rc2 | ok | 2 | 0 | 0 | 0 |
| Elyon-Public-Proof | `.` | leanprover/lean4:v4.19.0 | ok | 579 | 0 | 0 | 0 |

## Pontes abertas e o que o kernel conseguiu fazer com elas

Nenhuma ponte aberta nos projetos compilados.

## Reformulações das pontes refutadas

Nenhuma neste conjunto de repositórios.

## Enunciados marcadores e enunciados refutados

Nada desta seção conta como teorema fechado.

Marcadores (4): definições com nome de Problema do Milênio cujo conteúdo é `True`. Uma ponte que "fecha" usando uma delas não diz nada sobre o problema.

- atk-navier-stokes-public (2): `PvsNP_G11_statement := True` (branches/navier-stokes-critical-barrier-audit/atk_axiom-free-targets-20261008/Lean/Millennium/CompleteClosure_Targets.lean:91); `BSD_statement := True` (branches/navier-stokes-critical-barrier-audit/atk_axiom-free-targets-20261008/Lean/Millennium/CompleteClosure_Targets.lean:92)
- atk-riemann-public (2): `RHSearchTraversalClosed := True` (branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02LastOpenMath.lean:31); `RHNoMoreSearch := True` (branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02TerminalFreeze.lean:12)

Teoremas fechados cujo enunciado usa um marcador (4): fecham, mas só dizem algo sobre o marcador. `MCore.RHClosedFrontierCertificate.searchTraversalClosed`; `MCore.rh_closed_frontier_zero_reopen`; `MCore.rh_no_more_search`; `MCore.rh_search_traversal_closed`

## Teoremas condicionais (dependem de axiomas do próprio repositório)

- `MPrivate.NS.ThirdCoefficient.k1BridgeMatrix_has_seven_rows` (atk-navier-stokes-public, `imports/M-private/MPrivate/NS/ThirdCoefficient/K1BridgeMatrix.lean:87`) depende de `MPrivate.NS.ThirdCoefficient.k1BridgeMatrix_has_seven_rows._native.native_decide.ax_1_1`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MPrivate.NS.ThirdCoefficient.k1BridgeMatrix.length = 7`
- `CriticalBarrierClayTarget.target_chain_is_explicit` (atk-navier-stokes-public, `imports/navier-stokes-critical-barrier-audit/formal/lean/CriticalBarrier/B2_8_Alignment_Target_Clay.lean:123`) depende de `CriticalBarrierClayTarget.B2_12_ESS_TARGET`, `CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET`, `CriticalBarrierClayTarget.LP_Bernstein_TARGET`, `CriticalBarrierClayTarget.NS_GLOBAL_CLOSURE_TARGET`, `CriticalBarrierClayTarget.Sobolev_R3_TARGET`
  - enunciado: `CriticalBarrierClayTarget.LP_Bernstein_TARGET →   CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET →     CriticalBarrierClayTarget.Sobolev_R3_TARGET →       CriticalBarrierClayTarget.B2_12_ESS_TARGET →         CriticalBarrierClayTarget.NS_GLOBAL_CLOSURE_TARGET →           CriticalBarrierClayTarget.LP_Bernstein_TARGET ∧             CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET ∧               Critical`
- `CriticalBarrierClayTarget.target_chain_is_explicit` (atk-navier-stokes-public, `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_final-two-stage-review-nsb2-20260912/formal/lean/CriticalBarrier/B2_8_Alignment_Target_Clay.lean:123`) depende de `CriticalBarrierClayTarget.B2_12_ESS_TARGET`, `CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET`, `CriticalBarrierClayTarget.LP_Bernstein_TARGET`, `CriticalBarrierClayTarget.NS_GLOBAL_CLOSURE_TARGET`, `CriticalBarrierClayTarget.Sobolev_R3_TARGET`
  - enunciado: `CriticalBarrierClayTarget.LP_Bernstein_TARGET →   CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET →     CriticalBarrierClayTarget.Sobolev_R3_TARGET →       CriticalBarrierClayTarget.B2_12_ESS_TARGET →         CriticalBarrierClayTarget.NS_GLOBAL_CLOSURE_TARGET →           CriticalBarrierClayTarget.LP_Bernstein_TARGET ∧             CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET ∧               Critical`
- `CriticalBarrierClayTarget.target_chain_is_explicit` (atk-navier-stokes-public, `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_g1-beta-multiprover-20260913/formal/lean/CriticalBarrier/B2_8_Alignment_Target_Clay.lean:123`) depende de `CriticalBarrierClayTarget.B2_12_ESS_TARGET`, `CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET`, `CriticalBarrierClayTarget.LP_Bernstein_TARGET`, `CriticalBarrierClayTarget.NS_GLOBAL_CLOSURE_TARGET`, `CriticalBarrierClayTarget.Sobolev_R3_TARGET`
  - enunciado: `CriticalBarrierClayTarget.LP_Bernstein_TARGET →   CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET →     CriticalBarrierClayTarget.Sobolev_R3_TARGET →       CriticalBarrierClayTarget.B2_12_ESS_TARGET →         CriticalBarrierClayTarget.NS_GLOBAL_CLOSURE_TARGET →           CriticalBarrierClayTarget.LP_Bernstein_TARGET ∧             CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET ∧               Critical`
- `CriticalBarrierClayTarget.target_chain_is_explicit` (atk-navier-stokes-public, `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_millennium-multiprover-structure-20260913/formal/lean/CriticalBarrier/B2_8_Alignment_Target_Clay.lean:123`) depende de `CriticalBarrierClayTarget.B2_12_ESS_TARGET`, `CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET`, `CriticalBarrierClayTarget.LP_Bernstein_TARGET`, `CriticalBarrierClayTarget.NS_GLOBAL_CLOSURE_TARGET`, `CriticalBarrierClayTarget.Sobolev_R3_TARGET`
  - enunciado: `CriticalBarrierClayTarget.LP_Bernstein_TARGET →   CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET →     CriticalBarrierClayTarget.Sobolev_R3_TARGET →       CriticalBarrierClayTarget.B2_12_ESS_TARGET →         CriticalBarrierClayTarget.NS_GLOBAL_CLOSURE_TARGET →           CriticalBarrierClayTarget.LP_Bernstein_TARGET ∧             CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET ∧               Critical`
- `MCore.Real.P02RejectionImageEscape.no_literal_idempotence_shortcut` (atk-p-vs-np-public, `branches/m-core-p-vs-np/atk_p03-closure-repair-20261025/lean/MCore/Real/P02RejectionImageEscape.lean:165`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `¬MCore.Real.P02SemanticSelfSubstitution.RejectCodeIdempotent`
- `MCore.Real.P02SemanticSelfSubstitution.rejectCodeIdempotent_refuted` (atk-p-vs-np-public, `branches/m-core-p-vs-np/atk_p03-closure-repair-20261025/lean/MCore/Real/P02SemanticSelfSubstitution.lean:372`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `¬MCore.Real.P02SemanticSelfSubstitution.RejectCodeIdempotent`
- `MCore.Real.P02SemanticSelfSubstitution.rejectCode_not_idempotent_on_alwaysReject` (atk-p-vs-np-public, `branches/m-core-p-vs-np/atk_p03-closure-repair-20261025/lean/MCore/Real/P02SemanticSelfSubstitution.lean:366`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.Real.P02SemanticSelfSubstitution.rejectCode MCore.Real.FailProofFiniteAttack.alwaysRejectCandidate     (MCore.Real.P02SemanticSelfSubstitution.rejectCode MCore.Real.FailProofFiniteAttack.alwaysRejectCandidate []) ≠   MCore.Real.P02SemanticSelfSubstitution.rejectCode MCore.Real.FailProofFiniteAttack.alwaysRejectCandidate []`
- `MCore.C9.vars_const` (atk-p-vs-np-public, `branches/m-core-p-vs-np/work_C9-two-channel-bridge/lean/MCore/C9/Vars.lean:18`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `∀ (b : Bool), MCore.C9.vars (MCore.CircuitK1.Circuit.const b) = 0`
- `MCore.canonicalize_closed` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:55`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize MCore.rawClosed = MCore.RPACanonicalState.closed`
- `MCore.canonicalize_closed_closed` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:145`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord2 MCore.rawClosed MCore.rawClosed) = MCore.RPACanonicalState.closed`
- `MCore.canonicalize_closed_closed_closed` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:157`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord3 MCore.rawClosed MCore.rawClosed MCore.rawClosed) = MCore.RPACanonicalState.closed`
- `MCore.canonicalize_closed_closed_open` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:181`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord3 MCore.rawClosed MCore.rawClosed MCore.rawOpen) = MCore.RPACanonicalState.full`
- `MCore.canonicalize_closed_idempotent` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:67`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawAdd MCore.rawClosed MCore.rawClosed) = MCore.canonicalize MCore.rawClosed`
- `MCore.canonicalize_closed_open` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:149`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord2 MCore.rawClosed MCore.rawOpen) = MCore.RPACanonicalState.full`
- `MCore.canonicalize_closed_open_closed` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:177`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord3 MCore.rawClosed MCore.rawOpen MCore.rawClosed) = MCore.RPACanonicalState.full`
- `MCore.canonicalize_closed_open_open` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:169`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord3 MCore.rawClosed MCore.rawOpen MCore.rawOpen) = MCore.RPACanonicalState.full`
- `MCore.canonicalize_dual` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:59`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize MCore.rawDual = MCore.RPACanonicalState.full`
- `MCore.canonicalize_empty` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:47`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize MCore.rawEmpty = MCore.RPACanonicalState.empty`
- `MCore.canonicalize_full_2_2` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:185`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord4 MCore.rawOpen MCore.rawOpen MCore.rawClosed MCore.rawClosed) =   MCore.RPACanonicalState.full`
- `MCore.canonicalize_open` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:51`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize MCore.rawOpen = MCore.RPACanonicalState.open`
- `MCore.canonicalize_open_closed_closed` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:173`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord3 MCore.rawOpen MCore.rawClosed MCore.rawClosed) = MCore.RPACanonicalState.full`
- `MCore.canonicalize_open_closed_open` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:165`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord3 MCore.rawOpen MCore.rawClosed MCore.rawOpen) = MCore.RPACanonicalState.full`
- `MCore.canonicalize_open_idempotent` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:63`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawAdd MCore.rawOpen MCore.rawOpen) = MCore.canonicalize MCore.rawOpen`
- `MCore.canonicalize_open_open` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:141`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord2 MCore.rawOpen MCore.rawOpen) = MCore.RPACanonicalState.open`
- `MCore.canonicalize_open_open_closed` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:161`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord3 MCore.rawOpen MCore.rawOpen MCore.rawClosed) = MCore.RPACanonicalState.full`
- `MCore.canonicalize_open_open_open` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:153`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord3 MCore.rawOpen MCore.rawOpen MCore.rawOpen) = MCore.RPACanonicalState.open`
- `MCore.complete_lattice_14` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:190`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize MCore.rawOpen = MCore.RPACanonicalState.open ∧   MCore.canonicalize MCore.rawClosed = MCore.RPACanonicalState.closed ∧     MCore.canonicalize (MCore.rawWord2 MCore.rawOpen MCore.rawClosed) = MCore.RPACanonicalState.full ∧       MCore.canonicalize (MCore.rawWord2 MCore.rawClosed MCore.rawOpen) = MCore.RPACanonicalState.full ∧         MCore.canonicalize (MCore.rawWord2 MCore.rawOp`
- `MCore.full_raw_2_2_is_global_external` (atk-riemann-public, `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006/lean/MCore/RH/P02RPAEndpointLattice.lean:221`) depende de `Lean.ofReduceBool`
  - este axioma vem de `native_decide`: o kernel aceita o resultado do compilador sem conferir. Para fechar no kernel, troque por `decide` (ou outra prova).
  - enunciado: `MCore.canonicalize (MCore.rawWord4 MCore.rawOpen MCore.rawOpen MCore.rawClosed MCore.rawClosed) =     MCore.RPACanonicalState.full ∧   (MCore.RPAFull ↔ MCore.RPAGlobalExternalCertificate)`

## Axiomas declarados (o que cada mundo de repositório aceita)

- atk-navier-stokes-public: `CriticalBarrier.admissible_concentration_window` : `Prop`
- atk-navier-stokes-public: `CriticalBarrier.audit_pipeline_loaded` : `Prop`
- atk-navier-stokes-public: `CriticalBarrier.critical_barrier_dichotomy_target` : `Prop`
- atk-navier-stokes-public: `CriticalBarrier.energy_scaling_constraint` : `Prop`
- atk-navier-stokes-public: `CriticalBarrier.ess_blowup_alternative` : `Prop`
- atk-navier-stokes-public: `CriticalBarrier.ess_endpoint_classical` : `Prop`
- atk-navier-stokes-public: `CriticalBarrier.finite_energy_constraint` : `Prop`
- atk-navier-stokes-public: `CriticalBarrier.l3_scale_invariant` : `Prop`
- atk-navier-stokes-public: `CriticalBarrier.pressure_poisson_compatibility` : `Prop`
- atk-navier-stokes-public: `CriticalBarrier.smooth_forcing_requires_cancellation` : `Prop`
- atk-navier-stokes-public: `CriticalBarrierClayTarget.Alignment_Bound_TARGET` : `∀ (st : CriticalBarrierClayTarget.FluidState),   0 < st.ν →     10 ≤ st.Λ →       CriticalBarrierClayTarget.HRepoRefinedTarget →         ∀ (alignment : ℝ), alignment ≤ 1 - CriticalBarrierClayTarget.deltaAlignment`
- atk-navier-stokes-public: `CriticalBarrierClayTarget.B2_10_CRITICAL_L3_TARGET` : `CriticalBarrierClayTarget.FluidState → (ℝ → ℝ) → ℝ → Prop`
- atk-navier-stokes-public: `CriticalBarrierClayTarget.B2_12_ESS_TARGET` : `Prop`
- atk-navier-stokes-public: `CriticalBarrierClayTarget.B2_4_ENERGY_BALANCE_TARGET` : `CriticalBarrierClayTarget.FluidState → (ℝ → ℝ) → (ℝ → ℝ) → (ℝ → ℝ) → (ℝ → ℝ) → Prop`
- atk-navier-stokes-public: `CriticalBarrierClayTarget.B2_8_REFINED_TARGET` : `∀ (st : CriticalBarrierClayTarget.FluidState) (Pi : ℝ),   0 < st.ν →     10 ≤ st.Λ →       Pi ≤ CriticalBarrierClayTarget.kappa st.ν st.Λ * st.R + CriticalBarrierClayTarget.C_error * st.Λ ^ (-0.5) * st.R`
- atk-navier-stokes-public: `CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET` : `Prop`
- atk-navier-stokes-public: `CriticalBarrierClayTarget.LP_Bernstein_TARGET` : `Prop`
- atk-navier-stokes-public: `CriticalBarrierClayTarget.NS_GLOBAL_CLOSURE_TARGET` : `Prop`
- atk-navier-stokes-public: `CriticalBarrierClayTarget.Sobolev_R3_TARGET` : `Prop`

## Projetos que não compilaram (diagnóstico do Lean)

- atk-beal-public `branches/m-core-beal/atk_beal-two-sided-resolution-20261001` (leanprover/lean4:v4.19.0) — compilou em parte: 547 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-beal-public `branches/m-core-beal/attack_t36e2-c4-unit-minimality-20260920` (leanprover/lean4:v4.29.0-rc6) — compilou em parte: 375 teoremas lidos no kernel: error: no such file or directory (error code: 4294967294) | error: build failed
- atk-beal-public `branches/m-core-beal/attack_t61-modern-reduction-port-20260920` (leanprover/lean4:v4.29.0-rc6) — compilou em parte: 475 teoremas lidos no kernel: error: no such file or directory (error code: 4294967294) | error: build failed
- atk-beal-public `branches/m-core-beal/research_pure-math-final-proof-v1` (leanprover/lean4:v4.19.0) — compilou em parte: 153 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-beal-public `imports/lean/MCore` (padrão do elan): 
- atk-bsd-public `branches/m-core-bsd/attack_bsd-certified-foundation` (leanprover/lean4:v4.19.0) — compilou em parte: 162 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-bsd-public `branches/m-core-bsd/audit_multistate-proof-refutation-v1` (leanprover/lean4:v4.19.0) — compilou em parte: 207 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-bsd-public `imports/lean/MCore/Material` (padrão do elan): 
- atk-hodge-public `branches/m-core-hodge/atk_hodge-closed-math-line-20261007` (leanprover/lean4:v4.19.0) — compilou em parte: 692 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-hodge-public `branches/m-core-hodge/open-math_hodge-gap-20261004` (leanprover/lean4:v4.19.0) — compilou em parte: 857 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-hodge-public `imports/m-core-hodge/lean` (leanprover/lean4:v4.19.0): 
- atk-hodge-public `imports/open_math` (padrão do elan): 
- atk-math-core-public `imports/AxiomaticMillenium` (padrão do elan): 
- atk-navier-stokes-public `branches/M-private/chain_219-forward-corrected` (leanprover/lean4:v4.34.0-rc2) — compilou em parte: 132 teoremas lidos no kernel: error: MPrivate: some modules have bad imports or could not be read | error: no such file or directory (error code: 2) | error: build failed
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/atk_axiom-free-targets-20261008` (leanprover/lean4:v4.19.0): error: no such file or directory (error code: 2) | error: build failed
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/atk_k1a-xieps-exact-derivative` (leanprover/lean4:v4.19.0): error: no such file or directory (error code: 2) | error: build failed
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/audit_g1-beta-multiprover-20260913/formal/lean` (leanprover/lean4:v4.19.0) — compilou em parte: 17 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/copilot_primitive-to-bridge` (leanprover/lean4:v4.19.0): error: no such file or directory (error code: 2) | error: build failed
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/copilot_teorema-alvo-hdynamic` (leanprover/lean4:v4.19.0): error: no such file or directory (error code: 2) | error: build failed
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/open-math_ns-final-empty/formal/lean` (leanprover/lean4:v4.19.0) — compilou em parte: 22 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-navier-stokes-public `imports/Material` (padrão do elan): 
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit` (leanprover/lean4:v4.19.0): error: ././././MillenniumAudit/StabilizedHypothetical.lean:12:0: invalid 'import' command, it must be used in the beginning of the file | error: Lean exited with code 1 | error: build failed
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit/formal/millennium/lean` (leanprover/lean4:v4.19.0) — compilou em parte: 50 teoremas lidos no kernel: error: ././././MillenniumAudit/HypothesesComplete_v3.lean:58:4: linarith failed to find a contradiction | error: Lean exited with code 1 | error: build failed
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_g1-beta-multiprover-20260913/formal/millennium/lean` (leanprover/lean4:v4.19.0) — compilou em parte: 128 teoremas lidos no kernel: error: ././././MillenniumAudit/G1Audit.lean:46:2: dsimp made no progress | error: Lean exited with code 1 | error: build failed
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit/preservation/session-scratch-20260913` (leanprover/lean4:v4.19.0): error: ././././MillenniumAudit/StabilizedHypothetical.lean:12:0: invalid 'import' command, it must be used in the beginning of the file | error: Lean exited with code 1 | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_falsified-terminal-inhabitants-20260930` (leanprover/lean4:v4.19.0) — compilou em parte: 1829 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_g21-final-integration-clean-20260930` (leanprover/lean4:v4.19.0) — compilou em parte: 1199 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_g21-same-input-core-close-20260930` (leanprover/lean4:v4.19.0) — compilou em parte: 569 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-exact-bounded-outcome-20260930` (leanprover/lean4:v4.19.0) — compilou em parte: 1952 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-exact-rebuild-clean-20260930` (leanprover/lean4:v4.19.0) — compilou em parte: 492 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-exact-runtime-v2-20260930` (leanprover/lean4:v4.19.0) — compilou em parte: 1952 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-preserving-input-reader-20260930` (leanprover/lean4:v4.19.0) — compilou em parte: 882 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-preserving-unary-read-20260930` (leanprover/lean4:v4.19.0) — compilou em parte: 882 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-seq-runbranches-20260929` (leanprover/lean4:v4.19.0) — compilou em parte: 99 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-successor-cycle-20261005` (leanprover/lean4:v4.19.0) — compilou em parte: 1288 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-terminal-promotion-candidate-20260930` (leanprover/lean4:v4.19.0) — compilou em parte: 1481 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p02-a1-completeness-fast-20260925` (leanprover/lean4:v4.19.0) — compilou em parte: 2473 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p02-lane4-terminal-densify-20261003` (leanprover/lean4:v4.19.0) — compilou em parte: 2512 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p02-only-20261001` (leanprover/lean4:v4.19.0) — compilou em parte: 2372 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p03-closure-repair-20261025` (leanprover/lean4:v4.19.0) — compilou em parte: 4010 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_structural-fixed-point-20261006` (leanprover/lean4:v4.19.0) — compilou em parte: 2792 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/discovery_pnp-open-math-20261004` (leanprover/lean4:v4.19.0) — compilou em parte: 2524 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/red_C11-aa8b19a1` (leanprover/lean4:v4.19.0) — compilou em parte: 312 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/red_C8-3394f470` (leanprover/lean4:v4.19.0) — compilou em parte: 182 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/research_pure-math-final-proof-v1` (leanprover/lean4:v4.19.0) — compilou em parte: 325 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/work_C9-two-channel-bridge` (leanprover/lean4:v4.19.0) — compilou em parte: 295 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `branches/m-core-p-vs-np/work_pnp-minimal-sat-search-20261005` (leanprover/lean4:v4.19.0) — compilou em parte: 1224 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-p-vs-np-public `imports/M-Core/imports/pnp/b406b806/lean/MCore/Real` (padrão do elan): 
- atk-p-vs-np-public `imports/M-Core/imports/pnp/c102d9d4/lean/MCore/Real` (padrão do elan): 
- atk-riemann-public `branches/m-core-riemann/atk_euler-audit-20261016` (leanprover/lean4:v4.19.0): error: no such file or directory (error code: 2) | error: build failed
- atk-riemann-public `branches/m-core-riemann/atk_rh-multistate-decay-hardening-20261001` (leanprover/lean4:v4.19.0) — compilou em parte: 94 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-riemann-public `branches/m-core-riemann/atk_riemann-indeterminate-transform-test-20261011/experiments/indeterminate-transform` (leanprover/lean4:v4.19.0) — compilou em parte: 14 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-riemann-public `branches/m-core-riemann/attack_r2-multistate-sn-gap` (leanprover/lean4:v4.19.0): o download do Mathlib falhou: error: dependency 'plausible' of 'mathlib' not in manifest; this suggests that the manifest is corrupt; use `lake update` to generate a new, complete file (warning: this will update ALL workspace dependencies)
- atk-riemann-public `imports/lean/MCore/Material` (padrão do elan): 
- atk-riemann-public `imports/m-core-riemann/atk-kernel` (leanprover/lean4:v4.34.1): error: ATK/Riemann.lean:52:20: Type mismatch | error: build failed
- atk-riemann-public `imports/m-core-riemann/atk-kernel/ATK` (leanprover/lean4:v4.19.0): 
- atk-yang-mills-public `branches/m-core-yang-mills/atk_delta-habitants-finalize-20260927` (leanprover/lean4:v4.19.0) — compilou em parte: 710 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-yang-mills-public `branches/m-core-yang-mills/atk_proof-inventory-d8a5e95e` (leanprover/lean4:v4.19.0) — compilou em parte: 183 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-yang-mills-public `branches/m-core-yang-mills/atk_ym-material-promotion-v13-20261007` (leanprover/lean4:v4.19.0) — compilou em parte: 258 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-yang-mills-public `branches/m-core-yang-mills/attack_B6-k30-concrete-realization-v1` (leanprover/lean4:v4.19.0) — compilou em parte: 183 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-yang-mills-public `branches/m-core-yang-mills/frozen_first-real-open-math-green-1f0aa029` (leanprover/lean4:v4.19.0) — compilou em parte: 183 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed
- atk-yang-mills-public `imports/lean/MCore/Material` (padrão do elan): 
- beal-proof `.` (leanprover/lean4:v4.36.0-rc2): rializing new dependency info: batteries: fetching revision 'd4c39b228d4a06f3b00748c2c445a7b9f056a6e3' from https://github.com/leanprover-community/batteries info: batteries: checking out revision 'd4c39b228d4a06f3b00748c2c445a7b9f056a6e3' info: Cli: materializing new dependency info: Cli: fetching 
- clay-riemann-proof `.` (leanprover/lean4:v4.36.0-rc2) — compilou em parte: 708 teoremas lidos no kernel: rializing new dependency info: batteries: fetching revision 'd4c39b228d4a06f3b00748c2c445a7b9f056a6e3' from https://github.com/leanprover-community/batteries info: batteries: checking out revision 'd4c39b228d4a06f3b00748c2c445a7b9f056a6e3' info: Cli: materializing new dependency info: Cli: fetching 

## O que falta para compilar, por causa

Cada projeto que não compilou (ou cujo Mathlib não pôde ser baixado) aparece uma vez, na primeira causa que a mensagem do Lean ou do Lake mostra. Corrigida essa causa, o próximo erro pode aparecer.

### arquivo importado não existe (53)

Como corrigir: incluir o arquivo que falta ou remover o import.

- atk-beal-public `branches/m-core-beal/atk_beal-parity-to-t59-partition-20261001` (leanprover/lean4:v4.19.0)
- atk-beal-public `branches/m-core-beal/atk_beal-two-sided-resolution-20261001` (leanprover/lean4:v4.19.0)
- atk-beal-public `branches/m-core-beal/attack_t36e2-c4-unit-minimality-20260920` (leanprover/lean4:v4.29.0-rc6)
- atk-beal-public `branches/m-core-beal/attack_t61-modern-reduction-port-20260920` (leanprover/lean4:v4.29.0-rc6)
- atk-beal-public `branches/m-core-beal/research_pure-math-final-proof-v1` (leanprover/lean4:v4.19.0)
- atk-bsd-public `branches/m-core-bsd/attack_bsd-certified-foundation` (leanprover/lean4:v4.19.0)
- atk-bsd-public `branches/m-core-bsd/audit_multistate-proof-refutation-v1` (leanprover/lean4:v4.19.0)
- atk-bsd-public `branches/m-core-bsd/h2-archimedean-failclosed` (leanprover/lean4:v4.19.0)
- atk-hodge-public `branches/m-core-hodge/atk_hodge-closed-math-line-20261007` (leanprover/lean4:v4.19.0)
- atk-hodge-public `branches/m-core-hodge/open-math_hodge-gap-20261004` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `branches/M-private/chain_219-forward-corrected` (leanprover/lean4:v4.34.0-rc2)
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/atk_axiom-free-targets-20261008` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/atk_k1a-xieps-exact-derivative` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/atk_kernel-theta-budget-20260928` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/attack_ns003-o1-core-v419` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/audit_g1-beta-multiprover-20260913/formal/lean` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/copilot_primitive-to-bridge` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/copilot_teorema-alvo-hdynamic` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/open-math_ns-final-empty/formal/lean` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit/formal/lean` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_final-two-stage-review-nsb2-20260912/formal/lean` (leanprover/lean4:stable)
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_g1-beta-multiprover-20260913/formal/lean` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_millennium-multiprover-structure-20260913/formal/lean` (leanprover/lean4:stable)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_falsified-terminal-inhabitants-20260930` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_g21-final-integration-clean-20260930` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_g21-same-input-core-close-20260930` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-exact-bounded-outcome-20260930` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-exact-rebuild-clean-20260930` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-exact-runtime-v2-20260930` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-preserving-input-reader-20260930` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-preserving-unary-read-20260930` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-seq-runbranches-20260929` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-successor-cycle-20261005` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p01-terminal-promotion-candidate-20260930` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p02-a1-completeness-fast-20260925` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p02-lane4-terminal-densify-20261003` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p02-only-20261001` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_p03-closure-repair-20261025` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/atk_structural-fixed-point-20261006` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/discovery_pnp-open-math-20261004` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/red_C11-aa8b19a1` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/red_C8-3394f470` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/research_pure-math-final-proof-v1` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/work_C9-two-channel-bridge` (leanprover/lean4:v4.19.0)
- atk-p-vs-np-public `branches/m-core-p-vs-np/work_pnp-minimal-sat-search-20261005` (leanprover/lean4:v4.19.0)
- atk-riemann-public `branches/m-core-riemann/atk_euler-audit-20261016` (leanprover/lean4:v4.19.0)
- atk-riemann-public `branches/m-core-riemann/atk_rh-multistate-decay-hardening-20261001` (leanprover/lean4:v4.19.0)
- atk-riemann-public `branches/m-core-riemann/atk_riemann-indeterminate-transform-test-20261011/experiments/indeterminate-transform` (leanprover/lean4:v4.19.0)
- atk-yang-mills-public `branches/m-core-yang-mills/atk_delta-habitants-finalize-20260927` (leanprover/lean4:v4.19.0)
- atk-yang-mills-public `branches/m-core-yang-mills/atk_proof-inventory-d8a5e95e` (leanprover/lean4:v4.19.0)
- atk-yang-mills-public `branches/m-core-yang-mills/atk_ym-material-promotion-v13-20261007` (leanprover/lean4:v4.19.0)
- atk-yang-mills-public `branches/m-core-yang-mills/attack_B6-k30-concrete-realization-v1` (leanprover/lean4:v4.19.0)
- atk-yang-mills-public `branches/m-core-yang-mills/frozen_first-real-open-math-green-1f0aa029` (leanprover/lean4:v4.19.0)

### arquivos sem lakefile que não compilaram (9)

Como corrigir: dar a esses arquivos um lakefile e completar os imports que faltam (muitos são fragmentos ou cópias de pastas de auditoria); `mvei verificar --so-avulsos` mostra o erro do Lean.

- atk-beal-public `imports/lean/MCore` (sem lean-toolchain)
- atk-bsd-public `imports/lean/MCore/Material` (sem lean-toolchain)
- atk-hodge-public `imports/m-core-hodge/lean` (leanprover/lean4:v4.19.0)
- atk-hodge-public `imports/open_math` (sem lean-toolchain)
- atk-math-core-public `imports/AxiomaticMillenium` (sem lean-toolchain)
- atk-p-vs-np-public `imports/M-Core/imports/pnp/b406b806/lean/MCore/Real` (sem lean-toolchain)
- atk-p-vs-np-public `imports/M-Core/imports/pnp/c102d9d4/lean/MCore/Real` (sem lean-toolchain)
- atk-riemann-public `imports/lean/MCore/Material` (sem lean-toolchain)
- atk-yang-mills-public `imports/lean/MCore/Material` (sem lean-toolchain)

### erro no código Lean (7)

Como corrigir: corrigir a prova ou a sintaxe na linha indicada.

- atk-navier-stokes-public `imports/Material` (sem lean-toolchain)
- atk-p-vs-np-public `imports/m-core-p-vs-np` (leanprover/lean4:v4.19.0)
- atk-riemann-public `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006` (leanprover/lean4:v4.19.0)
- atk-riemann-public `branches/m-core-riemann/atk_rh-two-sided-resolution-20261001` (leanprover/lean4:v4.19.0)
- atk-riemann-public `branches/m-core-riemann/atk_terminal-parameter-law-20261003` (leanprover/lean4:v4.19.0)
- atk-riemann-public `branches/m-core-riemann/attack_r2-multistate-sn-gap` (leanprover/lean4:v4.19.0)
- atk-riemann-public `imports/m-core-riemann` (leanprover/lean4:v4.19.0)

### outro (7)

Como corrigir: ver a mensagem do Lean.

- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit/formal/millennium/lean` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit/preservation/branch-snapshots/audit_g1-beta-multiprover-20260913/formal/millennium/lean` (leanprover/lean4:v4.19.0)
- atk-riemann-public `branches/m-core-riemann/attack_kfar-weighted-bilinear-decay-20260926` (leanprover/lean4:v4.19.0)
- atk-riemann-public `imports/m-core-riemann/atk-kernel` (leanprover/lean4:v4.34.1)
- atk-riemann-public `imports/m-core-riemann/atk-kernel/ATK` (leanprover/lean4:v4.19.0)
- beal-proof `.` (leanprover/lean4:v4.36.0-rc2)
- clay-riemann-proof `.` (leanprover/lean4:v4.36.0-rc2)

### import fora do início do arquivo (4)

Como corrigir: mover todos os `import` para o topo do arquivo.

- atk-navier-stokes-public `branches/navier-stokes-critical-barrier-audit/atk_ns-forcing-001` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit` (leanprover/lean4:v4.19.0)
- atk-navier-stokes-public `imports/navier-stokes-critical-barrier-audit/preservation/session-scratch-20260913` (leanprover/lean4:v4.19.0)
- atk-riemann-public `branches/m-core-riemann/atk_rh-material-recovery-20261007` (leanprover/lean4:v4.19.0)

## Aguardando Mathlib

Estes projetos importam o Mathlib. No seu computador, `mvei verificar --baixar-mathlib` baixa o cache oficial (`lake exe cache get`) e compila. Quando o download já foi tentado, o motivo da falha aparece ao lado.


## Elyon Claim 1–7

`Claim1To7Evidence ep` é a conjunção das sete afirmações para um endpoint `ep`; `claim1`…`claim7` são as projeções dela, e `canonicalClaim1To7` prova a conjunção para `canonicalSevenEndpoint`. Fechar no kernel quer dizer que essas provas valem para as definições escritas no arquivo.

| Projeto | Teorema | Estado | Axiomas |
|---|---|---|---|
| Elyon-Public-Proof/. | `claim1` | fechado | propext |
| Elyon-Public-Proof/. | `claim2` | fechado | propext |
| Elyon-Public-Proof/. | `claim3` | fechado | propext |
| Elyon-Public-Proof/. | `claim4` | fechado | propext |
| Elyon-Public-Proof/. | `claim5` | fechado | propext |
| Elyon-Public-Proof/. | `claim6` | fechado | propext |
| Elyon-Public-Proof/. | `claim7` | fechado | propext |
| Elyon-Public-Proof/. | `canonicalClaim1To7` | fechado | propext, Quot.sound, Classical.choice |

## Correções do MVEI

Os patches ficam em `correcoes/` e só são aplicados na cópia de trabalho, depois da conferência dos manifestos; os repositórios não mudam. Para aplicar num repositório: `git apply correcoes/<repo>/<id>.patch`. Além dos patches, quando o lakefile original não funciona o MVEI gera outro ("RECONSTRUÍDO"), com o Mathlib fixado na tag da versão do Lean; o lakefile gerado fica no resultado do projeto.

- **atk-beal-public / z-provas-reparadas** (prova que não passava no kernel (o enunciado fica igual)): 2 prova(s) reescrita(s), conferidas no Lean do projeto: no_infinite_descent, forwardDependency_wellFounded. Resultado: ainda não reverificado com o patch.
- **atk-bsd-public / tatica-encontrada** (prova que não passava (ou axioma) que uma tática padrão fecha no kernel): 3 prova(s) trocada(s) pela tática que o MVEI achou para o mesmo enunciado (axiomas viram teoremas), em 2 arquivo(s). Resultado: ainda não reverificado com o patch.
- **atk-math-core-public / vocabulario-lean4** (grafia que o Lean 4 não lê (nome acentuado, λ/Σ/Π como nome, ∀ x y ∈ s, docstring solta, constant, tática do Mathlib sem import)): trocas de grafia com o mesmo nome e o mesmo enunciado em 18 arquivo(s): noncomputable 16, palavra_chave 2. Resultado: ainda não reverificado com o patch.
- **atk-math-core-public / z-provas-reparadas** (prova que não passava no kernel (o enunciado fica igual), no mesmo arquivo da branch): 51 prova(s) reescrita(s), conferidas no Lean do projeto: IBoundary (open Filter: Tendsto), negative_terminal_limit, positive_terminal_limit, two_sided_terminal_distance, same_boundary_different_orientation, negative_approach_has_residue, positive_approach_has_residue, canonical_states_pairwise_distinct, approach_orientation_distinct, K0a_regularizedAmplitude_ge, differential_decay, shrinkingDefect_pos, IBoundary (open Filter: Tendsto), negative_terminal_limit, positive_terminal_limit, two_sided_terminal_distance, same_boundary_different_orientation, negative_approach_has_residue, positive_approach_has_residue, canonical_states_pairwise_distinct, approach_orientation_distinct, index_injective, fourier_inversion, fourier1_rotate, fourier2_rotate, commutes_iff_pointwise, constant_iff_rotation_fixed, preserves_rotation_eigenspace, opDelta_zero_of_fixed, opGamma_rotate, opGamma_fixed, opGamma_eq_three_C, opC_delta_zero, delta_cycle_telescopes, oscillatoryPart_sum_zero, reconstruct_C_osc, opC_oscillatory_zero, cyclicInvariant_eq_manifesto, i3Provenance_nonempty, omega3_sq_add_omega3_add_one, omega3_cube, phase_next, add_assoc, smul_add, add_smul, mul_smul, meanPart_idempotent, oscPart_idempotent, id (corpo da def), id, rotationHabitant (51 delas herdadas da origem: as mesmas trocas da branch padrão do repositório de origem, nos arquivos do espelho com o trecho idêntico). Resultado: ainda não reverificado com o patch.
- **atk-math-core-public / zy-enunciados-do-autor** (enunciado reescrito a pedido do autor (o original, como escrito, fica registrado), no mesmo arquivo da branch): 3 enunciado(s) reescrito(s) a pedido do autor, conferidos no Lean do projeto: MissingDirectionalCertificate, (cabeçalho), LinearC3Operator (3 delas herdadas da origem: as mesmas trocas da branch padrão do repositório de origem, nos arquivos do espelho com o trecho idêntico). Resultado: ainda não reverificado com o patch.
- **atk-navier-stokes-public / z-provas-reparadas** (prova que não passava no kernel (o enunciado fica igual)): 50 prova(s) reescrita(s), conferidas no Lean do projeto: F_conditional_global_regularity, compact_sobolev_L6, bulk_tail_to_depletion, F_conditional_global_regularity, K0a_regularizedAmplitude_ge, bulk_tail_to_depletion, B2_9_Pi_different, B2_9_Pi_different, B2_9_R_equal, G1a5_expansive_example, K0a_totality, F_of_complete_stabilization, alpha_eps_le_norm, betaCampanato_energy_only, gamma_lt_half_of_barrier_condition, differential_decay, independent_contract_closes, shrinkingDefect_pos, epsilon_close_not_transitive, closed_depletion_implies_decay, bulk_tail_to_depletion, differential_decay, bulk_tail_to_depletion, B2_9_Pi_different, B2_9_Pi_different, B2_9_R_equal, shrinkingDefect_pos, admissible_iterate, epsilon_close_not_transitive, B2_9_Pi_different, B2_9_Pi_different, B2_9_R_equal, shrinkingDefect_pos, admissible_iterate, epsilon_close_not_transitive, closed_depletion_implies_decay, B2_9_Pi_different, B2_9_Pi_different, B2_9_R_equal, shrinkingDefect_pos, admissible_iterate, epsilon_close_not_transitive, bulk_tail_to_depletion, bulk_tail_to_depletion, F_conditional_global_regularity, K0a_regularizedAmplitude_ge, bulk_tail_to_depletion, G1a5_expansive_example, K0a_totality, F_of_complete_stabilization (13 delas herdadas da origem: as mesmas trocas da branch padrão do repositório de origem, nos arquivos do espelho com o trecho idêntico). Resultado: ainda não reverificado com o patch.
- **atk-navier-stokes-public / zy-enunciados-do-autor** (enunciado reescrito a pedido do autor (o original, como escrito, fica registrado)): 17 enunciado(s) reescrito(s) a pedido do autor, conferidos no Lean do projeto: global_regularity_from_G1, materialInhabitant_dissipation_margin_pos, alpha_eps, LocalEnergyIdentityData, ofXiEpsPDE, ofXiEpsPDE_PROVED_IDENTITY, tangentialPart_add_parallel, sinAngleSq, MissingDirectionalCertificate, global_regularity_from_G1, DynamicHalfHolderCoherence, MissingDirectionalCertificate, global_regularity_from_G1, CH95_to_KWC_conditional, DynamicHalfHolderCoherence, tangentialPart_add_parallel, sinAngleSq (3 delas herdadas da origem: as mesmas trocas da branch padrão do repositório de origem, nos arquivos do espelho com o trecho idêntico). Resultado: ainda não reverificado com o patch.
- **atk-navier-stokes-public / zzz-nomes-ligados** (nome usado no arquivo e declarado em outro arquivo do mesmo repositório, sem o import): 1 arquivo(s) passam a importar o módulo que declara o nome que faltava: imports/navier-stokes-critical-barrier-audit/audit/producer-first/NSMaterialInhabitant.lean: ActualNSToSignedGainCore. Resultado: ainda não reverificado com o patch.
- **atk-p-vs-np-public / tatica-encontrada** (prova que não passava (ou axioma) que uma tática padrão fecha no kernel): 8 prova(s) trocada(s) pela tática que o MVEI achou para o mesmo enunciado (axiomas viram teoremas), em 3 arquivo(s). Resultado: ainda não reverificado com o patch.
- **atk-p-vs-np-public / vocabulario-lean4** (grafia que o Lean 4 não lê (nome acentuado, λ/Σ/Π como nome, ∀ x y ∈ s, docstring solta, constant, tática do Mathlib sem import)): trocas de grafia com o mesmo nome e o mesmo enunciado em 2171 arquivo(s): campos_multiplos 4, docstring 2, imports_topo 118, lambda 8, nomes_mathlib 18, noncomputable 2164, notacao 4, palavra_chave 9, repr 1, tatica_mathlib 5. Resultado: `branches/m-core-p-vs-np/atk_falsified-terminal-inhabitants-20260930`: 1829 fechados; `branches/m-core-p-vs-np/atk_g21-final-integration-clean-20260930`: 1199 fechados; `branches/m-core-p-vs-np/atk_g21-same-input-core-close-20260930`: 569 fechados; `branches/m-core-p-vs-np/atk_hardened-final-boundary-20261001`: 628 fechados; `branches/m-core-p-vs-np/atk_next-p01-integrated-machine-20260929`: 100 fechados; `branches/m-core-p-vs-np/atk_next-pnp-finite-clock-explicit-coding-20260928`: 666 fechados; `branches/m-core-p-vs-np/atk_p01-exact-bounded-outcome-20260930`: 1952 fechados; `branches/m-core-p-vs-np/atk_p01-exact-consumption-certificate-20260930`: 1847 fechados; `branches/m-core-p-vs-np/atk_p01-exact-rebuild-clean-20260930`: 492 fechados; `branches/m-core-p-vs-np/atk_p01-exact-runtime-v2-20260930`: 1952 fechados; `branches/m-core-p-vs-np/atk_p01-post-mincut-advance-20261001`: 2830 fechados; `branches/m-core-p-vs-np/atk_p01-preserving-input-reader-20260930`: 882 fechados; `branches/m-core-p-vs-np/atk_p01-preserving-unary-read-20260930`: 882 fechados; `branches/m-core-p-vs-np/atk_p01-real-neg-macro`: 1805 fechados; `branches/m-core-p-vs-np/atk_p01-real-neg-macro/external/p02-kleene-adapter`: 2 fechados; `branches/m-core-p-vs-np/atk_p01-seq-runbranches-20260929`: 99 fechados; `branches/m-core-p-vs-np/atk_p01-successor-cycle-20261005`: 1288 fechados; `branches/m-core-p-vs-np/atk_p01-terminal-promotion-candidate-20260930`: 1481 fechados; `branches/m-core-p-vs-np/atk_p01-verifier-decomposition-20261008`: 720 fechados; `branches/m-core-p-vs-np/atk_p01-witness-prep-global-44e3327a`: 1178 fechados; `branches/m-core-p-vs-np/atk_p02-a1-completeness-fast-20260925`: 2473 fechados; `branches/m-core-p-vs-np/atk_p02-lane4-terminal-densify-20261003`: 2512 fechados; `branches/m-core-p-vs-np/atk_p02-only-20261001`: 2372 fechados; `branches/m-core-p-vs-np/atk_p03-closure-repair-20261025`: 4007 fechados; `branches/m-core-p-vs-np/atk_pnp-rigorous-terminal-decomposition-20261001`: 553 fechados; `branches/m-core-p-vs-np/atk_shared-multistate-signature-20260926`: 32 fechados; `branches/m-core-p-vs-np/atk_structural-fixed-point-20261006`: 2792 fechados; `branches/m-core-p-vs-np/attack_g3-model-match-only-20260922`: 125 fechados; `branches/m-core-p-vs-np/attack_material-orientation-clean-v2-20260921`: 928 fechados; `branches/m-core-p-vs-np/audit_multistate-proof-refutation-v1`: 341 fechados; `branches/m-core-p-vs-np/cert_p012-full-lemma-suite-54b42c0e-run35841388703`: 1159 fechados; `branches/m-core-p-vs-np/discovery_pnp-open-math-20261004`: 2524 fechados; `branches/m-core-p-vs-np/k7-PNP`: 74 fechados; `branches/m-core-p-vs-np/k7-preflight`: 76 fechados; `branches/m-core-p-vs-np/meta_finalproof-frontier-map-v1`: 18 fechados; `branches/m-core-p-vs-np/red_C11-aa8b19a1`: 312 fechados; `branches/m-core-p-vs-np/red_C8-3394f470`: 182 fechados; `branches/m-core-p-vs-np/research_pure-math-final-proof-v1`: 325 fechados; `branches/m-core-p-vs-np/work_C12-progress-coverage`: 361 fechados; `branches/m-core-p-vs-np/work_C9-two-channel-bridge`: 294 fechados; `branches/m-core-p-vs-np/work_pnp-minimal-sat-search-20261005`: 1224 fechados; `imports/m-core-p-vs-np`: 1590 fechados; `imports/m-core-p-vs-np/atk-kernel`: 2 fechados.
- **atk-p-vs-np-public / z-provas-reparadas** (prova que não passava no kernel (o enunciado fica igual)): 2 prova(s) reescrita(s), conferidas no Lean do projeto: final_external_certificate, rewind_false_bits (1 delas herdadas da origem: as mesmas trocas da branch padrão do repositório de origem, nos arquivos do espelho com o trecho idêntico). Resultado: ainda não reverificado com o patch.
- **atk-p-vs-np-public / zzz-nomes-ligados** (nome usado no arquivo e declarado em outro arquivo do mesmo repositório, sem o import): 1 arquivo(s) passam a importar o módulo que declara o nome que faltava: branches/m-core-p-vs-np/atk_p03-closure-repair-20261025/lean/P02/LANE4/_AUX/R5_PAIR.lean: namespace MCore.Real.P02TotalCandidateKleeneReduction. Resultado: ainda não reverificado com o patch.
- **atk-riemann-public / tatica-encontrada** (prova que não passava (ou axioma) que uma tática padrão fecha no kernel): 3 prova(s) trocada(s) pela tática que o MVEI achou para o mesmo enunciado (axiomas viram teoremas), em 3 arquivo(s). Resultado: ainda não reverificado com o patch.
- **atk-riemann-public / vocabulario-lean4** (grafia que o Lean 4 não lê (nome acentuado, λ/Σ/Π como nome, ∀ x y ∈ s, docstring solta, constant, tática do Mathlib sem import)): trocas de grafia com o mesmo nome e o mesmo enunciado em 213 arquivo(s): abbrev 12, acento 2, docstring 3, imports_topo 2, integral 1, lambda 3, nomes_mathlib 117, noncomputable 171, notacao 3, notacao_escopo 1, palavra_chave 3, soma_em 3, tatica_mathlib 2, tipos_numericos 3. Resultado: `branches/m-core-riemann/atk-kernel-check/atk-kernel`: 13 fechados; `branches/m-core-riemann/atk_cert-repair-rh-b8077235`: 33 fechados; `branches/m-core-riemann/atk_euler-audit-20261016`: 0 fechados; `branches/m-core-riemann/atk_master-rh-gram-repair-20260930`: 1 fechados; `branches/m-core-riemann/atk_rh-log-majorant-split-20261001`: 83 fechados; `branches/m-core-riemann/atk_rh-material-decision-objects-20261001`: 6 fechados; `branches/m-core-riemann/atk_rh-material-recovery-20261007`: 230 fechados; `branches/m-core-riemann/atk_rh-multistate-decay-hardening-20261001`: 94 fechados; `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006`: 190 fechados; `branches/m-core-riemann/atk_rh-tristate-material-hardening-20261001`: 197 fechados; `branches/m-core-riemann/atk_rh-two-sided-resolution-20261001`: 74 fechados; `branches/m-core-riemann/atk_riemann-indeterminate-transform-test-20261011/experiments/indeterminate-transform`: 14 fechados; `branches/m-core-riemann/atk_riemann-li-zeta-v435-20261025/experiments/li-criterion`: 40 fechados; `branches/m-core-riemann/atk_terminal-parameter-law-20261003`: 421 fechados; `branches/m-core-riemann/attack_kfar-weighted-bilinear-decay-20260926`: 46 fechados; `branches/m-core-riemann/attack_r01-quantitative-zero-criterion-20260921`: 39 fechados; `branches/m-core-riemann/attack_r2-multistate-sn-gap`: 0 fechados; `branches/m-core-riemann/attack_rh-multistate-sn-gap-20260926`: 107 fechados; `branches/m-core-riemann/attack_typed-final-endpoint-v1`: 42 fechados; `branches/m-core-riemann/audit_multistate-proof-refutation-v1`: 91 fechados; `branches/m-core-riemann/audit_r0-4-chi-memlp`: 85 fechados; `branches/m-core-riemann/claude_atk-protocol-setup-wzeajl/atk-kernel`: 53 fechados; `branches/m-core-riemann/k7-preflight_RH-OfficialSpec`: 82 fechados; `branches/m-core-riemann/open-math_rh-gap-20261004`: 135 fechados; `branches/m-core-riemann/research_nb-zero-limit-frontier`: 30 fechados; `branches/m-core-riemann/research_pure-math-final-proof-v1`: 7 fechados; `imports/m-core-riemann`: 177 fechados; `imports/m-core-riemann/atk-kernel`: 0 fechados.
- **atk-riemann-public / z-provas-reparadas** (prova que não passava no kernel (o enunciado fica igual)): 1 prova(s) reescrita(s), conferidas no Lean do projeto: gram_residual_le. Resultado: `branches/m-core-riemann/atk-kernel-check/atk-kernel`: 13 fechados; `branches/m-core-riemann/atk_cert-repair-rh-b8077235`: 33 fechados; `branches/m-core-riemann/atk_euler-audit-20261016`: 0 fechados; `branches/m-core-riemann/atk_master-rh-gram-repair-20260930`: 1 fechados; `branches/m-core-riemann/atk_rh-log-majorant-split-20261001`: 83 fechados; `branches/m-core-riemann/atk_rh-material-decision-objects-20261001`: 6 fechados; `branches/m-core-riemann/atk_rh-material-recovery-20261007`: 230 fechados; `branches/m-core-riemann/atk_rh-multistate-decay-hardening-20261001`: 94 fechados; `branches/m-core-riemann/atk_rh-rejection-zero-probe-20261006`: 190 fechados; `branches/m-core-riemann/atk_rh-tristate-material-hardening-20261001`: 197 fechados; `branches/m-core-riemann/atk_rh-two-sided-resolution-20261001`: 74 fechados; `branches/m-core-riemann/atk_riemann-indeterminate-transform-test-20261011/experiments/indeterminate-transform`: 14 fechados; `branches/m-core-riemann/atk_riemann-li-zeta-v435-20261025/experiments/li-criterion`: 40 fechados; `branches/m-core-riemann/atk_terminal-parameter-law-20261003`: 421 fechados; `branches/m-core-riemann/attack_kfar-weighted-bilinear-decay-20260926`: 46 fechados; `branches/m-core-riemann/attack_r01-quantitative-zero-criterion-20260921`: 39 fechados; `branches/m-core-riemann/attack_r2-multistate-sn-gap`: 0 fechados; `branches/m-core-riemann/attack_rh-multistate-sn-gap-20260926`: 107 fechados; `branches/m-core-riemann/attack_typed-final-endpoint-v1`: 42 fechados; `branches/m-core-riemann/audit_multistate-proof-refutation-v1`: 91 fechados; `branches/m-core-riemann/audit_r0-4-chi-memlp`: 85 fechados; `branches/m-core-riemann/claude_atk-protocol-setup-wzeajl/atk-kernel`: 53 fechados; `branches/m-core-riemann/k7-preflight_RH-OfficialSpec`: 82 fechados; `branches/m-core-riemann/open-math_rh-gap-20261004`: 135 fechados; `branches/m-core-riemann/research_nb-zero-limit-frontier`: 30 fechados; `branches/m-core-riemann/research_pure-math-final-proof-v1`: 7 fechados; `imports/m-core-riemann`: 177 fechados; `imports/m-core-riemann/atk-kernel`: 0 fechados.
- **Elyon-Public-Proof / imports-no-topo** (import fora do início do arquivo): imports movidos para o início (antes de comentários de módulo ou de documentação) em 1 arquivo(s). Resultado: `.`: 579 fechados.
- **Elyon-Public-Proof / tatica-encontrada** (prova que não passava (ou axioma) que uma tática padrão fecha no kernel): 1 prova(s) trocada(s) pela tática que o MVEI achou para o mesmo enunciado (axiomas viram teoremas), em 1 arquivo(s). Resultado: `.`: 579 fechados.
- **Elyon-Public-Proof / vocabulario-lean4** (grafia que o Lean 4 não lê (nome acentuado, λ/Σ/Π como nome, ∀ x y ∈ s, docstring solta, constant, tática do Mathlib sem import)): trocas de grafia com o mesmo nome e o mesmo enunciado em 55 arquivo(s): campos_multiplos 3, constant 1, lambda 2, nomes_mathlib 4, noncomputable 52, palavra_chave 1, repr 1, tatica_mathlib 1. Resultado: `.`: 579 fechados.
- **Elyon-Public-Proof / z-provas-reparadas** (prova que não passava no kernel (o enunciado fica igual)): 4 prova(s) reescrita(s), conferidas no Lean do projeto: K0a_regularizedAmplitude_ge, differential_decay, shrinkingDefect_pos, classified_preserves_twoSided. Resultado: `.`: 579 fechados.
- **Elyon-Public-Proof / zy-enunciados-do-autor** (enunciado reescrito a pedido do autor (o original, como escrito, fica registrado)): 1 enunciado(s) reescrito(s) a pedido do autor, conferidos no Lean do projeto: MissingDirectionalCertificate. Resultado: ainda não reverificado com o patch.

Projetos com lakefile gerado pelo MVEI: 43 (9191 teoremas lidos no kernel).

## Reprodutibilidade

SHA-256 dos arquivos de dados usados neste relatório (no pacote do MVEI, em `propostas/`):

- `_verificacao/VERIFICACAO.json`: `685c2fa919e8017fa5e772f32ff44ae5b46e035df4ba316c0574d936b507c51e`
- `_verificacao/SIMULACAO.json`: `d136e235ba5a10b203e904d531a37504b7305c9a7c014b80ffd48ebeb90e05dc`
- `_verificacao/INTEGRIDADE.json`: `419c42caf7987f7e877d601dd54601ebc8a27f9c3205f8b6196dee9a6b6d449f`
- `_indice/INDEX.json`: `803356b225819ca81c2fb13811a8776bd5557570e29ced611e58c553e0de7fca`
- `correcoes/atk-beal-public/z-provas-reparadas.patch`: `3f6ae3c4d7cb9387e8159f8914ab55ce03d2d245dbfa22e0957f9963a16639bb`
- `correcoes/atk-bsd-public/tatica-encontrada.patch`: `fb7a836b005b90d63f53b64ac8c36ffc83ce5f6d38da3fa6648976f791eafc6a`
- `correcoes/atk-math-core-public/vocabulario-lean4.patch`: `faf2ffb8acdb2a31eca8e73320b7da07059148f1e6668e692f86c0e3e2eef075`
- `correcoes/atk-math-core-public/z-provas-reparadas.patch`: `5335fd8afdecbfd373e7378aac934b0849c6bcf00b8a0c01b33a4478917b6488`
- `correcoes/atk-math-core-public/zy-enunciados-do-autor.patch`: `55a859c9605d08a27ddc7f55b6256606ea3ddaff9765e836b5ceee4b42c4e4ab`
- `correcoes/atk-navier-stokes-public/z-provas-reparadas.patch`: `dd0ee94b490c19321a3633500c4a62eb929a62fc30a2507310bc108dbf9b09ba`
- `correcoes/atk-navier-stokes-public/zy-enunciados-do-autor.patch`: `61ae11d9f7ae77bf8c873ff737894445b044ca50698922b4fcadced8514a77bf`
- `correcoes/atk-navier-stokes-public/zzz-nomes-ligados.patch`: `270f3d995e6bdadad55d85daba09cf028996f922725a237ddccda6c8331ba351`
- `correcoes/atk-p-vs-np-public/tatica-encontrada.patch`: `207935e5287bf5213ead066298f1f0d605cb853f40a2bba9e4593dd85eb887bb`
- `correcoes/atk-p-vs-np-public/vocabulario-lean4.patch`: `ad9ab3f0573f58a13ad0f54e6c1a808a82154017fddcbcf93ac7a176c0d2a4b1`
- `correcoes/atk-p-vs-np-public/z-provas-reparadas.patch`: `3456d2f28d9c8f4a5820afa8e03510b65428518ec02280e36da79cc7ef8cc550`
- `correcoes/atk-p-vs-np-public/zzz-nomes-ligados.patch`: `3cc45d613ab97e0f2305667545f6196c9fb9966abf2bf5b017fc3f55980bdddd`
- `correcoes/atk-riemann-public/tatica-encontrada.patch`: `bc9bfc39340812447a420c1480ba704483ba74a45d622e8fdac60b904216ed73`
- `correcoes/atk-riemann-public/vocabulario-lean4.patch`: `4e9a291f7b33f896eee77ad79f151ec6d0f4580861cfe51d8e95c36197fe14e6`
- `correcoes/atk-riemann-public/z-provas-reparadas.patch`: `61f00d2ab66cf175e4079af32ffa93371fbd8dadafea02dca31f059b471381f4`
- `correcoes/Elyon-Public-Proof/imports-no-topo.patch`: `98df1093c7e078529b84d36ecae3a9a2c2cff0ba3782393d81174058f0bee60f`
- `correcoes/Elyon-Public-Proof/tatica-encontrada.patch`: `07d71deb7bb94d8ecb95d801a3b93923d742c7751486d83fca0824d0f66ce614`
- `correcoes/Elyon-Public-Proof/vocabulario-lean4.patch`: `4b9d7664c5d0ebd68e577414f91d025f6597c8e98254d75178375261ae59a1cf`
- `correcoes/Elyon-Public-Proof/z-provas-reparadas.patch`: `dd3c2df9a65026e090b303eaf037877d9c0a360c9691849dce6138f214efd7a8`
- `correcoes/Elyon-Public-Proof/zy-enunciados-do-autor.patch`: `2f6617db0314eee7d687a44d470a84ea32187feb2b9566b09a7522a7a80273af`

Para refazer: `mvei verificar --baixar-mathlib --com-correcoes` (ou o workflow `construir.yml` com `[mathlib]` na mensagem do commit) e depois `mvei relatorio`.

## Integridade (SHA256SUMS / manifestos)

- Elyon-Public-Proof `external-certificates/MANIFEST.json`: 0 conferem, 0 diferentes, 0 ausentes 
- Elyon-Public-Proof `certs/final_external/v1/SHA256SUMS`: 10 conferem, 0 diferentes, 0 ausentes 
- Elyon-Public-Proof `certs/elyon_claim1_7_only/SHA256SUMS`: 6 conferem, 0 diferentes, 0 ausentes 

## Modo simulação (não é certificado)

Cada suposição Sn é um enunciado que o kernel do Lean NÃO verificou. O manifesto original do autor não foi alterado.

- **S1** (atk-navier-stokes-public): `MPrivate.NS.ThirdCoefficient.k1BridgeMatrix_has_seven_rows` — `MPrivate.NS.ThirdCoefficient.k1BridgeMatrix.length = 7`
- **S2** (atk-navier-stokes-public): `CriticalBarrierClayTarget.target_chain_is_explicit` — `CriticalBarrierClayTarget.LP_Bernstein_TARGET →   CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET →     CriticalBarrierClayTarget.Sobolev_R3_TARGET →       CriticalBarrierClayTarget.B2_12_ESS_TARGET →  `
- **S3** (atk-navier-stokes-public): `CriticalBarrierClayTarget.target_chain_is_explicit` — `CriticalBarrierClayTarget.LP_Bernstein_TARGET →   CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET →     CriticalBarrierClayTarget.Sobolev_R3_TARGET →       CriticalBarrierClayTarget.B2_12_ESS_TARGET →  `
- **S4** (atk-navier-stokes-public): `CriticalBarrierClayTarget.target_chain_is_explicit` — `CriticalBarrierClayTarget.LP_Bernstein_TARGET →   CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET →     CriticalBarrierClayTarget.Sobolev_R3_TARGET →       CriticalBarrierClayTarget.B2_12_ESS_TARGET →  `
- **S5** (atk-navier-stokes-public): `CriticalBarrierClayTarget.target_chain_is_explicit` — `CriticalBarrierClayTarget.LP_Bernstein_TARGET →   CriticalBarrierClayTarget.CZ_Riesz_L32_TARGET →     CriticalBarrierClayTarget.Sobolev_R3_TARGET →       CriticalBarrierClayTarget.B2_12_ESS_TARGET →  `
- **S6** (atk-p-vs-np-public): `MCore.Real.P02RejectionImageEscape.no_literal_idempotence_shortcut` — `¬MCore.Real.P02SemanticSelfSubstitution.RejectCodeIdempotent`
- **S7** (atk-p-vs-np-public): `MCore.Real.P02SemanticSelfSubstitution.rejectCodeIdempotent_refuted` — `¬MCore.Real.P02SemanticSelfSubstitution.RejectCodeIdempotent`
- **S8** (atk-p-vs-np-public): `MCore.Real.P02SemanticSelfSubstitution.rejectCode_not_idempotent_on_alwaysReject` — `MCore.Real.P02SemanticSelfSubstitution.rejectCode MCore.Real.FailProofFiniteAttack.alwaysRejectCandidate     (MCore.Real.P02SemanticSelfSubstitution.rejectCode MCore.Real.FailProofFiniteAttack.alwaysR`
- **S9** (atk-p-vs-np-public): `MCore.C9.vars_const` — `∀ (b : Bool), MCore.C9.vars (MCore.CircuitK1.Circuit.const b) = 0`
- **S10** (atk-riemann-public): `MCore.canonicalize_closed` — `MCore.canonicalize MCore.rawClosed = MCore.RPACanonicalState.closed`
- **S11** (atk-riemann-public): `MCore.canonicalize_closed_closed` — `MCore.canonicalize (MCore.rawWord2 MCore.rawClosed MCore.rawClosed) = MCore.RPACanonicalState.closed`
- **S12** (atk-riemann-public): `MCore.canonicalize_closed_closed_closed` — `MCore.canonicalize (MCore.rawWord3 MCore.rawClosed MCore.rawClosed MCore.rawClosed) = MCore.RPACanonicalState.closed`
- **S13** (atk-riemann-public): `MCore.canonicalize_closed_closed_open` — `MCore.canonicalize (MCore.rawWord3 MCore.rawClosed MCore.rawClosed MCore.rawOpen) = MCore.RPACanonicalState.full`
- **S14** (atk-riemann-public): `MCore.canonicalize_closed_idempotent` — `MCore.canonicalize (MCore.rawAdd MCore.rawClosed MCore.rawClosed) = MCore.canonicalize MCore.rawClosed`
- **S15** (atk-riemann-public): `MCore.canonicalize_closed_open` — `MCore.canonicalize (MCore.rawWord2 MCore.rawClosed MCore.rawOpen) = MCore.RPACanonicalState.full`
- **S16** (atk-riemann-public): `MCore.canonicalize_closed_open_closed` — `MCore.canonicalize (MCore.rawWord3 MCore.rawClosed MCore.rawOpen MCore.rawClosed) = MCore.RPACanonicalState.full`
- **S17** (atk-riemann-public): `MCore.canonicalize_closed_open_open` — `MCore.canonicalize (MCore.rawWord3 MCore.rawClosed MCore.rawOpen MCore.rawOpen) = MCore.RPACanonicalState.full`
- **S18** (atk-riemann-public): `MCore.canonicalize_dual` — `MCore.canonicalize MCore.rawDual = MCore.RPACanonicalState.full`
- **S19** (atk-riemann-public): `MCore.canonicalize_empty` — `MCore.canonicalize MCore.rawEmpty = MCore.RPACanonicalState.empty`
- **S20** (atk-riemann-public): `MCore.canonicalize_full_2_2` — `MCore.canonicalize (MCore.rawWord4 MCore.rawOpen MCore.rawOpen MCore.rawClosed MCore.rawClosed) =   MCore.RPACanonicalState.full`
- **S21** (atk-riemann-public): `MCore.canonicalize_open` — `MCore.canonicalize MCore.rawOpen = MCore.RPACanonicalState.open`
- **S22** (atk-riemann-public): `MCore.canonicalize_open_closed_closed` — `MCore.canonicalize (MCore.rawWord3 MCore.rawOpen MCore.rawClosed MCore.rawClosed) = MCore.RPACanonicalState.full`
- **S23** (atk-riemann-public): `MCore.canonicalize_open_closed_open` — `MCore.canonicalize (MCore.rawWord3 MCore.rawOpen MCore.rawClosed MCore.rawOpen) = MCore.RPACanonicalState.full`
- **S24** (atk-riemann-public): `MCore.canonicalize_open_idempotent` — `MCore.canonicalize (MCore.rawAdd MCore.rawOpen MCore.rawOpen) = MCore.canonicalize MCore.rawOpen`
- **S25** (atk-riemann-public): `MCore.canonicalize_open_open` — `MCore.canonicalize (MCore.rawWord2 MCore.rawOpen MCore.rawOpen) = MCore.RPACanonicalState.open`
- **S26** (atk-riemann-public): `MCore.canonicalize_open_open_closed` — `MCore.canonicalize (MCore.rawWord3 MCore.rawOpen MCore.rawOpen MCore.rawClosed) = MCore.RPACanonicalState.full`
- **S27** (atk-riemann-public): `MCore.canonicalize_open_open_open` — `MCore.canonicalize (MCore.rawWord3 MCore.rawOpen MCore.rawOpen MCore.rawOpen) = MCore.RPACanonicalState.open`
- **S28** (atk-riemann-public): `MCore.complete_lattice_14` — `MCore.canonicalize MCore.rawOpen = MCore.RPACanonicalState.open ∧   MCore.canonicalize MCore.rawClosed = MCore.RPACanonicalState.closed ∧     MCore.canonicalize (MCore.rawWord2 MCore.rawOpen MCore.raw`
- **S29** (atk-riemann-public): `MCore.full_raw_2_2_is_global_external` — `MCore.canonicalize (MCore.rawWord4 MCore.rawOpen MCore.rawOpen MCore.rawClosed MCore.rawClosed) =     MCore.RPACanonicalState.full ∧   (MCore.RPAFull ↔ MCore.RPAGlobalExternalCertificate)`

