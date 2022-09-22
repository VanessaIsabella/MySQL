CREATE DATABASE db_empresa_rh;
USE db_empresa_rh;

CREATE TABLE tb_funcionarios(
id bigint auto_increment primary key,
nome varchar (55),
data_nascimento date,
setor varchar (25),
salario decimal
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, data_nascimento, setor, salario)VALUES("João Ramalho", "2000-09-13", "assistente comercial", 1300.00);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET setor = "comercial" WHERE id=5;

UPDATE tb_funcionarios SET salario = "2700" WHERE id=5;






