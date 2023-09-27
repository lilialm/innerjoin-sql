CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
  id_categoria INT PRIMARY KEY,
  nome_categoria VARCHAR(50),
  descricao_categoria VARCHAR(255)
);

INSERT INTO tb_categorias (id_categoria, nome_categoria, descricao_categoria)
VALUES (1, 'Medicamentos', 'Categoria para medicamentos'),
       (2, 'Cosméticos', 'Categoria para produtos de beleza'),
       (3, 'Higiene', 'Categoria para produtos de higiene'),
       (4, 'Suplementos', 'Categoria para suplementos alimentares'),
       (5, 'Alimentos', 'Categoria para alimentos');

CREATE TABLE tb_produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  valor DECIMAL(10, 2),
  descricao VARCHAR(255),
  id_categoria INT,
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_produtos (id, nome, valor, descricao, id_categoria)
VALUES (1, 'Paracetamol', 10.50, 'Analgésico e antitérmico', 1),
       (2, 'Shampoo', 15.90, 'Limpeza e cuidado para cabelos', 2),
       (3, 'Sabonete', 3.99, 'Limpeza e higiene pessoal', 3),
       (4, 'Vitamina C', 20.00, 'Suplemento vitamínico', 4),
       (5, 'Arroz', 7.50, 'Alimento básico', 5),
       (6, 'Dipirona', 8.75, 'Analgésico e antitérmico', 1),
       (7, 'Condicionador', 18.50, 'Hidratação e cuidado para cabelos', 2),
       (8, 'Desodorante', 5.99, 'Desodorante roll-on', 3);
       
SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT tb_produtos.*, tb_categorias.nome_categoria AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT tb_produtos.*, tb_categorias.nome_categoria AS categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Medicamentos';


