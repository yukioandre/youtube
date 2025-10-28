-- Criação da tabela de empregados
CREATE TABLE youtube.tabela_empregados (
    id INT,
    nome VARCHAR(50),
    id_gerente INT
);

INSERT INTO youtube.tabela_empregados (id, nome, id_gerente) VALUES
(1, 'Ana', 101),
(2, 'Bruno', 101),
(3, 'Carla', 102),
(4, 'Diego', 102),
(5, 'Eduarda', 103),
(6, 'Felipe', 103);

-- Criação da tabela de gerentes
CREATE TABLE youtube.tabela_gerentes (
    id INT,
    nome VARCHAR(50),
    equipe VARCHAR(50)
);

INSERT INTO youtube.tabela_gerentes (id, nome, equipe) VALUES
(101, 'Mariana', 'Análise'),
(102, 'Paulo', 'Engenharia'),
(103, 'Renato', 'Marketing');

-- Visualizar os dados
SELECT * FROM tabela_empregados;
SELECT * FROM tabela_gerentes;
