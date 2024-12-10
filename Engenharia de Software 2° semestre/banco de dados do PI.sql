create table usuario(
ID int identity (1,1) primary key,
Email varchar (65),
senha varchar (80),
Nome varchar (50),
pontuação int,
foto VARBINARY(MAX))

create table Games(
ID int identity (1,1) primary key,
nome varchar (70),
constraint ID_usugames foreign key (ID) references usuario(ID));

create table challenge(
id int identity (1,1) primary key,
Nivel int ,
codigos varchar (800),
constraint ID_usudesafios foreign key (id) references usuario(ID));

create table link(
id int identity (1,1) primary key,
link varchar (2000),
id_desafio int
constraint link_desalink foreign key (id_desafio) references challenge (ID));

create table imagens(
id int identity (1,1) primary key,
imagens varbinary (max),
id_desafio int,
constraint ID_desaimag foreign key (id_desafio) references challenge (id));

create table codigos(
id int identity (1,1) primary key,
codigos int,
constraint ID_desacod foreign key (codigos) references challenge (id));



create table tutoriais(
id int identity (1,1) primary key,
videos varchar(100),
nivel int ,
artigos varchar(100),
tema varchar (3));

create table dowloands(
id int identity (1,1) primary key,
tipo varchar (3),
link varchar (2000))




use [Banco do PI]


