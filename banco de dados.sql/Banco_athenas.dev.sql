create database [athenas.dev];

use [athenas.dev];

-- ========================== Usuario ==========================

create table usuario(
    ID int identity (1,1) primary key,
    Nome varchar (50),
    Email varchar (65),
    senha varchar (80),
    pontuacao int,
    criação datetime,
);

-- ========================== Jogos ==========================
create table jogos(
    ID int identity (1,1) primary key,
    nome varchar (70),
	link varchar(200)
);

create table Jogos_usuario(
    id int identity (1,1) primary key,
    id_jogos int,
    id_usuario int,
    horas datetime,
	pontuação int,
    constraint jogos_id foreign key (id_jogos) references jogos(id),
    constraint usu_id foreign key (id_usuario) references usuario(ID)
);

--===========================ranking ===========================
create table ranking(
      Id int identity (1,1) primary key,
	  pontuação int,
	  classificação int,
	  nome varchar (70),
);


create table rank_usuario(
    id int identity (1,1) primary key,
    id_usuario int,
    id_ranking int,
    constraint usuario_id foreign key (id_usuario) references jogos(id),
    constraint ranking_id foreign key (id_ranking) references usuario(ID)
);
--==========================contato==================================
create table contato(
        Id int identity (1,1) primary key,
		mensagem varchar (1000),
		nome varchar (70),
		email varchar(65),
		titulo varchar (40),
);
--==========================feedback==================================
create table feedback(
           id int identity (1,1) primary key,
		   titulo varchar (40),
		   email varchar (65),
		   mensagem varchar(1000),
		   satisfação varchar (3),
);