-- VIEW 1

CREATE VIEW viagens_populares AS 
SELECT 
    v.id_Viagem,
    v.titulo,
    COUNT(a.id_Aquisicao) AS total_aquisicoes
FROM Viagem v
LEFT JOIN Aquisicao a ON v.id_Viagem = a.id_Viagem
GROUP BY v.id_Viagem, v.titulo 
ORDER BY total_aquisicoes DESC;

--VIEW 2

CREATE VIEW galeria_utilizador AS
SELECT
    u.id_Utilizador,
    u.nome_Utilizador,
    ig.caminhoFicheiro,
    ig.descricao_ItemGaleria
FROM Utilizador u
JOIN Aquisicao a ON u.id_Utilizador = a.id_Utilizador
JOIN Viagem v ON a.id_Viagem = v.id_Viagem
JOIN ItemGaleria ig ON v.id_Viagem = ig.id_Viagem
ORDER BY v.id_Viagem;

-- VIEW 3

CREATE VIEW categorias_compradas_recetemente AS
SELECT 
    c.id_Categoria,
    c.nome_Categoria,
    v.id_Viagem,
    a.data AS data_aquisicao
FROM Categoria c
JOIN Viagem_Categoria vc ON c.id_Categoria = vc.id_Categoria
JOIN Viagem v ON vc.id_Viagem = v.id_Viagem
JOIN Aquisicao a ON v.id_Viagem = a.id_Viagem
ORDER BY a.data DESC;

-- VIEW 4

CREATE VIEW 10utilizadores_mais_gastador AS
SELECT 
    u.id_Utilizador,
    u.nome_Utilizador,
    u.nacionalidade_Utilizador,
    SUM(a.valor) AS total_gasto
FROM Utilizador u
JOIN Aquisicao a ON u.id_Utilizador = a.id_Utilizador
GROUP BY u.id_Utilizador, u.nome_Utilizador, u.nacionalidade_Utilizador
ORDER BY total_gasto DESC
LIMIT 10;

-- VIEW 5

CREATE VIEW categorias_populares_em_jovens AS
SELECT
    c.id_Categoria,
    c.nome_Categoria,
    COUNT(a.id_Aquisicao) AS total_aquisicoes_jovens
FROM Categoria c
JOIN Viagem_Categoria vc ON c.id_Categoria = vc.id_Categoria
JOIN Viagem v ON vc.id_Viagem = v.id_Viagem
JOIN Aquisicao a ON v.id_Viagem = a.id_Viagem
JOIN Utilizador u ON a.id_Utilizador = u.id_Utilizador
WHERE u.idade_Utilizador BETWEEN 18 AND 25
GROUP BY c.id_Categoria, c.nome_Categoria
ORDER BY total_aquisicoes_jovens DESC;
