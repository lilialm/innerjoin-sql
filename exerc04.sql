CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    categoria_id INT PRIMARY KEY,
    nome_categoria VARCHAR(255),
    descricao_categoria VARCHAR(255)
    );
    
INSERT INTO tb_categorias (categoria_id, nome_categoria, descricao_categoria)
VALUES
    (1, 'Carnes', 'Produtos de origem animal'),
    (2, 'Frutas', 'Produtos frescos e naturais'),
    (3, 'Legumes', 'Produtos vegetais ricos em nutrientes'),
    (4, 'Laticínios', 'Produtos derivados do leite'),
    (5, 'Bebidas', 'Diversas opções de bebidas');

CREATE TABLE tb_produtos (
    produto_id INT PRIMARY KEY,
    nome_produto VARCHAR(255),
    preco DECIMAL(10,2),
    descricao_produto VARCHAR(255),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
    );
    
INSERT INTO tb_produtos (produto_id, nome_produto, preco, descricao_produto, categoria_id)
VALUES
    (1, 'Carne de boi', 25.90, 'Carne de boi de primeira qualidade', 1),
    (2, 'Carne de frango', 15.50, 'Carne de frango fresca e suculenta', 1),
    (3, 'Maçã', 2.50, 'Maçãs vermelhas e doces', 2),
    (4, 'Banana', 1.80, 'Bananas maduras e saborosas', 2),
    (5, 'Cenoura', 0.80, 'Cenouras frescas e crocantes', 3),
    (6, 'Tomate', 1.20, 'Tomates vermelhos e suculentos', 3),
    (7, 'Leite', 3.50, 'Leite integral fresco', 4),
    (8, 'Suco de laranja', 4.90, 'Suco natural de laranja', 5);
    
SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.categoria_id
WHERE tb_categorias.nome_categoria = 'Frutas';