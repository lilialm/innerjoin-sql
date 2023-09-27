CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
  id_categoria INT,
  nome_categoria VARCHAR(50),
  descricao_categoria VARCHAR(100),
  PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categorias (id_categoria, nome_categoria, descricao_categoria) VALUES
(1, 'Calabresa', 'Pizzas com calabresa como ingrediente principal'),
(2 ,'Margherita', 'Pizzas tradicionais com molho de tomate, mussarela e manjericão'),
(3, 'Quatro Queijos', 'Pizzas com quatro tipos diferentes de queijo'),
(4, 'Frango com Catupiry', 'Pizzas com frango desfiado e catupiry'),
(5, 'Portuguesa', 'Pizzas com ingredientes típicos da culinária portuguesa');

CREATE TABLE tb_pizzas (
  id_pizza INT AUTO_INCREMENT,
  nome_pizza VARCHAR(50),
  descricao_pizza VARCHAR(100),
  valor DECIMAL(10, 2),
  id_categoria INT,
  PRIMARY KEY (id_pizza),
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_pizzas (nome_pizza, descricao_pizza, valor, id_categoria) VALUES
('Calabresa Especial', 'Calabresa, cebola, pimentão e azeitonas', 35.90, 1),
('Margherita Tradicional', 'Molho de tomate, muçarela e manjericão', 29.90, 2),
('Quatro Queijos Gourmet', 'Muçarela, catupiry, gorgonzola e parmesão', 42.90, 3),
('Frango com Catupiry', 'Frango desfiado, catupiry, milho e azeitonas', 38.90, 4),
('Portuguesa Especial', 'Presunto, muçarela, cebola, ovos, azeitonas e ervilha', 36.90, 5),
('Calabresa Picante', 'Calabresa, pimenta calabresa, cebola e azeitonas', 37.90, 1),
('Margherita com Rúcula', 'Molho de tomate, muçarela, manjericão e rúcula', 32.90, 2),
('Quatro Queijos com Tomate Seco', 'Muçarela, catupiry, gorgonzola e tomate seco', 44.90, 3);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT tb_pizzas.*, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT tb_pizzas.*, tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Quatro Queijos';