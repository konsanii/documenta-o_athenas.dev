create database [athenas.dev];

use [athenas.dev];

-- ========================== Usuario ==========================

create table usuario(
    ID int identity (1,1) primary key,
    Nome varchar (50),
    Email varchar (65),
    senha varchar (80),
    pontuacao int,
);

-- ========================== Jogos ==========================
create table jogos(
    ID int identity (1,1) primary key,
    nome varchar (70),
	pontuação int 
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
	  classificação int
);


create table rank_usuario(
    id int identity (1,1) primary key,
    id_usuario int,
    id_ranking int,
    constraint usuario_id foreign key (id_usuario) references jogos(id),
    constraint ranking_id foreign key (id_ranking) references usuario(ID)
);