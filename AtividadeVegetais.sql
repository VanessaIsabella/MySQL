CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categoria(
id bigint auto_increment primary key,
secao varchar(25),
bandeija boolean
);

CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
produto varchar(25),
quantidade int,
preco decimal,
categoria_id bigint,

FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

SELECT * FROM tb_categoria;
INSERT INTO tb_categoria (secao) VALUES ("FRUTA");
INSERT INTO tb_categoria (secao) VALUES ("VEGETAL");
INSERT INTO tb_categoria (secao) VALUES ("LEGUMES");

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(produto, quantidade, preco, categoria_id)VALUES("Mamão", 4 , 15.00, 1, false);
INSERT INTO tb_produtos(produto, quantidade, preco, categoria_id)VALUES("Berinjela", 4 , 10.00, 2, false);
INSERT INTO tb_produtos(produto, quantidade, preco, categoria_id)VALUES("Abóbora", 1 , 10.00, 3, false);
INSERT INTO tb_produtos(produto, quantidade, preco, categoria_id)VALUES("Manga", 4 , 17.00, 1, true);
INSERT INTO tb_produtos(produto, quantidade, preco, categoria_id)VALUES("Alface", 2 , 7.00, 2, false);
INSERT INTO tb_produtos(produto, quantidade, preco, categoria_id)VALUES("Cenoura", 7 , 13.00, 3, false);

SELECT * FROM tb_produtos WHERE preco > 10;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 20.00;

SELECT * FROM tb_produtos WHERE produto LIKE "%c%"





