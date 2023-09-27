CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
         id_classe INT,
         nome_classe VARCHAR(50),
         descricao_classe VARCHAR(100),
         PRIMARY KEY(id_classe)
       );
       
DROP TABLE tb_classes;

INSERT INTO tb_classes (id_classe, nome_classe, descricao_classe)
     VALUES
       (1, 'Guerreiro', 'Classe especializada em combate corpo a corpo'),
       (2, 'Mago', 'Classe especializada em magias e feitiços'),
       (3, 'Arqueiro', 'Classe especializada em ataques à distância'),
       (4, 'Ladrão', 'Classe especializada em furtividade e habilidades de roubo'),
       (5, 'Cavaleiro', 'Classe especializada em montarias e combate montado');
       
CREATE TABLE tb_personagens (
         id_personagem INT,
         nome_personagem VARCHAR(50),
         poder_ataque INT,
         poder_defesa INT,
         id_classe INT,
         PRIMARY KEY(id_personagem),
         FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
       );
       
INSERT INTO tb_personagens (id_personagem, nome_personagem, poder_ataque, poder_defesa, id_classe)
     VALUES
       (1, 'Personagem 1', 2500, 1500, 1),
       (2, 'Personagem 2', 1800, 2200, 3),
       (3, 'Personagem 3', 3000, 1800, 2),
       (4, 'Personagem 4', 2100, 1900, 4),
       (5, 'Personagem 5', 2200, 2100, 5),
       (6, 'Personagem 6', 1900, 2200, 3),
       (7, 'Personagem 7', 2300, 1200, 1),
       (8, 'Personagem 8', 2800, 2500, 2);
       
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

 SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
 
SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

SELECT tb_personagens.*, tb_classes.nome_classe
     FROM tb_personagens
     INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;
     
SELECT tb_personagens.*, tb_classes.nome_classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome_classe = 'Arqueiro';
       
