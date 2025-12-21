-- QUERY 1

SELECT Viagem.* FROM Viagem WHERE pais = 'Espanha';

-- QUERY 2

SELECT Aquisicao.* FROM Aquisicao WHERE idUtilizador = 1;

-- QUERY 3

SELECT caminhoFicheiro FROM ItemGaleria WHERE idViagem = 1;

-- QUERY 4

SELECT AVG(valorAvaliacao) FROM Aquisicao WHERE idViagem = 3;

-- QUERY 5

SELECT Aquisicao.Comentario FROM Aquisicao WHERE idViagem = 3;

-- QUERY 6

SELECT Viagem.titulo FROM Viagem JOIN Viagem_Categoria ON Viagem.id = Viagem_Categoria.idViagem 
JOIN Categoria ON Viagem_Categoria.idCategoria = Categoria.id
WHERE Categoria.id = 5;

-- QUERY 7

SELECT SUM(valor) FROM Aquisicao WHERE DATE(Aquisicao.data) = '2024-09-09';