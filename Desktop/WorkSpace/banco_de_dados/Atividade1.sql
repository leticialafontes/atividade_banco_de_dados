/*criando o banco de dados*/
CREATE DATABASE rh_quitanda;

/*tem que usar esse comando de usar o banco de dados para a primeira vez para "ativar"*/
USE rh_quitanda;

/*criando a tabela de colaboradores, esqueci de colocar tb_ */
CREATE TABLE colaboradores(
id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL NOT NULL,
    dataadmissao DATE NOT NULL,
    PRIMARY KEY(id)
);

/*inserindo os dados na tabela, inseri o nome dos meus gatos e gatos dos meus pais*/
INSERT INTO colaboradores(nome, idade, cargo, salario, dataadmissao) VALUES
("Zeus", 7, "tech leader", "10000.00", "2018-02-26" ),
("Artemis", 6, "dev. front-end sr.", "8000.00", "2019-08-21" ),
("Marcelo", 5, "dev back-end sr.", "8000.00", "2020-11-20" ),
("Sakamoto", 2, "dev. fullstack jr", "4000.00", "2023-05-05" ),
("Galateia", 2, "dev back-end jr", "4000.00", "2024-10-26" ),
("Kali", 1, "estagiaria", "2500.00", "2025-01-31" );

SELECT * FROM colaboradores;
SELECT nome, preco FROM colaboradores;
SELECT nome, salario FROM colaboradores;

INSERT INTO colaboradores(nome, idade, cargo, salario, dataadmissao) VALUES
("Zeus", "7", "tech leader", "10000.00", "2018-02-26" ),
("Artemis", "6", "dev. front-end sr.", "8000.00", "2019-08-21" ),
("Marcelo", "5", "dev back-end sr.", "8000.00", "2020-11-20" ),
("Sakamoto", "2", "dev. fullstack jr", "4000.00", "2023-05-05" ),
("Galateia", "2", "dev back-end jr", "4000.00", "2024-10-26" ),
("Kali", "1", "estagiaria", "2500.00", "2025-01-31" );

SELECT nome, salario FROM colaboradores;
SELECT * FROM colaboradores;

/*filtrar salarios maior que 2000,00*/
SELECT * FROM colaboradores WHERE salario > 2000.00;

/*filtrar salarios maior que 2000,00*/
SELECT * FROM colaboradores WHERE salario < 2000.00;

/*atualizar um dado na tabela*/
UPDATE colaboradores SET salario = 1999.99 WHERE id = 6;

SELECT * FROM colaboradores;

UPDATE colaboradores SET salario = 1990.00 WHERE id = 6;

SELECT * FROM colaboradores;

SELECT * FROM colaboradores WHERE salario < 2000.00;


