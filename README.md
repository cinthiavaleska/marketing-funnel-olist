# Marketing Funnel Analysis — Olist

## Sobre o projeto

Este projeto tem como objetivo analisar o funil de marketing da Olist, investigando a relação entre leads qualificados e negócios fechados.

A análise busca compreender o volume de leads, a conversão observada, a evolução temporal e o desempenho das diferentes origens, gerando insights que podem apoiar decisões das áreas de marketing e vendas.

## Problema de negócio

- Quantos leads qualificados existem na base?
- Quantos negócios foram fechados?
- Qual é a taxa de conversão observada?
- Como a entrada de leads evolui ao longo do tempo?
- Quais origens apresentam maior volume de leads?
- Quais origens apresentam maior taxa de conversão?
- Quanto tempo os negócios levam para ser fechados?
- Existem diferenças no tempo de fechamento conforme a origem?

## Fonte de dados

Dataset **Marketing Funnel by Olist**, disponibilizado no Kaggle.

O projeto utiliza informações de leads qualificados e negócios fechados.

## Ferramentas utilizadas

- Python
- Pandas
- Jupyter Notebook
- PostgreSQL e SQL
- Power BI
- Git e GitHub

## Principais resultados

- **Leads qualificados:** 8.000
- **Negócios fechados registrados:** 842
- **Taxa de conversão observada:** 10,53%
- **Tempo médio de fechamento:** 48,50 dias, considerando apenas registros em que a data de fechamento não é anterior à data de entrada do lead.
- **Maior volume mensal de leads:** abril de 2018, com 1.352 leads registrados.
- **Maior volume mensal de negócios fechados:** abril de 2018, com 207 negócios.
- **Origem com maior volume de leads:** `organic_search`, com 2.296 leads.
- **Origem conhecida com maior taxa de conversão observada:** `paid_search`, com 12,30%.

Esses resultados são descritivos e representam os dados disponíveis na base analisada.

## Dashboard

O projeto inclui um dashboard desenvolvido no Power BI para apresentar os principais indicadores, a evolução mensal dos leads e dos negócios fechados, e o desempenho por origem.


![Dashboard Marketing Funnel — Olist](power_bi/dashboard.png)

## Recomendações para o negócio

Com base na análise, recomendo aproveitar o potencial da busca orgânica, que apresentou o maior volume de leads, e avaliar ações para melhorar o acompanhamento dos leads de `paid_search`, que teve a maior taxa de conversão entre as origens conhecidas, de 12,30%. Uma iniciativa seria aproximar as equipes de marketing e vendas para entender como esses leads estão sendo atendidos e identificar oportunidades para aumentar a conversão.

Também recomendo melhorar o registro da origem dos leads classificados como `unknown`. Apesar de apresentarem uma taxa de conversão de 16,65%, não sabemos de quais canais eles vieram. Identificar essas origens permitiria avaliar melhor a contribuição de cada canal para os resultados.

Por fim, o tempo médio observado de fechamento foi de 48,5 dias. Recomendo aproximar as equipes de vendas e relacionamento com o cliente para identificar possíveis dificuldades durante a contratação, como dúvidas sobre a plataforma, taxas ou etapas do processo, e avaliar ações para tornar essa jornada mais simples.

**Um ponto importante é que a análise permite comparar volume de leads e taxas de conversão, mas não identificar quais canais são mais rentáveis.** 


## Estrutura do projeto

O repositório reúne os arquivos de análise, as consultas SQL utilizadas para responder às perguntas de negócio e a documentação dos resultados e insights.

## Limitações da análise

- **Conversão observada:** a ausência de um negócio fechado na base não significa necessariamente que o lead foi perdido. Por isso, a taxa calculada representa os negócios registrados nos dados disponíveis, e não necessariamente a conversão final de todos os leads.
- **Qualidade dos dados:** foi identificado pelo menos um registro em que a data de fechamento é anterior à data de entrada do lead. Esse registro foi desconsiderado no cálculo do tempo médio de fechamento, sem alteração das datas originais.
- **Origem desconhecida:** os registros classificados como `unknown` não permitem identificar o canal de origem dos leads, limitando a avaliação do desempenho de cada canal.
- **Rentabilidade dos canais:** a base não possui dados adequados de investimento em marketing e receita por canal. Portanto, não foi possível calcular indicadores como CAC e ROAS nem determinar quais canais geram maior retorno financeiro.
- **Interpretação dos resultados:** as diferenças de volume e conversão entre as origens mostram associações observadas nos dados, mas não comprovam relações de causa e efeito.

## Status do projeto

Análise exploratória, consultas SQL e dashboard desenvolvidos para fins de aprendizado e portfólio de Análise de Dados.