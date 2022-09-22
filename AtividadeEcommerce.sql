CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
produto varchar(50),
cor varchar(20),
modelo varchar(20),
valor decimal
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(produto, cor, modelo, valor)VALUES("Tenis", "Branco e Rosa", "FILA", 300.0);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = "570" WHERE id=2;


