--=========================================================
--    Como os negócios fechados evoluem mensalmente?
--=========================================================

-- Contar os negócios fechados por mês de fechamento
SELECT
	DATE_TRUNC('month', won_date)::DATE as mes,
	COUNT(DISTINCT mql_id) AS total_negocios_fechados
FROM closed_deals 
GROUP BY DATE_TRUNC('month', won_date)
ORDER BY mes;