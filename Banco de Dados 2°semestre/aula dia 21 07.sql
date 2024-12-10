create table Cidade
(
Codcidade int identity(1,1) not null primary key,
Nomecidade varchar(40),
cdestado varchar(2)
)
 
create table Empregado
(
Nrmatricula int identity(1,1) primary key,
Nome varchar(50),
Data_admissao datetime,
Salario float
)
 
insert into Cidade
values
('Sorocaba', 'SP'),
('Votorantim', 'SP'),
('Uberlandia', 'SP'),
('Bauru', 'SP'),
('São Thomé das Letras', 'MG')
 
insert into Empregado
values
('Eduardo', '10-01-2024', 15000),
('Emanuel', '10-01-2024', 5000),
('Edvaldo', '10-01-2023', 2000),
('Ezaquiel', '10-01-2022', 2500),
('Elias', '10-01-2021', 3000)





select 'codigo do cliente', cod_cliente, 'nome do cliente', nome_cliente
from cliente

select 'funcionario:' +nome+ 'salario' +convert(varchar,salario), salario, nome
from empregado

select num_pedido, cod_produto , quantidade
from item_pedido
where quantidade >=45

select * from Empregado
where Salario between 
  1500 and 2000


select * from Empregado
where nome like '%m%'

select * from produto
where unidade like '%k%'

select * from vendedor
where faixa_comissao in ('a','b')

select * from cliente
where ie is not null

select * from Empregado
where Salario > 1000 and Nrmatricula > = 3

select * from produto
where Unidade ='m' and Valor_unitario = 1.05

select * from produto
where Unidade ='un' and Valor_unitario = 4

select * from vendedor
order by nome_vendedor desc

select * from vendedor
order by salario_fixo 
-----------------------------------------------------------------------------------------------------
create table pessoa(
id_pessoa integer primary key,
nome varchar(20),
cpf varchar(14));

create table pessoa_fisica(
id_pessoa integer primary key,
nome varchar(20),
cpf varchar (14));

insert into pessoa 
values ('1', 'pedro cabral', '12345678991');

insert into pessoa_fisica select id_pessoa, nome,cpf from pessoa;

select * from pessoa

select * from pessoa_fisica
-----------------------------------------------------------------------------------------------
select * from Empregado

select * from cidade