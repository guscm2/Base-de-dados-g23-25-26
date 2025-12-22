-- QUERY 1

SELECT Viagem.* FROM Viagem WHERE pais = 'Espanha';

-- QUERY 2

SELECT Aquisicao.* FROM Aquisicao WHERE id_Utilizador = 1;

-- QUERY 3

SELECT caminhoFicheiro FROM ItemGaleria WHERE id_Viagem = 1;

-- QUERY 4

SELECT AVG(valorAvaliacao) FROM Aquisicao WHERE id_Viagem = 3;

-- QUERY 5

SELECT Aquisicao.Comentario FROM Aquisicao WHERE id_Viagem = 3;

-- QUERY 6

SELECT Viagem.titulo FROM Viagem JOIN Viagem_Categoria ON Viagem.id_Viagem = Viagem_Categoria.id_Viagem 
JOIN Categoria ON Viagem_Categoria.id_Categoria = Categoria.id_Categoria
WHERE Categoria.id_Categoria = 5;

-- QUERY 7

SELECT SUM(valor) FROM Aquisicao WHERE DATE(Aquisicao.data) = '2024-09-09';