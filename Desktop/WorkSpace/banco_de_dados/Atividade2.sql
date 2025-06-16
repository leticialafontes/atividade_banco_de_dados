CREATE DATABASE db_quitandinha;

USE db_quitandnha;

CREATE TABLE tb_produtos_cavalos(
id BIGINT AUTO_INCREMENT,
    raca VARCHAR(255) NOT NULL,
    quantidade INT,
    idade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY(id)
);
INSERT INTO tb_produtos_cavalos(raca, quantidade, idade, preco) VALUES
("Brasileiro de Hispismo", 10, "2024-10-25", 1000.00),
("Puro sangue ingles", 5, "2024-02-28", 1500.00),
("Manga larga", 50, "2024-06-15", 7500.00),
("Arabe", 3, "2023-08-27", 1700.00),
("SRD", 100, "2023-08-27", 450.00);

INSERT INTO tb_produtos_cavalos(raca, quantidade, idade, preco) VALUES
("Quarto de milha", 100, "2023-12-23", 800.00),
("Ponei", 300, "2024-07-25", 350.00),
("Akhal-Teke", 1, "2022-01-25", 8000.00);

SELECT * FROM tb_produtos_cavalos;

SELECT * FROM tb_produtos_cavalos WHERE preco > 500.00;

SELECT * FROM tb_produtos_cavalos WHERE preco < 500.00;

UPDATE tb_produtos_cavalos SET preco = 750.00 WHERE id = 3;

SELECT * FROM tb_produtos_cavalos;

UPDATE tb_produtos_cavalos SET preco = 750.00 WHERE id = 3;

SELECT * FROM tb_produtos_cavalos;