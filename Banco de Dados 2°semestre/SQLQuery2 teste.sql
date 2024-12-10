create table usuario(
ID int identity (1,1) primary key,
Email varchar (65),
senha varchar (80),
Nome varchar (50),
pontuação int,
dias datetime,
foto VARBINARY(MAX));
-------------------------------------games-------------------------------------------------
create table Games(
ID int identity (1,1) primary key,
nome varchar (70),
constraint usu_games foreign key (ID) references usuario(ID));

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
------------------------------------tutoriais-----------------------------------------------------------

create table tutoriais(
link int primary key,
videos varchar(10),
nivel int,
tema varchar (5),
download varchar(80));
-------------------------------------------------------------------------------------------------------

use [teste]