/* comando de criação de banco de dados*/
/*db é data base-banco de dados e tb é table-tabela*/

CREATE DATABASE db_escola_generation; 

/*seleciona o banco de dados a ser usado*/
USE db_escola_generation;

/*comando para criação de tabela*/
CREATE TABLE tb_alunes(
id bigint auto_increment primary key, 
nome varchar(55),
data_nascimento date,
turma int,
nota decimal(4,2)
);

/*a partir daqui é manipulação de dados*/

SELECT * FROM tb_alunes;

INSERT INTO tb_alunes(nome,data_nascimento,turma,nota)VALUES("Jonas","1997-02-09",57,5.7);

SELECT * FROM tb_alunes;
SELECT * FROM tb_alunes WHERE nota > 7;
SELECT * FROM tb_alunes WHERE nota < 7;

UPDATE tb_alunes SET nota = 7 WHERE id=5;

/*SET SQL_SAFE_UPDATES = 0;*/







