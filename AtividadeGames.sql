CREATE DATABASE db_generation_games_online;
USE db_geneartion_games_online;

CREATE TABLE tb_personagens(
id bigint auto_increment primary key,
jogador varchar (25),
data_nascimento date,
avatar varchar(25)
);


