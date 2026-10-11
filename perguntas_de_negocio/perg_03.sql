--=========================================================
--Qual é a taxa de conversão de leads em negócios fechados?
--=========================================================

-- Fórmula: (Leads com negócio fechado / Total de leads qualificados) * 100


-- Calcular a taxa de conversão dos leads qualificados em negócios fechados
SELECT
    (
        SELECT COUNT(DISTINCT mql_id)
        FROM closed_deals
    ) * 100.0
    /
    (
        SELECT COUNT(DISTINCT mql_id)
        FROM qualified_leads
    ) AS taxa_conversao_pct;
