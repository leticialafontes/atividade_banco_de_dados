CREATE DATABASE db_escolinhaquitanda;

USE db_escolinhaquitanda;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
	matricula VARCHAR(20) NOT NULL UNIQUE,
    turno  VARCHAR(255) NOT NULL,
    nota  INT NOT NULL,    
    PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome, data_nascimento, matricula, turno, nota) VALUES
("Miguel", "2018-01-25", 123,"manha", 8),
("Sandra", "2018-02-28", 456, "tarde", 5.5),
("Charlotte", "2018-03-15", 789, "integral", 7),
("Heitor", "2018-04-27", 147, "manha", 6.5),
("Lucas", "2018-05-27", 258, "tarde", 8),
("Vector", "2018-06-27", 369, "integral", 9),
("Alice", "2018-07-27", 159, "manha", 10),
("Morgana", "2018-08-27", 267, "tarde", 10);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7;

SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 6.5 WHERE id = 2;

SELECT * FROM tb_estudantes;
