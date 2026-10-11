--=========================================================
--    Quanto tempo os negócios levam para ser fechados?
--=========================================================

-- Calcular o tempo de fechamento considerando todos os registros 
SELECT
    ROUND(
        AVG(cd.won_date - ql.first_contact_date),
        2
    ) AS media_dias_fechamento,
    MIN(cd.won_date - ql.first_contact_date) AS minimo_dias,
    MAX(cd.won_date - ql.first_contact_date) AS maximo_dias
FROM closed_deals cd
INNER JOIN qualified_leads ql
    ON cd.mql_id = ql.mql_id



-- Identificar a inconsistência encontrada:
-- Um negócio foi fechado antes da data de entrada do lead.
-- Essa situação gera um intervalo negativo e precisa ser investigada.


-- Calcular o tempo de fechamento sem intervalos negativos
SELECT
    ROUND(
        AVG(cd.won_date - ql.first_contact_date),
        2
    ) AS media_dias_fechamento,
    MIN(cd.won_date - ql.first_contact_date) AS minimo_dias,
    MAX(cd.won_date - ql.first_contact_date) AS maximo_dias
FROM closed_deals cd
INNER JOIN qualified_leads ql
    ON cd.mql_id = ql.mql_id
WHERE cd.won_date >= ql.first_contact_date;







-- Calcular o tempo de fechamento desconsiderando intervalos negativos
SELECT
    ROUND(
        AVG(cd.won_date - ql.first_contact_date),
        2
    ) AS media_dias_fechamento,
    MIN(cd.won_date - ql.first_contact_date) AS minimo_dias,
    MAX(cd.won_date - ql.first_contact_date) AS maximo_dias
FROM closed_deals cd
INNER JOIN qualified_leads ql
    ON cd.mql_id = ql.mql_id
WHERE cd.won_date >= ql.first_contact_date;


-- Justificativa:
-- Manter os dados originais e excluir intervalos negativos apenas
-- do cálculo do tempo de fechamento, evitando médias distorcidas.
-- Documentar a inconsistência como uma limitação da análise.