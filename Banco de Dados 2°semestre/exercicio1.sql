 /* exercicio 1*/
 create table professores(
 ID int primary key,
 Nome varchar(50),
 diciplina varchar(50));
 -------------------------------------------------
 /*exercicio 2*/
 insert into professores
 values('1','Ana oliveira', 'Portugues')
 -------------------------------------------------

 /*exercicio 3*/
 update professores
 set Nome = 'Ana Silva'
 where Nome = 'Ana oliveira'
 -------------------------------------------------

 /*exercicio 4*/
 insert into professores
 values('2','Greg ponte preta', 'Educação fisica'),
 ('3', 'confuso sobrinho', 'matematica'),
 ('4', 'barack obama', 'geografia'),
 ('5', 'yuri alberto', 'fisica'),
 ('6', 'Faustão', 'medicina'),
 ('7', 'Manuel gomes', 'musica'),
 ('8', 'Jailson Mendes', 'culinaria'),
 ('9', 'Carlinhos', 'biologia'),
 ('10', 'mcdonalds','quimica'),
 ('11', 'vasco da gama','sociologia')

 ---------------------------------------------------

 /*exercicio 5*/
 delete from professores
 where ID = 2
 ----------------------------------------------------

 /*exercicio 6*/
 create table turmas(
 ID int primary key,
 Nome varchar(50),
 Professor_responsavel int ,
 Constraint P_responsavel Foreign Key(Professor_responsavel) References professores(ID));

 -------------------------------------------------------

 /*exercicio 7*/
  insert into turmas
 values('1','9A', '1')
 --------------------------------------------------------

 /*exercicio 8*/
 insert into turmas
 values('2','10B', '3'),
 ('3', '4F', '7'),
 ('4', '1G', '5'),
 ('5', '6E', '9'),
 ('6', '2C', '11'),
 ('7', '11H', '8'),
 ('8', '3D', '1'),
 ('9', '7J', '4'),
 ('10', '5I', '6'),
 ('11', '8K', '11');
 ---------------------------------------------------------

 /*exercicio 9*/
 create table Alunos(
 id int primary key,
 nome varchar(50),
 data_de_nacimento date,
 turmaID int
 constraint T_alunos foreign key (turmaID) references turmas(ID));
 ----------------------------------------------------------

 /*exercicio 10*/
 insert into Alunos
 values('1', 'maria souza', '2005-10-05','1')
 ---------------------------------------------------------

 /*exercicio 11*/
 update Alunos
 set nome ='Maria da silva'
 where nome = 'maria souza'
 -----------------------------------------------------------

 /*exercicio 12*/
 insert into Alunos
 values('2', 'Maria Joaquina Medsen', '2004-05-27', '7'),
 ('3', 'Marcelina Guerra', '2003-09-12', '4'),
 ('4', 'Cirilo Rivera', '2002-11-2', '5'),
 ('5', 'Jaime Palillo', '2000-02-27', '11'),
 ('6', 'Valéria Ferreira', '2005-06-14', '9'),
 ('7', 'Davi Rabinovich', '2004-04-21', '3'),
 ('8', 'Paulo Guerra', '2004-10-21', '6'),
 ('9', 'Laura Gianolli', '2005-08-23', '8'),
 ('10', 'Carmen Carrilho', '2003-09-21', '10'),
 ('11', 'Mário Ayala', '1999-01-30', '1')
 ---------------------------------------------------------

 /*exercicio 13*/
 delete from Alunos
 where ID = '2'
-----------------------------------------------------------
/*exercicio 14*/
create table notas(
ID int primary key,
AlunoID int,
disciplinas varchar(15),
notas decimal(5,2),
constraint I_alunos foreign key (AlunoID) references Alunos(ID));
-------------------------------------------------------------

/*exercicio 15*/
insert notas
values ('1', '1', 'matematica', '8.5')
-------------------------------------------------------------

/*exercicio 16*/
update notas
set notas ='9.0'
where notas = '8.5'
-------------------------------------------------------------

/*exercicio 17*/
insert notas
values('2', '3', 'portugues', '7.5'),
('3','4', 'sociologia', '5.7'),
('4', '3', 'biologia', '8.9'),
('5', '6', 'fisica', '7.8'),
('6', '5', 'culinaria', '4.9'),
('7', '8', 'geografia', '7.4'),
('8', '7', 'medicina', '6.7'),
('9', '10', 'quimica', '7.1'),
('10', '9', 'matematica', '5.2'),
('11', '11', 'sociologia', '1.7')
---------------------------------------------------------------

/*exercicio 18*/

delete from notas
where ID = '1' and disciplinas = 'matematica'
-----------------------------------------------------------------

/*exercicio 19*/
create table matriculas(
ID int primary key,
alunoid int,
TurmaID int,
Data_da_matricula date,
constraint v_alunos foreign key (alunoid) references alunos(id),
constraint m_alunos foreign key (TurmaID) references turmas(id))
----------------------------------------------------------------------

/*exercicio 20*/
insert matriculas
values('1','1', '1', '2002-02-15')
-----------------------------------------------------------------------

/*exercicio 21*/
insert matriculas
values('2', '3', '3', '2005-02-01'),
('3', '5', '6', '2002-02-02'),
('4', '8', '9', '2002-06-03'),
('5', '1', '2', '2003-06-04'),
('6', '4', '5', '2003-02-05'),
('7', '7', '8', '2005-02-06'),
('8', '10', '1', '2004-02-07'),
('9', '3', '4', '2004-06-08'),
('10', '6', '7', '2005-06-09'),
('11', '9', '10', '2001-02-10')
---------------------------------------------------------------
 use exercicio1

 select * from professores

 select * from turmas

 select * from Alunos

 select * from notas

 select * from matriculas