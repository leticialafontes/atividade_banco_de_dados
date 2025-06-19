USE db_farmacia_bem_estar;

CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    datavalidade DATE,
    preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produto (nome, marca, datavalidade, preco) VALUES
("Dipirona Sódica 500mg", "Neo Química", "2026-05-15", 7.90),
("Vitamina C 500mg Efervescente", "Cimed", "2027-08-10", 19.90),
("Paracetamol 750mg", "Medley", "2026-03-20", 9.50),
("Álcool 70% 500ml", "Asseptgel", "2028-01-05", 5.90),
("Protetor Solar FPS 60 Sundown", "Johnson & Johnson", "2027-11-25", 54.90),
("Esparadrapo Impermeável 5m", "Cremer", "2030-12-31", 12.50),
("Shampoo Anticaspa Clear 200ml", "Unilever", "2027-09-18", 18.90),
("Vitamina D3 2000UI", "Sundown Naturals", "2028-06-12", 24.90);

CREATE TABLE tb_categorias(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	categoria VARCHAR(255) NOT NULL
);

INSERT INTO tb_categorias (categoria) VALUES
("Medicamentos"),
("Vitaminas e Suplementos"),
("Higiene e Antissépticos"),
("Cuidados com a Pele"),
("Primeiros Socorros"),
("Higiene Pessoal");

ALTER TABLE tb_produto ADD COLUMN categoriaid BIGINT;

ALTER TABLE tb_produto ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_produto;

UPDATE tb_produto SET categoriaid = 1 WHERE id = 1;
UPDATE tb_produto SET categoriaid = 2 WHERE id = 2;
UPDATE tb_produto SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produto SET categoriaid = 3 WHERE id = 4;
UPDATE tb_produto SET categoriaid = 4 WHERE id = 5;
UPDATE tb_produto SET categoriaid = 5 WHERE id = 6;
UPDATE tb_produto SET categoriaid = 6 WHERE id = 7;
UPDATE tb_produto SET categoriaid = 2 WHERE id = 8;

SELECT * FROM tb_produto;

SELECT * FROM tb_produto ORDER BY nome ASC;

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT nome, marca, datavalidade, preco, tb_categorias.categoria
FROM tb_produto INNER JOIN tb_categorias 
ON tb_produto.categoriaid = tb_categorias.id;

SELECT nome, marca, datavalidade, preco, tb_categorias.categoria
FROM tb_produto INNER JOIN tb_categorias 
ON tb_produto.categoriaid = tb_categorias.id
WHERE tb_categorias.categoria = "Vitaminas e Suplementos";
