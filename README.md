
# 🍕 Pizza Query — Consultas SQL no Databricks

Este repositório contém consultas SQL desenvolvidas no ambiente **Databricks**, com base no projeto de uma pizzaria fictícia. O conteúdo foi ministrado por **Teo Calvo** durante uma aula prática focada em bancos de dados e análise de dados com SQL.

## 🎯 Objetivo

Explorar conceitos fundamentais de SQL utilizando um cenário realista de vendas de uma pizzaria. As consultas foram feitas para responder perguntas como:

* Quais são os sabores de pizza mais vendidos?
* Quem são os clientes que mais compram?
* Qual o ticket médio por pedido?
* Quais combinações de ingredientes são mais populares?

## 🛠️ Tecnologias utilizadas

* **Databricks** (ambiente de notebooks com suporte a SQL)
* SQL ANSI (sintaxe compatível com a maioria dos bancos relacionais)

## 📁 Estrutura do repositório

```
pizza-query/
├── create_tables.sql         # Criação das tabelas do projeto
├── insert_dados.sql          # Dados de exemplo usados nas consultas
├── consultas_basicas.sql     # SELECTs simples e filtros
├── consultas_agrupadas.sql   # GROUP BY, HAVING, COUNT, SUM, etc.
├── joins_e_relacoes.sql      # JOINs entre tabelas de pedidos, clientes, pizzas, etc.
└── README.md
```

## ▶️ Como usar

1. Acesse sua conta no **Databricks Community Edition** (ou ambiente local com suporte a SQL).
2. Copie e cole os scripts `.sql` em células de tipo **SQL**.
3. Execute na ordem:
   `create_tables.sql` → `insert_dados.sql` → demais consultas.

## 💡 Exemplos de consultas

```sql
-- Pizzas mais vendidas
SELECT pizza_nome, COUNT(*) AS total_vendas
FROM pedidos
GROUP BY pizza_nome
ORDER BY total_vendas DESC;
```

```sql
-- Clientes com maior gasto acumulado
SELECT cliente_nome, SUM(valor_total) AS gasto_total
FROM pedidos
GROUP BY cliente_nome
ORDER BY gasto_total DESC;
```

## 📚 Créditos

Este projeto foi desenvolvido no **Databricks** durante aula ministrada por **Teo Calvo**, como parte de uma introdução prática ao uso de SQL em projetos de dados.

