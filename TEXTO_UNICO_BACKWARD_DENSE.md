# DIRETRIZ OFICIAL — BACKWARD DENSE

## MUDANÇA DE ESTRATÉGIA PARA TODOS OS REPOSITÓRIOS

A partir de agora vamos trabalhar de trás pra frente em todos os repositórios, começando do final e preenchendo as lacunas até onde paramos.

Mudamos a métrica. Não é quantidade de certificados. É máxima produção matemática por alteração e por execução.

Antes: muitos arquivos finos, muitos gates, muitos runs. Cadeia artificial de N caixas.

Agora: poucos arquivos densos, poucos runs densos, poucos gates. Cada arquivo avança o máximo possível até encontrar uma fronteira matemática real.

## Como vamos fazer

1. **Começamos pelo final.** Formalizamos o `FINAL_STATEMENT` de cada repo como **DEFINIÇÃO**, não como teorema. Sem assumir circularmente a regularidade que queremos provar. Se a definição fechar só com clássicos, não é o final, é wiring.

2. **Comprimimos tudo que é wiring.** Todo estágio `G1 → ... → FINAL` que for teorema clássico externo bem especificado vira `EXTERNAL_CLASSICAL` [ref exata: teorema, página, ano] com `AXIOM_AUDIT` completo. Ex.: CKN 1982, ESS 2003, Campanato 1963, Calderón–Zygmund. Esses gates deixam de existir.

3. **Voltamos até bater na fronteira.** `FINAL → G_n → G_{n-1} → ...` colapsando wiring até o lake build quebrar. Onde quebrar é a fronteira real — é onde paramos. Esse ponto vira um único arquivo denso que avança até o resíduo matemático exato.

4. **Auditoria mantida.** Para cada fronteira, cruzamento declaração por declaração com:
   - `HYPOTHESIS_MATCH`
   - `CONCLUSION_MATCH`
   - `QUANTIFIER_MATCH`
   - `SCALING_MATCH`
   - `CONSTANT_MATCH`
   - `AXIOM_AUDIT`

   Mismatch vira resíduo documentado.

5. **Sem promoção.** Mantemos:
   - `SOURCE_CATALOG_ONLY`
   - `NO_MATHEMATICAL_PROMOTION`

   Sem nova branch, sem novo manifesto. Usamos `BASE` e `HEAD` já travados.

## Forma final desejada

Em vez de:

`G1 → G2 → ... → Gn → FINAL`

teremos:

`FRONTEIRA_REAL ∧ EXTERNAL_CLASSICAL → OPEN_BRIDGE → FINAL`

O `OPEN_BRIDGE` é a única obrigação não-clássica que sobra depois do colapso.

## Política operacional

- Máxima densidade matemática por alteração.
- Mínimo número de gates materiais.
- Mínimo número de runs necessários para falsificar ou certificar uma fronteira.
- Wiring clássico deve ser colapsado, não multiplicado.
- Uma fronteira matemática real pode ocupar um arquivo denso único.
- Nenhuma equivalência, bound, regularidade, convergência, existência, unicidade ou conclusão final é promovida por documentação.
- `EXTERNAL_CLASSICAL` exige referência verificável e auditoria de hipóteses/quantificadores/escala/constantes.
- `OPEN_BRIDGE` permanece aberto até prova real.
- `SOURCE_CATALOG_ONLY` não é prova.
- `NO_MATHEMATICAL_PROMOTION` é obrigatório.
- Frozen refs, certificados anteriores e evidência imutável não são reescritos por esta diretriz.

Esta é a estratégia oficial para os repositórios de prova/auditoria matemática daqui em diante.
