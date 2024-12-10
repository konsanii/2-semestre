--CRIAÇÃO DAS TABELAS

CREATE TABLE CLIENTES
(
	COD_CLIENTE NUMERIC(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
	RG VARCHAR(9) NOT NULL,
	NOME VARCHAR(50) NOT NULL,
	ENDERECO VARCHAR(50) NULL,
	BAIRRO VARCHAR(30) NULL,
	CIDADE VARCHAR(30) NULL, 
	ESTADO CHAR(2) NOT NULL,
	TELEFONE VARCHAR(15) NULL,
	EMAIL VARCHAR(30) NULL,
	DATANASCIMENTO DATETIME NULL,
	sexo char(1)
)

CREATE TABLE CATEGORIA
(
	COD_CATEGORIA NUMERIC(10,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
	NOME_CATEGORIA VARCHAR(20) NOT NULL,
)

CREATE TABLE FILME
(
	COD_FILME NUMERIC(18,0) IDENTITY(1,1) PRIMARY KEY NOT NULL,
	FILME VARCHAR(30) NOT NULL,
	COD_CATEGORIA NUMERIC(10,0) NOT NULL,
	DIRETOR VARCHAR(50) NOT NULL,
	VALOR_LOCACAO FLOAT NOT NULL,
	RESERVADA CHAR(1) NOT NULL
)

CREATE TABLE LOCACOES
(
	COD_LOCACAO NUMERIC(18,0) IDENTITY(1,1) NOT NULL,
	COD_CLIENTE NUMERIC(18,0) NOT NULL,
	COD_FILME NUMERIC(18,0) NOT NULL,
	DATA_RETIRADA DATETIME NOT NULL,
	DATA_DEVOLUCAO DATETIME NULL,
	CONSTRAINT PK_LOCACAO_CLIENTE PRIMARY KEY(COD_LOCACAO, COD_CLIENTE, COD_FILME)
)
-------------------------------------------------criação-------------------------------------------


--CRIAÇÃO DOS RELACIONAMENTOS 
--LOCACAO - CLIENTES
ALTER TABLE LOCACOES WITH CHECK ADD CONSTRAINT FK_LOCACOES_CLIENTE FOREIGN KEY (COD_CLIENTE)
REFERENCES CLIENTES(COD_CLIENTE)


ALTER TABLE LOCACOES CHECK CONSTRAINT FK_LOCACOES_CLIENTE 



-- LOCACOES - FILME
ALTER TABLE LOCACOES WITH CHECK ADD CONSTRAINT FK_LOCACOES_FILME FOREIGN KEY (COD_FILME)
REFERENCES FILME(COD_FILME)


ALTER TABLE LOCACOES CHECK CONSTRAINT FK_LOCACOES_FILME 


--FILME - CATEGORIA
ALTER TABLE FILME WITH CHECK ADD CONSTRAINT FK_CATEGORIA_FILME FOREIGN KEY (COD_CATEGORIA)
REFERENCES CATEGORIA(COD_CATEGORIA)


ALTER TABLE FILME CHECK CONSTRAINT FK_CATEGORIA_FILME


-- INSERÇÕES NAS TABELAS
--categoria
INSERT INTO CATEGORIA VALUES ('Ação')
INSERT INTO CATEGORIA VALUES ('Romance')
INSERT INTO CATEGORIA VALUES ('Aventura')
INSERT INTO CATEGORIA VALUES ('Ficção')
INSERT INTO CATEGORIA VALUES ('Drama')
INSERT INTO CATEGORIA VALUES ('Terror')
INSERT INTO CATEGORIA VALUES ('Desenho')
INSERT INTO CATEGORIA VALUES ('Policial')
INSERT INTO CATEGORIA VALUES ('Comédia')

--clientes
INSERT INTO CLIENTES VALUES ('321346530', 'Edson Martin Feitosa', 'Rua Orlando Alvarenga, 1', 'Jd. Vera Cruz', 'Sorocaba', 'SP', '32125809', 'edson.feitosa@ig.com.br', '1982-11-02 00:00:00.000', 'M')
INSERT INTO CLIENTES VALUES ('421346111', 'Rafael Fernando de Moraes Moreno', 'Rua Francisco de Souza, 123', 'Jd. Nova Esperança', 'São Roque', 'SP', '32274567', 'rafael@terra.com.br', '1985-04-01 00:00:00.000', 'M')
INSERT INTO CLIENTES VALUES ('324857670', 'João da Silva', 'Rua Mario Quintana, 13', 'Av. Bartolomeu', 'Sorocaba', 'SP', '32134098', 'joao@uol.com.br', '1992-12-05 00:00:00.000', 'M')
INSERT INTO CLIENTES VALUES ('112345553', 'Maria Chiquinha', 'Rua Padre Luiz, 55', 'Jd. Vera Cruz', 'Sorocaba', 'SP', '23336684', 'maria@ig.com.br', '1982-10-11 00:00:00.000', 'F')
INSERT INTO CLIENTES VALUES ('945848768', 'Rafael Nunes Sales', 'Rua Orlando Alvarenga, 4', 'Jd. Vera Cruz', 'Sorocaba', 'SP', '32124609', 'rafael.sales@terra.com.br', '1985-04-01 00:00:00.000', 'M')
INSERT INTO CLIENTES VALUES ('676548499', 'Daniela Martin Feitosa', 'Rua Guilherme Oliveria, 1', 'Jd. Vera das Acássicas', 'Votorantim', 'SP', '32132109', 'daniela.martin@gmail.com', '1986-12-10 00:00:00.000', 'F')
INSERT INTO CLIENTES VALUES ('321349999', 'Renata Cristina', 'Rua Orlando Alvarenga, 1', 'Jd. Vera Cruz', 'Sorocaba', 'SP', '32125809', 'renata@gmail', '1970-09-01 00:00:00.000', 'F')
INSERT INTO CLIENTES VALUES ('335466531', 'Joaquim Ferreira de Souza Junior', 'Rua Outubro Vermelho, 65', 'Jd. Santa Rosália', 'Votorantim', 'SP', '11125809', 'joaquim_junior@ig.com.br', '1980-04-08 00:00:00.000', 'M')
INSERT INTO CLIENTES VALUES ('112233445', 'Ladislau Ferreira', 'Rua Orlando Alvarenga, 12345', 'Jd. Vera Cruz', 'Sorocaba', 'SP', '32144409', 'ladislau@terra.com.br', '1988-01-03 00:00:00.000', 'M')
INSERT INTO CLIENTES VALUES ('222222222', 'Vanessa Oliveira', 'Rua das Flores, 1', 'Jd. do Sol', 'Votorantim', 'SP', '32122222', 'vanessa@ig.com.br', '1998-08-08 00:00:00.000', 'F')

--filmes
INSERT INTO FILME VALUES ('300', 1, 'Richard Donner', 3.5, 'n')
INSERT INTO FILME VALUES ('Máquina Mortífera', 1, 'Richard Donner', 3.6, 'n')
INSERT INTO FILME VALUES ('A Mexicana', 2, 'Burr Steers', 2, 's')
INSERT INTO FILME VALUES ('A Verdade Nua e Crua', 2, 'Robert Luketic', 4, 'n')
INSERT INTO FILME VALUES ('A vida é bela', 2, 'Roberto Benigni', 3.5, 's')
INSERT INTO FILME VALUES ('Austrália', 3, 'Baz Luhrmann', 4, 's')
INSERT INTO FILME VALUES ('Ultimato Bourn', 3, 'Paul Greengrass', 3.5, 'n')
INSERT INTO FILME VALUES ('Constantine', 4, 'Francis Lawrence', 2.5, 's')
INSERT INTO FILME VALUES ('Os Irmãos Grimm', 4, 'Terry Gilliam', 3.5, 'n')
INSERT INTO FILME VALUES ('Os Doze Macacos', 4, 'Terry Gilliam', 2.5, 'n')
INSERT INTO FILME VALUES ('Amadeus', 5, 'Milos Forman', 10, 'n')
INSERT INTO FILME VALUES ('As Torres Gêmeas', 5, 'Oliver Stone', 2.5, 's')
INSERT INTO FILME VALUES ('Platoon', 1, 'Oliver Stone', 5.5, 's')
INSERT INTO FILME VALUES ('O Advogado do Diabo', 6, 'Taylor Hackford', 1.5, 's')
INSERT INTO FILME VALUES ('Beowulf', 7, 'Robert Zemeckis', 1, 'n')
INSERT INTO FILME VALUES ('Bolt o super cão', 7, 'Byron Howard', 1.5, 's')
INSERT INTO FILME VALUES ('Apertem o cinto o piloto sumiu', 9, 'Jim Abrahams', 3.6, 's')
INSERT INTO FILME VALUES ('Doze é demais', 9, 'Shawn Levy', 9.2, 's')
INSERT INTO FILME VALUES ('Uma noite no museu', 9, 'Shawn Levy', 2.5, 'n')

select * from filme
--Locações
INSERT INTO LOCACOES VALUES (1,1, '2010-03-10 19:05:43.887', '2010-03-10 00:00:00.000')
INSERT INTO LOCACOES VALUES (1,6, '2010-03-10 19:05:43.887', '2010-03-03 00:00:00.000')
INSERT INTO LOCACOES VALUES (1,8, '2010-03-10 19:05:43.887', '2010-03-03 00:00:00.000')
INSERT INTO LOCACOES VALUES (1,2, '2010-03-12 00:00:00.000', '2010-03-07 00:00:00.000')
INSERT INTO LOCACOES VALUES (1,13, '2010-03-12 00:00:00.000', '2010-03-07 00:00:00.000')
INSERT INTO LOCACOES VALUES (2,5, '2010-03-10 19:05:43.887', '2010-03-01 00:00:00.000')
INSERT INTO LOCACOES VALUES (3,3, '2010-03-08 19:05:43.887', '2010-03-10 00:00:00.000')
INSERT INTO LOCACOES VALUES (3,19, '2010-03-08 19:05:43.887', '2010-03-10 00:00:00.000')
INSERT INTO LOCACOES VALUES (4,17, '2010-03-01 19:05:43.887', '2010-03-03 00:00:00.000')
INSERT INTO LOCACOES VALUES (5,5, '2010-03-03 19:05:43.887', '2010-03-05 00:00:00.000')
INSERT INTO LOCACOES VALUES (6,7, '2010-03-03 19:05:43.887', '2010-03-04 00:00:00.000')
INSERT INTO LOCACOES VALUES (6,9, '2010-03-03 19:05:43.887', '2010-03-04 00:00:00.000')
INSERT INTO LOCACOES VALUES (7,16, '2010-03-03 19:05:43.887', '2010-03-05 00:00:00.000')
INSERT INTO LOCACOES VALUES (7,1, '2010-03-03 19:05:43.887', '2010-03-05 00:00:00.000')
INSERT INTO LOCACOES VALUES (7,5, '2010-03-04 19:05:43.887', '2010-03-06 00:00:00.000')
INSERT INTO LOCACOES VALUES (7,8, '2010-03-04 19:05:43.887', '2010-03-06 00:00:00.000')
INSERT INTO LOCACOES VALUES (7,11, '2010-03-04 19:05:43.887', '2010-03-06 00:00:00.000')
INSERT INTO LOCACOES VALUES (7,12, '2010-03-05 19:05:43.887', '2010-03-07 00:00:00.000')
INSERT INTO LOCACOES VALUES (8,9, '2010-03-10 19:05:43.887', '2010-03-01 00:00:00.000')
INSERT INTO LOCACOES VALUES (9,3, '2010-03-11 19:05:43.887', '2010-03-02 00:00:00.000')
INSERT INTO LOCACOES VALUES (9,6, '2010-03-11 19:05:43.887', '2010-03-02 00:00:00.000')
INSERT INTO LOCACOES VALUES (10,10, '2010-02-10 19:05:43.887', '2010-02-01 00:00:00.000')

---------------------------------------------------------------------------------------------------------

------------------------------------------atividades-------------------------------------------------------

------------------------atividade 1------------------------------------------------------

select COD_CLIENTE, Nome  
from CLIENTES  

---------------------------atividade 2---------------------------------------------------

select FILME, cod_filme
from FILME

---------------------------------atividade 3-----------------------------------------------
select cod_categoria,NOME_CATEGORIA
from CATEGORIA

--------------------------------atividade 4-----------------------------------------------
select NOME
from CLIENTES
where sexo = 'm' and CIDADE = 'sorocaba'

---------------------------------atividade 5----------------------------------------------
select nome, telefone
from CLIENTES
order by nome asc

--------------------------------atividade 6-----------------------------------------------

select count(*) as qtde_f
from CLIENTES
where sexo = 'f'
--------------------------------atividade 7-----------------------------------------------
select cod_categoria,NOME_CATEGORIA
from CATEGORIA
order by NOME_CATEGORIA asc

-------------------------------atividade 8------------------------------------------------
select filme
from FILME
where DIRETOR = 'Shawn Levy' and RESERVADA = 'n'

--------------------------------atividade 9 ---------------------------------------------
select FILME
from FILME
where VALOR_LOCACAO > 5 and RESERVADA = 's'
--------------------------------atividade 10 --------------------------------------------

select distinct DIRETOR
from FILME

--------------------------------atividade 11 --------------------------------------------
select count (*) qtde
from FILME
where RESERVADA ='s'
--------------------------------atividade 12 -------------------------------------------
select MAX (VALOR_LOCACAO) 
from filme
------------------------------- atividade 13 ------------------------------------------
select * from FILME f
inner join CATEGORIA c on 
f.COD_CATEGORIA = c.COD_CATEGORIA
where c.NOME_CATEGORIA = 'ação'
-------------------------------atividade 14--------------------------------------------
Select F.* from Filme F JOIN CATEGORIA C ON F.COD_CATEGORIA = C.COD_CATEGORIA
Where C.NOME_CATEGORIA in ('Romance','Aventura')
and F.RESERVADA = 'S' and F.VALOR_LOCACAO < 5.00

-----------------------------atividade 15 ---------------------------------------------
Select FILME FROM FILME F JOIN LOCACOES L ON F.COD_FILME = L.COD_FILME
WHERE L.COD_CLIENTE = 7

-----------------------------atividade 16 --------------------------------------------
SELECT C.NOME, COUNT(L.COD_CLIENTE) AS NUM_ALUGUEIS
FROM LOCACOES L
JOIN CLIENTES C ON L.COD_CLIENTE = C.COD_CLIENTE
GROUP BY C.NOME
HAVING COUNT(L.COD_CLIENTE) > 3;

---------------------------atividade 17 ---------------------------------------------

Select SUM (F.VALOR_LOCACAO) AS Valor_Gasto From LOCACOES L
JOIN FILME F ON L.COD_FILME = F.COD_FILME
JOIN CLIENTES C ON L.COD_CLIENTE = C.COD_CLIENTE
Where C.NOME = 'Renata Cristina'

-------------------------atividade 18 ----------------------------------------------
SELECT AVG (F.VALOR_LOCACAO) AS MEDIA_DE_LOCACAO FROM FILME F

------------------------atividade 19------------------------------------------------
Select min (F.VALOR_LOCACAO) AS MENOR_VALOR_LOCACAO FROM FILME F

------------------------atividade 20-----------------------------------------------
SELECT C.NOME_CATEGORIA, COUNT(F.COD_FILME) AS QUANTIDADE_FILMES FROM FILME F
JOIN CATEGORIA C ON F.COD_CATEGORIA = C.COD_CATEGORIA GROUP BY C.NOME_CATEGORIA




select * from LOCACOES

use[BDLocadora1 ]