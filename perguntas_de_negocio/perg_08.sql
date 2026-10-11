--=========================================================
--    Quais origens apresentam maior taxa de conversão?
--=========================================================


-- Calcular o tempo entre a entrada do lead e o fechamento
SELECT
    ROUND(AVG(cd.won_date - ql.first_contact_date), 2)
        AS media_dias_fechamento,
    MIN(cd.won_date - ql.first_contact_date)
        AS minimo_dias,
    MAX(cd.won_date - ql.first_contact_date)
        AS maximo_dias
FROM closed_deals cd
INNER JOIN qualified_leads ql
    ON cd.mql_id = ql.mql_id;