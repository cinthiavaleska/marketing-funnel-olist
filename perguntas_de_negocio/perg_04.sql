--=========================================================
--   Como a entrada de leads evolui ao longo do tempo?
--=========================================================

-- Contar os leads qualificados por mês de entrada
SELECT
    DATE_TRUNC('month', first_contact_date)::DATE AS mes,
    COUNT(DISTINCT mql_id) AS total_leads
FROM qualified_leads
GROUP BY DATE_TRUNC('month', first_contact_date)
ORDER BY mes;
