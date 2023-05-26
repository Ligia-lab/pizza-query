-- Databricks notebook source
select descItem,
       count(*) as qtdePedido

from silver.pizza_query.item_pedido

where descTipoItem = 'borda'

group by descItem
order by qtdePedido desc

limit 1

-- COMMAND ----------

select descItem,
       count(*) as qtdePedido

from silver.pizza_query.item_pedido

where descTipoItem = 'massa'

group by descItem
order by qtdePedido desc

limit 1 

-- COMMAND ----------

select descItem,
       count(*) as qtdePedido

from silver.pizza_query.item_pedido

where descTipoItem like '%queijo%'

group by descItem
order by qtdePedido desc

limit 1

-- COMMAND ----------

select descItem,
       count(*) as qtdePedido

from silver.pizza_query.item_pedido

where descTipoItem like '%ingrediente%'

group by descItem
order by qtdePedido desc

limit 5

-- COMMAND ----------

select descItem,
       count(*) as qtdePedido

from silver.pizza_query.item_pedido

where descTipoItem = 'bebida'

group by descItem
order by qtdePedido desc

limit 1


-- COMMAND ----------

select *

from (


  (select descItem,
        count(*) as qtdePedido

  from silver.pizza_query.item_pedido

  where descTipoItem = 'borda'

  group by descItem
  order by qtdePedido desc

  limit 1)

    union all

  (select descItem,
        count(*) as qtdePedido

  from silver.pizza_query.item_pedido

  where descTipoItem = 'massa'

  group by descItem
  order by qtdePedido desc

  limit 1 )

    union all

  (select descItem,
        count(*) as qtdePedido

  from silver.pizza_query.item_pedido

  where descTipoItem like '%queijo%'

  group by descItem
  order by qtdePedido desc

  limit 1)

    union all

  (select descItem,
        count(*) as qtdePedido

  from silver.pizza_query.item_pedido

  where descTipoItem like '%ingrediente%'

  group by descItem
  order by qtdePedido desc

  limit 5)

    union all


  (select descItem,
        count(*) as qtdePedido

  from silver.pizza_query.item_pedido

  where descTipoItem = 'bebida'

  group by descItem
  order by qtdePedido desc

  limit 1)

    ) as t1

left join silver.pizza_query.produto as t2
on t1.descItem = t2.descItem



-- COMMAND ----------

select sum(vlPreco)

from (


  (select descItem,
        count(*) as qtdePedido

  from silver.pizza_query.item_pedido

  where descTipoItem = 'borda'

  group by descItem
  order by qtdePedido desc

  limit 1)

    union all

  (select descItem,
        count(*) as qtdePedido

  from silver.pizza_query.item_pedido

  where descTipoItem = 'massa'

  group by descItem
  order by qtdePedido desc

  limit 1 )

    union all

  (select descItem,
        count(*) as qtdePedido

  from silver.pizza_query.item_pedido

  where descTipoItem like '%queijo%'

  group by descItem
  order by qtdePedido desc

  limit 1)

    union all

  (select descItem,
        count(*) as qtdePedido

  from silver.pizza_query.item_pedido

  where descTipoItem like '%ingrediente%'

  group by descItem
  order by qtdePedido desc

  limit 5)

    union all


  (select descItem,
        count(*) as qtdePedido

  from silver.pizza_query.item_pedido

  where descTipoItem = 'bebida'

  group by descItem
  order by qtdePedido desc

  limit 1)

    ) as t1

left join silver.pizza_query.produto as t2
on t1.descItem = t2.descItem


