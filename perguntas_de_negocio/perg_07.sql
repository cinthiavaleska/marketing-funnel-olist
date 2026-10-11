--=========================================================
--    Quais origens apresentam maior taxa de conversão?
--=========================================================

-- Fórmula: (Negócios fechados da origem / Leads da origem) * 100


-- Calcular a taxa de conversão por origem
SELECT
    ql.origin,
    COUNT(DISTINCT ql.mql_id) AS total_leads,
    COUNT(DISTINCT cd.mql_id) AS negocios_fechados,
    ROUND(
        COUNT(DISTINCT cd.mql_id) * 100.0
        / COUNT(DISTINCT ql.mql_id),
        2
    ) AS taxa_conversao_pct
FROM qualified_leads ql
LEFT JOIN closed_deals cd
    ON ql.mql_id = cd.mql_id
GROUP BY ql.origin
ORDER BY taxa_conversao_pct DESC;