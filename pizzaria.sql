CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    ingredientes TEXT,
    tamanho VARCHAR(50),
    categoria_id BIGINT,
    PRIMARY KEY (id)
);

INSERT INTO tb_pizzas (nome, preco, ingredientes, tamanho, categoria_id) VALUES
('Margherita', 39.90, 'Molho de tomate, mussarela, manjericão', 'Média', 1),
('Calabresa', 42.50, 'Molho de tomate, calabresa, cebola, mussarela', 'Grande', 1),
('Frango com Catupiry', 47.00, 'Frango desfiado, catupiry, mussarela', 'Grande', 2),
('Portuguesa', 45.90, 'Presunto, ovo, ervilha, cebola, mussarela', 'Grande', 1),
('Quatro Queijos', 49.90, 'Mussarela, gorgonzola, parmesão, catupiry', 'Grande', 2),
('Vegetariana', 44.00, 'Brócolis, milho, palmito, tomate, mussarela', 'Média', 3),
('Chocolate com Morango', 39.00, 'Chocolate ao leite, morango', 'Média', 4),
('Pesto Premium', 59.90, 'Molho pesto, tomate seco, mussarela de búfala', 'Grande', 5);

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas clássicas com sabores tradicionais'),
('Especial', 'Sabores únicos e ingredientes especiais'),
('Vegetariana', 'Sem carnes, com legumes e vegetais frescos'),
('Doce', 'Pizzas com coberturas doces e frutas'),
('Premium', 'Ingredientes nobres e combinações gourmet');

SELECT * FROM tb_pizzas;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id);

SELECT * FROM tb_categorias;

UPDATE tb_pizzas SET categoria_id = 1 WHERE id = 1;
UPDATE tb_pizzas SET categoria_id = 1 WHERE id = 2;
UPDATE tb_pizzas SET categoria_id = 2 WHERE id = 3;
UPDATE tb_pizzas SET categoria_id = 1 WHERE id = 4;
UPDATE tb_pizzas SET categoria_id = 2 WHERE id = 5;
UPDATE tb_pizzas SET categoria_id = 3 WHERE id = 6;
UPDATE tb_pizzas SET categoria_id = 4 WHERE id = 7;
UPDATE tb_pizzas SET categoria_id = 5 WHERE id = 8;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT tb_pizzas.nome, preco, ingredientes, tamanho, tb_categorias.nome, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT tb_pizzas.nome, preco, ingredientes, tamanho, tb_categorias.nome, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = "Doce";

