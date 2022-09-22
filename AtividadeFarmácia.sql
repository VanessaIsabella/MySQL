CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categoria(
id bigint auto_increment primary key,
secao varchar (25)
);

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
produto varchar(50),
valor decimal,
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_categoria;
INSERT INTO tb_categoria (secao)VALUES("higiene");
INSERT INTO tb_categoria (secao)VALUES("medicamentos");

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(produto, valor, categoria_id)VALUES("creme dental", 5.00, 1);
INSERT INTO tb_produtos(produto, valor, categoria_id)VALUES("buscopan", 10.00, 2);
INSERT INTO tb_produtos(produto, valor, categoria_id)VALUES("sabonete", 05.00, 1);
INSERT INTO tb_produtos(produto, valor, categoria_id)VALUES("xarope", 30.00, 2);
INSERT INTO tb_produtos(produto, valor, categoria_id)VALUES("kit shampoo e condicionador", 50.00, 1);
INSERT INTO tb_produtos(produto, valor, categoria_id)VALUES("anti alérgico", 100.00, 2);
INSERT INTO tb_produtos(produto, valor, categoria_id)VALUES("dipirona", 100.00, 2);

SELECT * FROM tb_produtos WHERE valor >= 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE produto LIKE "%c%";

DELETE FROM tb_produtos WHERE id=5;
DELETE FROM tb_produtos WHERE id=7;
DELETE FROM tb_produtos WHERE id=8;
DELETE FROM tb_produtos WHERE id=9;

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id; 

SELECT produto, secao FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;

