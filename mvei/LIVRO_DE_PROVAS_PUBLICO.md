# Livro de Provas — ecossistema ShantiDraconis / M-Core

> Este livro cobre só os repositórios públicos de ShantiDraconis (16 de 250). As contagens abaixo foram recalculadas para esse conjunto e podem ser refeitas por qualquer pessoa a partir dos repositórios. A verificação completa, com os repositórios privados, fica no MVEI do autor e não pode ser conferida a partir daqui.

Gerado pelo MVEI em 2026-10-29 02:47 UTC. Verificação feita no kernel do Lean (`Lean.collectAxioms`, a função de `#print axioms`). **T** = fechado só com axiomas padrão (propext, Classical.choice, Quot.sound); **Ω** = aberto; **condicional** = vale no mundo do repositório, que aceita os axiomas que ele declara.

## Visão geral

| | |
|---|---|
| Repositórios | 16 (15 com conteúdo, 1 vazios) |
| Projetos Lean encontrados | 16 |
| Compilados (nesta máquina ou no GitHub Actions, com o Mathlib) | 5 (3 com lakefile reconstruído) |
| Não compilaram | 11 |
| Sem compilar: o Mathlib não baixou ou não foi tentado | 0 |
| Teoremas fechados (T), por projeto | 1455 (1357 no build dos projetos, 98 checados arquivo a arquivo; 1163 em projetos que só compilaram com lakefile gerado ou correções do MVEI) |
| Teoremas fechados únicos (nome + enunciado) | 1379 (as cópias em pastas de snapshot contam uma vez) |
| Únicos sem os lemas que o Lean gera sozinho | 735 (fora: equações `eq_N`, `mk.inj`, `sizeOf_spec`, lemas de `deriving`) |
| Fechados sem variáveis no enunciado | 247 dos 735 únicos escritos são afirmações sobre objetos concretos (sem ∀, ∃ ou →: contas, valores e definições do próprio arquivo); os outros têm variáveis |
| Fechados em famílias numeradas | 0 dos 735 únicos escritos têm nome numa família de 20 ou mais com o mesmo padrão (`precedence_0001`, `precedence_0002`, …), o sinal de arquivo gerado por programa |
| Fechados com enunciado vazio | 28 dos 735 únicos escritos não afirmam nada: 0 com conclusão `True`, 0 `∃ …, True` e 28 campo de registro igual ao valor que o próprio arquivo gravou (lista em ENUNCIADOS_VAZIOS.md) |
| Arquivos .lean sem lakefile (o MVEI montou 14 projetos) | 3 compilaram, 293 teoremas fechados |
| Teoremas condicionais | 0 no build |
| Pontes abertas (sorryAx) | 0 no build |
| Checados arquivo a arquivo (arquivos fora de qualquer build) | 336 teoremas: 98 fechados, 0 condicionais, 0 abertos, 9 com erro na prova, 229 não alcançados |
| Axiomas declarados (projetos compilados) | 0 |
| Auditoria estática de todos os .lean | 876 teoremas, 0 axiomas, 0 `sorry` |

A auditoria estática conta o texto de todos os arquivos (inclusive os que não compilam ou precisam do Mathlib); os números do kernel valem só para o que compilou.

## Resumo por repositório

| Repositório | Fechados | Condicionais | Abertos | Projetos (ok / em parte / falha / sem Mathlib) | Status |
|---|---:|---:|---:|---|---|
| Elyon-Public-Proof | 870 | 0 | 0 | 0 / 1 / 0 / 0 | compilou em parte |
| atk-math-core-public | 245 | 0 | 0 | 1 / 0 / 1 / 0 | compilou em parte |
| Beit-Hamikdash-iii | 194 | 0 | 0 | 1 / 0 / 0 / 0 | tudo compilou |
| atk-navier-stokes-public | 29 | 0 | 0 | 1 / 0 / 1 / 0 | compilou em parte |
| atk-beal-public | 19 | 0 | 0 | 0 / 1 / 1 / 0 | compilou em parte |
| atk-bsd-public | 0 | 0 | 0 | 0 / 0 / 1 / 0 | não compilou |
| atk-hodge-public | 0 | 0 | 0 | 0 / 0 / 2 / 0 | não compilou |
| atk-p-vs-np-public | 0 | 0 | 0 | 0 / 0 / 2 / 0 | não compilou |
| atk-riemann-public | 0 | 0 | 0 | 0 / 0 / 2 / 0 | não compilou |
| atk-yang-mills-public | 0 | 0 | 0 | 0 / 0 / 1 / 0 | não compilou |

## Mapa por domínio

| Domínio | Repositórios | Teoremas fechados (kernel) | Pontes abertas | `sorry` no texto |
|---|---:|---:|---:|---:|
| Lógica e metamatemática | 12 | 1357 | 0 | 0 |
| Teologia, Cabala e textos sagrados | 2 | 1064 | 0 | 0 |
| Outros | 2 | 0 | 0 | 0 |
| Beal | 1 | 19 | 0 | 0 |
| BSD | 1 | 0 | 0 | 0 |
| Hodge | 1 | 0 | 0 | 0 |
| Navier–Stokes | 1 | 29 | 0 | 0 |
| P vs NP | 1 | 0 | 0 | 0 |
| Riemann | 1 | 0 | 0 | 0 |
| Yang–Mills | 1 | 0 | 0 | 0 |
| Arte, cenografia e Olimpíadas | 1 | 0 | 0 | 0 |

## Todos os teoremas declarados × o que o kernel checou

Os arquivos `.lean` declaram 876 `theorem`/`lemma` (837 nomes distintos; as cópias em snapshots repetem nomes). Cada um foi procurado no que o kernel leu, no build do projeto ou no teste arquivo a arquivo. A lista completa, com arquivo, linha, estado e motivo, está em `propostas/_verificacao/TEOREMAS.csv`.

| Estado | Teoremas declarados |
|---|---:|
| fechado no kernel | 607 |
| condicional (axiomas do repositório) | 0 |
| aberto (`sorry`) | 0 |
| nunca checado pelo kernel | 269 |

Nomes distintos entre os declarados que fecharam: 590. Esta é a contagem mais conservadora: só teoremas escritos no texto (sem os lemas que o Lean gera), cada nome uma vez.

Por que os não checados não foram checados:

| Motivo | Teoremas |
|---|---:|
| testado arquivo a arquivo: o Lean não chegou ao teorema (import ausente, erro de sintaxe que interrompe o arquivo ou tempo esgotado) | 229 |
| o arquivo compilou, mas o nome não apareceu no kernel (private, mutual ou gerado por macro) | 31 |
| testado arquivo a arquivo: a prova escrita não passa no kernel (o Lean deu erro nela) | 9 |

Repositórios com mais teoremas nunca checados: Elyon-Public-Proof (168), atk-hodge-public (60), atk-beal-public (24), atk-p-vs-np-public (8), atk-math-core-public (5), atk-riemann-public (2), Beit-Hamikdash-iii (2).

## Preenchimento automático: o que as táticas já fecham

Para cada axioma declarado (proposição) e cada teorema aberto ou com erro, o MVEI pediu ao kernel uma prova com táticas automáticas (`rfl`, `decide`, `simp`, `omega` e, com o Mathlib, `norm_num`, `linarith`, `positivity`, `ring`, `tauto`, `aesop`) e uma refutação. Só conta o que o kernel aceitou com os axiomas padrão. A tática que funcionou é a prova que pode substituir o `sorry`, o axioma ou a prova com erro.

| | |
|---|---:|
| Axiomas testados | 0 |
| Axiomas demonstráveis (podem virar teorema) | 0 |
| Axiomas refutáveis (inconsistentes: com eles se prova qualquer coisa) | 0 |
| Teoremas abertos ou com erro que uma tática fecha | 0 |
| Teoremas abertos ou com erro refutáveis | 0 |

## Projetos compilados

| Repositório | Projeto | Lean | Resultado | T | Ω | cond. | axiomas declarados |
|---|---|---|---|---:|---:|---:|---:|
| atk-beal-public | `imports/lean/MCore` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-beal-public | `imports/m-core-beal/lean` (avulso) | leanprover/lean4:v4.19.0 | falhou (reconstruído) | 19 | 0 | 0 | 0 |
| atk-bsd-public | `imports/lean/MCore/Material` (avulso) | v4.35.0 (stable) | falhou | 0 | 0 | 0 | 0 |
| atk-hodge-public | `imports/m-core-hodge/lean` (avulso) | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-hodge-public | `imports/open_math` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-math-core-public | `imports/AxiomaticMillenium` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-math-core-public | `imports/M-Core/lean` (avulso) | leanprover/lean4:v4.19.0 | ok (reconstruído) | 245 | 0 | 0 | 0 |
| atk-navier-stokes-public | `imports/Material` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-navier-stokes-public | `imports/navier-stokes-critical-barrier-audit/formal/G1` (avulso) | leanprover/lean4:v4.19.0 | ok (reconstruído) | 29 | 0 | 0 | 0 |
| atk-p-vs-np-public | `imports/M-Core/imports/pnp/b406b806/lean/MCore/Real` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-p-vs-np-public | `imports/M-Core/imports/pnp/c102d9d4/lean/MCore/Real` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-riemann-public | `imports/lean/MCore/Material` (avulso) | padrão do elan | falhou | 0 | 0 | 0 | 0 |
| atk-riemann-public | `imports/m-core-riemann/atk-kernel/ATK` (avulso) | leanprover/lean4:v4.19.0 | falhou | 0 | 0 | 0 | 0 |
| atk-yang-mills-public | `imports/lean/MCore/Material` (avulso) | v4.35.0 (stable) | falhou | 0 | 0 | 0 | 0 |
| Beit-Hamikdash-iii | `.` | leanprover/lean4:v4.35.0 | ok | 194 | 0 | 0 | 0 |
| Elyon-Public-Proof | `.` | leanprover/lean4:v4.19.0 | falhou | 870 | 0 | 0 | 0 |

## Pontes abertas e o que o kernel conseguiu fazer com elas

Nenhuma ponte aberta nos projetos compilados.

## Reformulações das pontes refutadas

Nenhuma neste conjunto de repositórios.

## Enunciados marcadores e enunciados refutados

Nada desta seção conta como teorema fechado.

Marcadores (0): definições com nome de Problema do Milênio cujo conteúdo é `True`. Uma ponte que "fecha" usando uma delas não diz nada sobre o problema.

Nenhum.

## Teoremas condicionais (dependem de axiomas do próprio repositório)

Nenhum.

## Axiomas declarados (o que cada mundo de repositório aceita)

Nenhum.

## Projetos que não compilaram (diagnóstico do Lean)

- atk-beal-public `imports/lean/MCore` (padrão do elan): 
- atk-bsd-public `imports/lean/MCore/Material` (v4.35.0 (stable)): 
- atk-hodge-public `imports/m-core-hodge/lean` (leanprover/lean4:v4.19.0): 
- atk-hodge-public `imports/open_math` (padrão do elan): 
- atk-math-core-public `imports/AxiomaticMillenium` (padrão do elan): 
- atk-navier-stokes-public `imports/Material` (padrão do elan): 
- atk-p-vs-np-public `imports/M-Core/imports/pnp/b406b806/lean/MCore/Real` (padrão do elan): 
- atk-p-vs-np-public `imports/M-Core/imports/pnp/c102d9d4/lean/MCore/Real` (padrão do elan): 
- atk-riemann-public `imports/lean/MCore/Material` (padrão do elan): 
- atk-riemann-public `imports/m-core-riemann/atk-kernel/ATK` (leanprover/lean4:v4.19.0): 
- atk-yang-mills-public `imports/lean/MCore/Material` (v4.35.0 (stable)): 
- Elyon-Public-Proof `.` (leanprover/lean4:v4.19.0) — compilou em parte: 870 teoremas lidos no kernel: error: no such file or directory (error code: 2) | error: build failed

## O que falta para compilar, por causa

Cada projeto que não compilou (ou cujo Mathlib não pôde ser baixado) aparece uma vez, na primeira causa que a mensagem do Lean ou do Lake mostra. Corrigida essa causa, o próximo erro pode aparecer.

### módulo sem biblioteca no lakefile (6)

Como corrigir: declarar no lakefile um `lean_lib` com esse nome e o `srcDir` certo.

- atk-beal-public `imports/lean/MCore` (sem lean-toolchain)
- atk-hodge-public `imports/open_math` (sem lean-toolchain)
- atk-math-core-public `imports/AxiomaticMillenium` (sem lean-toolchain)
- atk-p-vs-np-public `imports/M-Core/imports/pnp/b406b806/lean/MCore/Real` (sem lean-toolchain)
- atk-p-vs-np-public `imports/M-Core/imports/pnp/c102d9d4/lean/MCore/Real` (sem lean-toolchain)
- atk-riemann-public `imports/lean/MCore/Material` (sem lean-toolchain)

### arquivo importado não existe (3)

Como corrigir: incluir o arquivo que falta ou remover o import.

- atk-beal-public `imports/m-core-beal/lean` (leanprover/lean4:v4.19.0)
- atk-hodge-public `imports/m-core-hodge/lean` (leanprover/lean4:v4.19.0)
- Elyon-Public-Proof `.` (leanprover/lean4:v4.19.0)

### arquivos sem lakefile que não compilaram (3)

Como corrigir: dar a esses arquivos um lakefile e completar os imports que faltam (muitos são fragmentos ou cópias de pastas de auditoria); `mvei verificar --so-avulsos` mostra o erro do Lean.

- atk-bsd-public `imports/lean/MCore/Material` (sem lean-toolchain)
- atk-navier-stokes-public `imports/Material` (sem lean-toolchain)
- atk-yang-mills-public `imports/lean/MCore/Material` (sem lean-toolchain)

### outro (1)

Como corrigir: ver a mensagem do Lean.

- atk-riemann-public `imports/m-core-riemann/atk-kernel/ATK` (leanprover/lean4:v4.19.0)

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

- **Elyon-Public-Proof / imports-no-topo** (import fora do início do arquivo): imports movidos para o início (antes de comentários de módulo ou de documentação) em 1 arquivo(s). Resultado: `.`: 870 fechados.

Projetos com lakefile gerado pelo MVEI: 3 (293 teoremas lidos no kernel).

## Reprodutibilidade

SHA-256 dos arquivos de dados usados neste relatório (no pacote do MVEI, em `propostas/`):

- `_verificacao/VERIFICACAO.json`: `c1a6d2a3462d1c92c319120ae2fede01e153311db676881a1713a08d1446202b`
- `_verificacao/SIMULACAO.json`: `938294cd1f19af86e5ee91f2f73f7577e34304af8df51f64592e6ee70a72ceae`
- `_verificacao/INTEGRIDADE.json`: `419c42caf7987f7e877d601dd54601ebc8a27f9c3205f8b6196dee9a6b6d449f`
- `_indice/INDEX.json`: `0816109bd6ca0f2311cc45672460e60a2da2097210a97a21a67be2908a646efd`
- `correcoes/Elyon-Public-Proof/imports-no-topo.patch`: `98df1093c7e078529b84d36ecae3a9a2c2cff0ba3782393d81174058f0bee60f`

Para refazer: `mvei verificar --baixar-mathlib --com-correcoes` (ou o workflow `construir.yml` com `[mathlib]` na mensagem do commit) e depois `mvei relatorio`.

## Integridade (SHA256SUMS / manifestos)

- Elyon-Public-Proof `external-certificates/MANIFEST.json`: 0 conferem, 0 diferentes, 0 ausentes 
- Elyon-Public-Proof `certs/final_external/v1/SHA256SUMS`: 10 conferem, 0 diferentes, 0 ausentes 
- Elyon-Public-Proof `certs/elyon_claim1_7_only/SHA256SUMS`: 6 conferem, 0 diferentes, 0 ausentes 

## Modo simulação (não é certificado)

Cada suposição Sn é um enunciado que o kernel do Lean NÃO verificou. O manifesto original do autor não foi alterado.


