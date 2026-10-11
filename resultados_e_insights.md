# Resultados e Insights — Marketing Funnel Olist

## 1. Taxa de conversão de leads em negócios fechados

### Resultados

- **Leads qualificados:** 8.000
- **Leads associados a negócios fechados:** 842
- **Taxa de conversão observada:** 10,53%

### Metodologia

A taxa foi calculada dividindo a quantidade de leads únicos associados a negócios fechados pelo total de leads qualificados únicos.

**Fórmula:**

Taxa de conversão (%) = (Leads com negócio fechado / Total de leads qualificados) × 100

### Análise

Dos 8.000 leads qualificados, 842 aparecem associados a negócios fechados na base, o que corresponde a uma taxa de conversão observada de 10,53%. Esse indicador oferece uma visão geral dos resultados comerciais registrados e serve como referência para as análises por origem.

### Limitação

Os dados não permitem afirmar que os demais leads foram definitivamente perdidos. Não é possível confirmar se todos tiveram tempo suficiente para avançar no processo comercial ou se poderiam converter posteriormente.

## 2. Evolução mensal da entrada de leads

### Resultados

- **Maior volume:** abril de 2018, com 1.352 leads.
- **Menor volume:** junho de 2017, com 4 leads.

### Metodologia

Os leads foram agrupados pelo mês de entrada, utilizando a coluna `first_contact_date`. A contagem considerou identificadores únicos (`mql_id`).

### Análise

O volume de leads registrados cresceu em relação aos primeiros meses da série e atingiu o maior valor em abril de 2018. Esse resultado indica que abril concentrou a maior entrada mensal de leads no período analisado.

### Limitação

O baixo volume de junho de 2017 pode estar relacionado ao início da cobertura dos dados, mas não há informações suficientes para confirmar essa hipótese. A quantidade de leads, isoladamente, também não permite avaliar sua qualidade ou a probabilidade de conversão.

## 3. Evolução mensal dos negócios fechados

### Resultados

- **Maior volume:** abril de 2018, com 207 negócios fechados.
- **Menor volume registrado:** dezembro de 2017, com 3 negócios fechados.
- **Último mês com registros:** novembro de 2018, com 6 negócios fechados.

### Metodologia

Os negócios foram agrupados pelo mês de fechamento, utilizando a coluna `won_date`. A contagem considerou identificadores únicos de leads (`mql_id`).

### Análise

Abril de 2018 concentrou o maior número de fechamentos. Após esse pico, os volumes mensais diminuíram, chegando a 6 negócios em novembro de 2018.

Essa variação descreve os fechamentos registrados na base, mas não é suficiente para concluir que houve uma piora no desempenho comercial. Para investigar essa possibilidade, seria necessário considerar outros fatores, como a entrada de leads e o tempo necessário para concluir os negócios.

### Limitação

A data de fechamento não corresponde necessariamente ao mês em que o lead entrou na base. Um negócio fechado em determinado mês pode ter origem em um lead captado anteriormente. Além disso, a redução dos registros no final da série não comprova, por si só, uma queda real na atividade comercial.

## 4. Distribuição de leads por origem

### Resultados

As três origens com maior volume de leads qualificados foram:

| Origem | Leads |
|---|---:|
| Busca orgânica (`organic_search`) | 2.296 |
| Busca paga (`paid_search`) | 1.586 |
| Redes sociais (`social`) | 1.350 |

Juntas, essas origens representam 5.232 leads, aproximadamente 65,4% do total analisado.

### Metodologia

Os leads foram agrupados pela coluna `origin`, considerando identificadores únicos (`mql_id`). As origens foram ordenadas pela quantidade de leads.

### Análise

A busca orgânica foi a origem com maior volume de leads, seguida pela busca paga e pelas redes sociais. Em conjunto, esses três canais concentram cerca de dois terços dos leads qualificados da base.

Esse resultado mostra quais origens tiveram maior participação na geração de leads, mas não indica, isoladamente, quais apresentaram melhor conversão ou eficiência financeira.

### Limitação

A categoria `unknown` reúne 1.159 leads cuja origem não foi identificada. Esse volume limita a análise dos canais, pois parte dos leads não pode ser atribuída a uma origem conhecida.

A base também não contém informações suficientes sobre custos e investimentos por canal para comparar custos de aquisição ou retorno financeiro.

## 5. Taxa de conversão por origem

### Resultados

As origens com maiores taxas de conversão observadas foram:

| Origem | Leads | Negócios fechados | Conversão |
|---|---:|---:|---:|
| Origem desconhecida (`unknown`) | 1.159 | 193 | 16,65% |
| Busca paga (`paid_search`) | 1.586 | 195 | 12,30% |
| Busca orgânica (`organic_search`) | 2.296 | 271 | 11,80% |

### Metodologia

A taxa de conversão foi calculada dividindo a quantidade de leads únicos associados a negócios fechados pelo total de leads únicos de cada origem.

**Fórmula:**

Taxa de conversão (%) = (Negócios fechados da origem / Leads da origem) × 100

O `LEFT JOIN` entre as tabelas de leads qualificados e negócios fechados permite manter os leads sem fechamento registrado no cálculo.

### Análise

A busca orgânica apresentou a maior quantidade de negócios fechados, com 271. Já a categoria `unknown` registrou a maior taxa de conversão, de 16,65%.

Entre as origens identificadas, a busca paga apresentou a maior taxa, seguida pela busca orgânica. Os resultados mostram que a origem com maior volume de leads não precisa ser a mesma que apresenta a maior taxa de conversão.

### Limitação

A taxa de `unknown` deve ser interpretada com cautela, pois não é possível identificar o canal correspondente. As diferenças observadas também não demonstram que a origem seja a causa da conversão.

Sem dados de custos e investimentos, não é possível determinar qual canal oferece o melhor retorno financeiro nem calcular indicadores como CAC e ROAS.

## 6. Tempo entre a entrada do lead e o fechamento do negócio

### Resultados

- **Tempo médio de fechamento:** 48,50 dias.
- **Menor intervalo válido:** 0 dias.
- **Maior intervalo válido:** 427 dias.
- **Registros com intervalo negativo identificado:** 1.

### Metodologia

O intervalo foi calculado pela diferença entre a data de fechamento (`won_date`) e a data de entrada do lead (`first_contact_date`).

**Fórmula:**

Tempo de fechamento (dias) = Data de fechamento − Data de entrada do lead

A média considera somente os registros em que a data de fechamento é igual ou posterior à data de entrada.

### Análise

Nos registros considerados válidos para o cálculo, o tempo médio entre a entrada do lead e o fechamento foi de 48,50 dias. Os intervalos variaram de zero a 427 dias, mostrando que a duração do processo comercial não foi uniforme entre os negócios analisados.

O intervalo máximo indica que alguns negócios levaram muito mais tempo para serem fechados do que outros. Por isso, a média deve ser interpretada como uma medida descritiva do conjunto analisado, e não como um prazo esperado para todos os negócios.

### Tratamento da inconsistência

Foi identificado um registro em que o negócio foi fechado dois dias antes da data de entrada do lead. Como não havia evidências para determinar qual data estava incorreta, os dados originais foram mantidos.

O registro foi excluído apenas do cálculo do tempo de fechamento, por meio de um filtro SQL que considera intervalos iguais ou superiores a zero. Essa decisão evita incluir uma duração negativa no indicador sem realizar uma correção arbitrária nos dados.

### Limitação

A média considera os negócios fechados com datas válidas para esse cálculo. Portanto, não representa o tempo que todos os leads levariam para converter, especialmente aqueles sem fechamento registrado.

## 7. Tempo de fechamento por origem

### Resultados

As origens com menores tempos médios de fechamento foram:

| Origem | Média de dias | Negócios considerados |
|---|---:|---:|
| `display` | 10,33 | 6 |
| `other` | 15,25 | 4 |
| `direct_traffic` | 31,13 | 56 |

Entre as origens com maior volume de negócios fechados, os resultados foram:

| Origem | Média de dias | Negócios considerados |
|---|---:|---:|
| `organic_search` | 50,19 | 270 |
| `paid_search` | 56,60 | 195 |
| `social` | 60,96 | 75 |

### Metodologia

O tempo de fechamento foi calculado pela diferença entre `won_date` e `first_contact_date`. Os registros foram agrupados pela origem do lead, considerando apenas intervalos iguais ou superiores a zero.

**Fórmula:**

Tempo médio por origem = Soma dos intervalos válidos / Quantidade de negócios com intervalos válidos

### Análise

Foram observadas diferenças no tempo médio de fechamento entre as origens. O tráfego direto apresentou média de 31,13 dias, enquanto a busca paga e as redes sociais apresentaram médias de 56,60 e 60,96 dias, respectivamente.

Esses resultados descrevem os tempos registrados em cada origem, mas não demonstram que um canal seja responsável por acelerar ou atrasar o fechamento. As diferenças podem estar relacionadas a características dos leads ou a outros fatores do processo comercial que não foram isolados nesta análise.

### Limitação

As médias devem ser interpretadas considerando a quantidade de negócios de cada origem. `display` e `other`, por exemplo, possuem apenas 6 e 4 negócios considerados, respectivamente, o que limita a representatividade dessas médias.

A análise é descritiva e não permite isolar o efeito da origem sobre o tempo de fechamento. Também não permite concluir que canais com médias menores sejam necessariamente melhores para o negócio.