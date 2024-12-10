select c.nome_cliente, p.num_pedido
	from cliente c
	left outer join pedido p on c.cod_cliente = p.cod_cliente

	select c.nome_cliente, p.num_pedido
	from cliente c
	left outer join pedido p on c.Cod_cliente = p.cod_cliente
	where p.cod_cliente is null

	select c.nome_cliente, p.num_pedido
	from cliente c
	full outer join pedido p on c.cod_cliente= p.cod_cliente

	select c.nome_cliente, p.num_pedido
	from cliente c
	full outer join pedido p on c.cod_cliente= p.cod_cliente
	where c.Cod_cliente is null or p.cod_cliente is null

	select * from cliente