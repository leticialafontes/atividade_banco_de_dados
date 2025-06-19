CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	localidade VARCHAR(255) NOT NULL,
    poder_ataque INT,
	poder_defesa INT,
    classeid INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_personagens (nome, localidade, poder_ataque, poder_defesa, classeid) VALUES
("Darius", "Noxus", 3100, 900, 1),
("Caitlyn", "Piltover", 2600, 1100, 2),
("Morgana", "Monte Targon", 2400, 1000, 3),
("Zed", "Ionia", 2400, 1200, 4),
("Leona", "Monte Targon", 2000, 2500, 5),
("Kog'Maw", "Vazio", 2200, 1500, 2),
("Lux", "Demacia", 2500, 1000, 3),
("Urgot", "Zaun", 2900, 2000, 1),
("Illaoi", "Aguas de Sentina", 2750, 1900, 1);

CREATE TABLE tb_classes(
	id bigint AUTO_INCREMENT PRIMARY KEY,
	classe VARCHAR(255) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_classes (classe, descricao) VALUES
("Lutador", "Lutador corpo a corpo com grande dano sustentado"),
("Atirador", "Atiradora ágil com ataques à distância e alta mobilidade"),
("Mago", "Mago de longo alcance com alto burst mágico"),
("Assassino", "Assassina sombria com alto dano explosivo e furtividade"),
("Tank", "Tank defensor com controle de grupo");

SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens MODIFY COLUMN classeid BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classeid) REFERENCES tb_classes(id);

UPDATE tb_personagens SET classeid = 1 WHERE id = 1;
UPDATE tb_personagens SET classeid = 2 WHERE id = 2;
UPDATE tb_personagens SET classeid = 3 WHERE id = 3;
UPDATE tb_personagens SET classeid = 4 WHERE id = 4;
UPDATE tb_personagens SET classeid = 5 WHERE id = 5;
UPDATE tb_personagens SET classeid = 2 WHERE id = 6;
UPDATE tb_personagens SET classeid = 3 WHERE id = 7;
UPDATE tb_personagens SET classeid = 1 WHERE id = 8;
UPDATE tb_personagens SET classeid = 1 WHERE id = 9;

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

SELECT * FROM tb_personagens ORDER BY nome ASC;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome,localidade, poder_ataque, poder_defesa, tb_classes.classe, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;

SELECT nome,localidade, poder_ataque, poder_defesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.classe = "Atirador";

SELECT nome, localidade, poder_ataque, poder_defesa, tb_classes.classe, tb_classes.descricao
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;