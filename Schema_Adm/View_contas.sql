CREATE VIEW contabil.vw_contacred AS
SELECT conta_debito_id, conta_credito_id
FROM contabil.lancamentos
INNER JOIN contabil.plano_contas ON lancamentos.conta_credito_id = plano_contas.id_conta;