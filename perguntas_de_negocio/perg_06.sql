--=========================================================
--    Quais origens trazem mais leads?
--=========================================================

-- Contar os leads únicos por origem
SELECT
    origin,
    COUNT(DISTINCT mql_id) AS total_leads
FROM qualified_leads
GROUP BY origin
ORDER BY total_leads DESC;