CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
     id_categoria INT PRIMARY KEY,
     nome_categoria VARCHAR(100),
     descricao_categoria VARCHAR(255)
   );
   
INSERT INTO tb_categorias (id_categoria, nome_categoria, descricao_categoria)
VALUES
     (1, 'Programação', 'Cursos de programação'),
     (2, 'Design', 'Cursos de design'),
     (3, 'Marketing', 'Cursos de marketing'),
     (4, 'Negócios', 'Cursos de negócios'),
     (5, 'Saúde', 'Cursos de saúde');

CREATE TABLE tb_cursos (
     id_curso INT PRIMARY KEY,
     nome_curso VARCHAR(100),
     descricao_curso VARCHAR(255),
     valor_curso DECIMAL(10, 2),
     id_categoria INT,
     FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
   );
   
INSERT INTO tb_cursos (id_curso, nome_curso, descricao_curso, valor_curso, id_categoria)
   VALUES
     (1, 'Curso de Python', 'Aprenda Python do zero', 599.99, 1),
     (2, 'Curso de Photoshop', 'Edição e manipulação de imagens', 799.99, 2),
     (3, 'Curso de Marketing Digital', 'Estratégias de marketing online', 499.99, 3),
     (4, 'Curso de Gestão de Projetos', 'Gerenciamento eficiente de projetos', 899.99, 4),
     (5, 'Curso de Nutrição', 'Alimentação saudável e dietas', 699.99, 5),
     (6, 'Curso de Java', 'Desenvolvimento de aplicações Java', 699.99, 1),
     (7, 'Curso de Illustrator', 'Criação de ilustrações vetoriais', 799.99, 2),
     (8, 'Curso de Marketing de Conteúdo', 'Produção de conteúdo para web', 599.99, 3);
     
SELECT * FROM tb_cursos WHERE valor_curso > 500.00;
   
SELECT * FROM tb_cursos WHERE valor_curso BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT *
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria;

SELECT *
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Programação';





   

