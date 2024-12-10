/*exercicio 1*/
create table Tbl_Clientes(
id int identity(1,1) primary key,
nome varchar(50),
email varchar(50),
telefone varchar(15))
------------------------------------------------------------------------

/*exercicio 2*/
insert Tbl_Clientes
values('joão silva', 'joao@email.com', '(11)1234-5678')
------------------------------------------------------------------------

/*exercicio 3*/
insert Tbl_Clientes
values ('Gloria Pires','glorinha@pires.com','(11) 91234-5678'),
('silvio santos', 'santinho69@gmail.com', '(21) 98765-4321'),
('rodrigo faro', 'farinho@elegosta.com', '(31) 99876-5432'),
('gugu liberato', 'liberou@.com', '(41) 94567-8901'),
('faustão', 'faustinho@doemnostrinta.com', '(51) 97654-3210'),
('xuxa Meneghel', 'xuxinha@soprabaixinhos.com', '(61) 93456-7890'),
('william bonner', 'william@boa_noite.com', '(71) 92345-6789'),
('ratinho', 'ratinhooooo@xaropinho.com', '(81) 91234-6789'),
('celso portiolli', 'torresgemeas@culpado.com', '(91) 93456-7890'),
('luciano huck', 'latavelha@yahoo.com','(91) 91234-5678')
--------------------------------------------------------------------------

/*exercicio 4*/
update Tbl_Clientes
set telefone = '(11) 8765-4321'
where telefone = '(11)1234-5678'
----------------------------------------------------------------------------

/*exercicio 5*/
create table Tbl_Produtos(
id int identity(1,1) primary key,
nome varchar(50),
preço decimal(5,2),
estoque int)
-----------------------------------------------------------------------------

/*exercicio 6*/
insert Tbl_Produtos
values('Camiseta', '29.99', '100')
-----------------------------------------------------------------------------

/*exercicio 7*/
insert Tbl_Produtos
values('calça','30.00', '101'),
('tenis', '27.00', '59'),
('bone', '19.99', '36'),
('short', '23.00', '98'),
('meias', '19.99', '67'),
('oculos', '43.00', '76'),
('cinto', '19.99', '54'),
('cueca', '19.99', '76'),
('camisa social', '79.99', '27'),
('fantasia', '99.99', '80')
---------------------------------------------------------------------------------

/*exercicio 8*/
update Tbl_Produtos
set preço = '39.99'
where id = '1'
-----------------------------------------------------------------------------------

/*exercicio 9*/
create table Tbl_pedidos(
id int identity (1,1) primary key,
clienteld int,
produtold int,
quantidade int,
datapedido date,
constraint f_cliente foreign key (clienteld) references tbl_Clientes(id),
constraint f_produto foreign key (produtold) references tbl_Produtos(id))
-------------------------------------------------------------------------------------

/*exercicio 10*/
insert Tbl_pedidos
values('1', '1', '2', '10/09/2024')
-------------------------------------------------------------------------------------

/*exercicio 11*/
update Tbl_pedidos
set quantidade ='3'
where id = '1'
--------------------------------------------------------------------------------------

/*exercicio 12*/
insert Tbl_pedidos
values('2', '1', '2', '25/07/2024'),
('5', '2', '9', '25/06/2024'),
('1', '4', '6', '21/06/2024'),
('8', '3', '7', '19/05/2024'),
('2', '11', '5', '02/05/2024'),
('10', '6', '1', '11/09/2001'),
('4', '8', '3', '25/03/2024'),
('7', '9', '2', '27/03/2024'),
('11', '1', '10', '25/02/2024'),
('6', '5', '8', '28/01/2024')
------------------------------------------------------------------------------------

/*exercicio 13*/
create table Tbl_Funcionarios(
id int identity (1,1) primary key,
nome varchar(50),
cargo varchar(50),
salario decimal (6,2))
--------------------------------------------------------------------------------------

/*exercicio 14*/
insert Tbl_Funcionarios
values('maria santos', 'Gerente', '5000.00')
---------------------------------------------------------------------------------------

/*exercicio 15*/
update Tbl_Funcionarios
set salario = '6000.00'
where id = '1'
----------------------------------------------------------------------------------------

/*exercicio 16*/
insert Tbl_Funcionarios
values ('Neymar Jr.', 'Subgerente', '5000.00'),
('Cristiano Ronaldo', 'Analista', '4000.00'),
('Marta Vieira', 'Coordenadora', '4500.00'),
('Lionel Messi', 'Diretor', '7000.00'),
('Paul Pogba', 'Assistente', '3000.00'),
('Kylian Mbappé', 'Desenvolvedor', '4500.00'),
('Sergio Ramos', 'Consultor', '4900.00'),
('Kevin De Bruyne', 'Supervisor', '4800.00'),
('Gareth Bale', 'Analista', '4200.00'),
('Robert Lewandowski', 'Gerente', '5700.00')
----------------------------------------------------------------------------------------

/*exercicio 17*/
create table tbl_vendas(
id int identity (1,1) primary key,
ProdutoId int,
quantidade int,
valor_total decimal (6,2),
data_vendas date,
constraint p_produtos foreign key (ProdutoId) references tbl_produtos(id))
--------------------------------------------------------------------------------------------

/*exercicio 18*/
insert tbl_vendas
values('1', '2', '79.98', '10/09/2024')
--------------------------------------------------------------------------------------------

/*exercicio 19*/
insert tbl_vendas
values('1', '2', '79.98', '10/09/2024'),
('3', '4', '89.99', '12/09/2024'),
('5', '6', '99.50', '21/08/2024'),
('7', '8', '120.75', '10/08/2024'),
('2', '9', '67.25', '28/07/2024'),
('4', '11', '85.00', '11/07/2024'),
('6', '3', '92.10', '10/07/2024'),
('8', '1', '73.85', '10/07/2024'),
('9', '7', '110.40', '30/06/2024'),
('11', '5', '105.60', '21/06/2024')
---------------------------------------------------------------------------------------------

/*exercicio 20*/
delete from tbl_vendas
where id ='1'
----------------------------------------------------------------------------------------------
select *from tbl_vendas

select * from Tbl_Funcionarios

select * from Tbl_pedidos

select * from Tbl_Clientes

select * from Tbl_Produtos

use [exercicio 2]