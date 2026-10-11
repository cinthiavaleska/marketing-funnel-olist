--======================================================================
-- Existem diferenças no tempo de fechamento conforme a origem do lead?
--======================================================================

-- Calcular o tempo de fechamento por origem
SELECT
    ql.origin,
    COUNT(DISTINCT cd.mql_id) AS negocios_fechados,
    ROUND(
        AVG(cd.won_date - ql.first_contact_date),
        2
    ) AS media_dias_fechamento,
    MIN(cd.won_date - ql.first_contact_date) AS minimo_dias,
    MAX(cd.won_date - ql.first_contact_date) AS maximo_dias
FROM closed_deals cd
INNER JOIN qualified_leads ql
    ON cd.mql_id = ql.mql_id
WHERE cd.won_date >= ql.first_contact_date
GROUP BY ql.origin
ORDER BY media_dias_fechamento ;