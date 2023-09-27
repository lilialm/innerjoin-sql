CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    categoria_id INT PRIMARY KEY,
    nome_categoria VARCHAR(255),
    descricao_categoria VARCHAR(255)
);

INSERT INTO tb_categorias (categoria_id, nome_categoria, descricao_categoria)
VALUES
    (1, 'Ferramenta', 'Diversas ferramentas para construção'),
    (2, 'Elétrica', 'Produtos elétricos para construção'),
    (3, 'Hidráulica', 'Produtos hidráulicos para construção'),
    (4, 'Acabamento', 'Produtos de acabamento para construção'),
    (5, 'Material de Construção', 'Materiais diversos para construção');

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
    (1, 'Martelo', 15.90, 'Martelo de aço resistente', 1),
    (2, 'Furadeira', 199.99, 'Furadeira elétrica de alta potência', 1),
    (3, 'Torneira', 29.90, 'Torneira para banheiro cromada', 3),
    (4, 'Tinta', 45.50, 'Tinta acrílica para parede', 4),
    (5, 'Cimento', 20.00, 'Saco de cimento comum', 5),
    (6, 'Luminária', 59.90, 'Luminária de teto para sala', 2),
    (7, 'Telha', 5.80, 'Telha de cerâmica para telhado', 5),
    (8, 'Chave de Grifo', 39.90, 'Chave de grifo ajustável para tubos', 1);
    
SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.categoria_id
WHERE tb_categorias.nome_categoria = 'Ferramenta';






