select min(salario_fixo) as 'menor salario', max(salario_fixo) as 'maior salario'
from vendedor


select sum(quantidade)
from item_pedido
where cod_produto =3


select avg(salario_fixo) as media_salario
from vendedor

select count(*) from vendedor
where salario_fixo > 2500.00

select num_pedido, total_produtos=count(*)
from item_pedido
group by num_pedido

select num_pedido, total_produtos =count(*)
from item_pedido
where quantidade > 5
group by num_pedido
having count(*) >1


update produto
set Valor_unitario = Valor_unitario * 1.025
where Valor_unitario<
   (select avg(valor_unitario)
   from produto
   where Unidade ='kg')

delete from pedido
where num_pedido in
   (select Num_pedido
   from produto P, item_pedido l
   where P.cod_produto = l.cod_produto and
   Valor_unitario <0.20)






select * from produto