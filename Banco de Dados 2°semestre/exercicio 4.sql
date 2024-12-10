
CREATE DATABASE EXERCICIO_4
-- 1) Crie a tabela Setor, de acordo com a estrutura abaixo:

CREATE TABLE SETOR(
COD_SETOR INT IDENTITY(1,1) PRIMARY KEY,
NOME_SETOR VARCHAR(30))

-- 2) Crie a tabela Funcionario, de acordo com a estrutura abaixo:
	-- 3) Crie as chaves primárias e estrangeiras das tabelas. 

CREATE TABLE FUNCIONARIO(
NRMATRICULA INT IDENTITY(1,1) PRIMARY KEY,
PRIMEIRO_NOME VARCHAR(20),
ULTIMO_NOME VARCHAR(50),
EMAIL VARCHAR(200),
TELEFONE VARCHAR(20),
DATA_ADMISSAO DATETIME,
SALARIO FLOAT,
COD_SETOR1 INT
CONSTRAINT FK_SETOR FOREIGN KEY (COD_SETOR1) REFERENCES SETOR(COD_SETOR))



-- 4) Faça 5 comandos inserts para inserir dados na tabela setor 

	INSERT INTO SETOR
	VALUES
	('TI'),
	('PRODUCAO'),
	('ADMNISTRACAO'),
	('VENDAS'),
	('ENGENHARIA')

-- 5) Faça 5 comandos inserts para inserir dados na tabela funcionario 

	INSERT INTO FUNCIONARIO
	VALUES
	('Ana', 'Oliveira', 'ANA.OLIVEIRA@GMAIL.COM', '4002-3456', '15-03-1990', 3500, 1),
	('Carlos', 'Pereira', 'CARLOS.PEREIRA@GMAIL.COM', '5002-4567', '22-07-1985', 4000, 3),
	('Beatriz', 'Santos', 'BEATRIZ.SANTOS@GMAIL.COM', '6002-5678', '10-12-1992', 3200, 5),
	('Felipe', 'Costa', 'FELIPE.COSTA@GMAIL.COM', '7002-6789', '30-11-1988', 2800, 4),
	('Juliana', 'Lima', 'JULIANA.LIMA@GMAIL.COM', '8002-7890', '05-01-1995', 3600, 1)

-- 6) Desenvolva as seguintes consultas:

	-- a. Exiba os códigos de setores exclusivos da tabela funcionário (não repetir o código do setor)

	SELECT DISTINCT COD_SETOR1
	FROM FUNCIONARIO

	-- b. Exiba o sobrenome concatenado com o código do setor, separado por vírgula e espaço, e nomeie a coluna como Empregado e Setor

	SELECT ULTIMO_NOME+', '+CONVERT(VARCHAR,COD_SETOR1) EMPREGADO_E_SETOR
	FROM FUNCIONARIO


-- 7-Exibir o nome, sobrenome e o salário dos funcionários que recebem mais de 2500,00. 

	SELECT PRIMEIRO_NOME, ULTIMO_NOME, SALARIO
	FROM FUNCIONARIO
	WHERE SALARIO >2500
 
-- 8-Exibir o nome, sobrenome e código do departamento para o número de matrícula=5 
	
	SELECT PRIMEIRO_NOME, ULTIMO_NOME, COD_SETOR1
	FROM FUNCIONARIO
	WHERE NRMATRICULA = 5
 
-- 9-Exibir o nome, sobrenome e o salário dos funcionários cujo salário não esteja na faixa de 1500,00 a 3000,00 

	SELECT PRIMEIRO_NOME, ULTIMO_NOME, SALARIO
	FROM FUNCIONARIO
	WHERE SALARIO NOT BETWEEN 1500 AND 3000
 
-- 10-Exibir o nome, sobrenome, código do setor e data de admissão dos funcionários admitidos desde de 2009. Ordene pela data de admissão. 

	SELECT PRIMEIRO_NOME, ULTIMO_NOME, COD_SETOR1, DATA_ADMISSAO
	FROM FUNCIONARIO
	WHERE DATA_ADMISSAO > '01-01-2009'
 
-- 11-Exibir os funcionários que pertençam ao departamento de TI e RH por ordem numérica. 

SELECT f.PRIMEIRO_NOME AS FUNCIONARIO, s.NOME_SETOR
FROM FUNCIONARIO f
JOIN SETOR s ON f.COD_SETOR1 = s.COD_SETOR
WHERE s.NOME_SETOR IN ('TI', 'rh')
ORDER BY  f.COD_SETOR1 ASC;


-- 12-Exiba os nomes dos funcionários que tenham um "a" como a segunda letra do nome. 

	SELECT PRIMEIRO_NOME
	FROM FUNCIONARIO
	WHERE PRIMEIRO_NOME LIKE '_A%'

-- 13-Exiba os nomes dos funcionários que tenham uma letra "a" e uma letra "e" no nome 

	SELECT PRIMEIRO_NOME
	FROM FUNCIONARIO
	WHERE PRIMEIRO_NOME LIKE '%A%E%'

-- 14-Exibir os dados dos funcionários, que pertençam ao setor 2 por ordem de nome

	SELECT PRIMEIRO_NOME, ULTIMO_NOME, EMAIL, TELEFONE, DATA_ADMISSAO, SALARIO
	FROM FUNCIONARIO
	WHERE COD_SETOR1 = 2
	ORDER BY PRIMEIRO_NOME

-- 15-Exibir os funcionários que pertençam aos departamentos 2 e 5

	SELECT PRIMEIRO_NOME, ULTIMO_NOME, EMAIL, TELEFONE, DATA_ADMISSAO, SALARIO
	FROM FUNCIONARIO
	WHERE COD_SETOR1 IN (2,5)

-- 16-Exibir os funcionários que tenham salário maior que 2300 e pertençam ao setor 3

	SELECT PRIMEIRO_NOME, ULTIMO_NOME, EMAIL, TELEFONE, DATA_ADMISSAO, SALARIO
	FROM FUNCIONARIO
	WHERE SALARIO>2300 AND COD_SETOR1 = 3

	USE [exercicio 4];

	select * from FUNCIONARIO

	select* from SETOR
	drop table FUNCIONARIO
--------------------------------------teste em aula do dia 01/10/24--------------------------------------------


	select f.primeiro_nome,f.salario,s.nome_setor
	from funcionario f, SETOR s
	where f.cod_setor1 = s.cod_setor

	select f.primeiro_nome, f.salario, s.nome_setor
	from funcionario f
	inner join SETOR s on f.cod_setor1= s.COD_SETOR

	select f.primeiro_nome, f.salario, s.nome_setor
	from funcionario f
	right outer join setor s on f.cod_setor1 = s.cod_setor

	insert into SETOR (NOME_SETOR)
	values ('Marketing')

	select f.primeiro_nome, f.salario, s.nome_setor
	from funcionario f
	right outer join setor s on f.cod_setor1 = s.COD_SETOR

	select f.primeiro_nome, f.salario, s.nome_setor
	from funcionario f
	right outer join setor s on f.cod_setor1 = s.cod_setor
	where f.cod_setor1 is null

	select f.primeiro_nome, f.salario, s.nome_setor
	from funcionario f
	full outer join setor s on f.cod_setor1 = s.cod_setor
	
	select f.primeiro_nome, f.salario, s.nome_setor
	from funcionario f
	full outer join setor s on f.cod_setor1 = s.cod_setor
	where f.cod_setor1 is null or s.cod_setor is null

	select f.primeiro_nome, f.salario, s.nome_setor
	from funcionario f
	cross join setor s
	order by f.primeiro_nome