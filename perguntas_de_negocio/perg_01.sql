--====================================================
--          Quantos leads existem na base?
--====================================================

-- Contar os leads qualificados únicos

SELECT
    COUNT(DISTINCT mql_id) AS total_leads
FROM qualified_leads;