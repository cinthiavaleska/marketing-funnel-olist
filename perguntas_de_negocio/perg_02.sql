--====================================================
--     Qual é a quantidade de negócios fechados?
--====================================================

-- Contar os leads únicos com negócios fechados
SELECT
    COUNT(DISTINCT mql_id) AS total_negocios_fechados
FROM closed_deals;
