# Reproducibility - v1.0.0 - PREPARATORY_NOT_ISSUED

## Estados normativos
package_state: PREPARATORY
public_status: PREPARATORY_NOT_ISSUED
infra_state: READY_FOR_FREEZE
math_state: OPEN_MATH
final_proof: 0/7
release_state: SEALED_CLOSED
maximum_auto_state: REVIEW_PENDING
FINAL_EXTERNAL_ISSUED: false

## Hashes em dois niveis - correcao normativa
- PACKAGE_SHA256SUMS: calculavel agora sobre arquivos preparatorios
- PREPARATORY_ROOT: hash deterministico dos arquivos preparatorios, gerado por freeze.sh
- FINAL_ROOT: DEVE CONTINUAR NULL enquanto APP, producao crypto/hardware, revisao humana e anchors finais congelados contiverem UNSET. Nao calcular root final contendo strings UNSET.

## Freeze.sh correto - fail-closed
1 validar JSON/schema
2 rejeitar sorry/admit/sorryAx
3 verificar SHA/branches/runs
4 calcular SHA256SUMS
5 gerar PREPARATORY_ROOT
6 NAO gerar FINAL_ROOT enquanto UNSET
7 NAO mudar FINAL_EXTERNAL_ISSUED para true
8 quando gates satisfeitos: calcular FINAL_ROOT, provenance final, assinar, REVIEW_PENDING
9 somente evidencia humana valida produz APPROVED/ISSUED

Proximo estado: PREPARATORY_PACKAGE -> HASHED -> REPRODUCIBILITY_AUDITED -> FROZEN_PREPARATORY
NAO -> FINAL_EXTERNAL_ISSUED

## Rota P02 corrigida
G2.0 FORMAL_INFRA / normalization - normaliza bounds; nao prova enumerabilidade efetiva e nao produz G2.1
G2.1 OPEN_MATH / terminal producer - coracao P vs NP
G2.2 BLOCKED_BY_G2.1
G2.3 BLOCKED_BY_G2.2

## Root canonicalization
`SHA256SUMS` hashes the immutable payload files, including `freeze.sh`, but excludes `SHA256SUMS` and `PREPARATORY_ROOT`. `PREPARATORY_ROOT = SHA256(raw bytes of SHA256SUMS)`. No payload file is mutated after hashing.
