CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment primary key,
descricao varchar (255),
tamanho varchar (255),
borda_recheada boolean
);

CREATE TABLE tb_pizzas(
id bigint auto_increment primary key,
sabor varchar (255),
preco decimal (6,2),
massa varchar (255),
quantidade int,
categoria_id bigint,

FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id) 
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("salgada", "brotinho", true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("salgada", "brotinho", false);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("salgada", "media", true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("salgada", "media", false);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("salgada", "grande", true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("salgada", "grande", false);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("doce", "brotinho", true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("doce", "grande", true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("vegetariana", "brotinho", true);
INSERT INTO tb_categorias(descricao,tamanho, borda_recheada)VALUES("vegana", "brotinho", false);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("frango c/ catupiry", 45.99, tradicional, 5,1);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Frango C/ Catupiry",30.00,"tradicional",5,1);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Mussarela",40.59,"tradicional",5,2);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Prestígio",50.99,"tradicional",2,8);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Lombo C/ Catupiry",60.99,"tradicional",3,6);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Brocolis C/ Catupiry",40,"tradicional",4,9);

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)
VALUES("Calabresa",45.99,"tradicional",5,1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas  WHERE sabor LIKE "%m%";

/*Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.*/
SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;

/*Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.*/
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;


SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;






