create database [athenas.dev]

use [athenas.dev]


create table usuario(
ID int identity (1,1) primary key,
Nome varchar (50),
Email varchar (65),
senha varchar (80),
pontuação int,
horas datetime,
foto VARBINARY(MAX));
-------------------------------------games-------------------------------------------------
create table Games(
ID int identity (1,1) primary key,
nome varchar (70));

 
create table game_usuario(
id int identity (1,1) primary key,
id_game int,
id_usuario int,
dias datetime,
constraint game_id foreign key (id_game) references games(id),
constraint usu_id foreign key (id_usuario) references usuario(ID));
----------------------------------challenge-----------------------------------------------------
create table challenge(
id int identity (1,1) primary key,
Nivel int ,
codigos varchar (800));
 
create table challeng_usuario(
id int identity (1,1) primary key,
id_challenge int,
id_usuario int,
dias datetime,
constraint challenge_id foreign key (id_challenge) references challenge(id),
constraint usua_id foreign key (id_usuario) references usuario(ID));
 
 
create table link(
id int identity (1,1) primary key,
link varchar (2000),
id_challenge int,
constraint link_desalink foreign key (id_challenge) references challenge (ID));
 
create table imagens(
id int identity (1,1) primary key,
imagens varbinary (max),
id_challenge int,
constraint ID_challenimag foreign key (id_challenge) references challenge (id));
------------------------------------recursos-----------------------------------------------------------
 
create table recursos(
link varchar(2000) primary key,
videos varchar(10),
nivel int,
tema varchar (),
tamanho varchar (2000));
-------------------------------------------------------------------------------------------------------

insert usuario
values ('Alice Silva', 'alice.silva@email.com', 'senha1234', 150, '2023-11-01 10:15:00', 0x),
('Bruno Oliveira', 'bruno.oliveira@email.com', 'senha5678', 120, '2023-11-02 15:30:00', 0x),
('Carlos Pereira', 'carlos.pereira@email.com', 'senha8765', 200, '2023-11-03 08:45:00', 0x),
('Daniela Souza', 'daniela.souza@email.com', 'senha4321', 180, '2023-11-04 13:20:00', 0x),
('Eduardo Lima', 'eduardo.lima@email.com', 'senha1357', 250, '2023-11-05 09:55:00', 0x),
('Fernanda Costa', 'fernanda.costa@email.com', 'senha2468', 300, '2023-11-06 14:10:00', 0x),
('Gabriel Santos', 'gabriel.santos@email.com', 'senha9753', 90, '2023-11-07 11:00:00', 0x),
('Helena Nunes', 'helena.nunes@email.com', 'senha8642', 170, '2023-11-08 16:25:00', 0x),
('Igor Batista', 'igor.batista@email.com', 'senha1478', 210, '2023-11-09 07:40:00', 0x),
('Juliana Rocha', 'juliana.rocha@email.com', 'senha3691', 130, '2023-11-10 12:35:00', 0x);

insert Games
values ('jogo dos setes erros'),
('PVP');

insert challenge
values ('1', 'html'),
('2', 'html'),
('3', 'html'),
('1', 'java'),
('2', 'java'),
('3', 'java');

insert recursos
values('exemplo.com/video1', 'tutorial', 1, 'HTML', 'Video sobre introdução ao HTML, duração: 10 minutos.'),
('exemplo.com/video2', 'aula', 2, 'CSS', 'Aula intermediária sobre CSS, duração: 20 minutos.'),
('exemplo.com/video3', 'tutorial', 3, 'JS', 'Tutorial avançado de JavaScript, duração: 30 minutos.'),
('exemplo.com/video4', 'aula', 1, 'SQL', 'Video introdutório sobre SQL, duração: 15 minutos.'),
('exemplo.com/video5', 'tutorial', 2, 'PHP', 'Tutorial intermediário de PHP, duração: 25 minutos.'),
('exemplo.com/video6', 'aula', 3, 'Java', 'Aula avançada de Java, duração: 35 minutos.'),
('exemplo.com/video7', 'tutorial', 1, 'Python', 'Introdução a Python, duração: 12 minutos.'),
('exemplo.com/video8', 'aula', 2, 'Angular', 'Aula intermediária sobre Angular, duração: 28 minutos.'),
('exemplo.com/video9', 'tutorial', 3, 'React', 'Tutorial avançado sobre React, duração: 32 minutos.'),
('exemplo.com/video10', 'aula', 1, 'HTML', 'Video de HTML básico, duração: 10 minutos.');


select * from usuario
select * from Games
select * from challenge
select * from recursos


