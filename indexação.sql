
-- O email é geralmente usado para login, por isso deve ser rápido de encontrar e ÚNICO.
CREATE UNIQUE INDEX idx_utilizador_email ON Utilizador (email);

-- Frequentemente pesquisa-se utilizadores pelo nome.
CREATE INDEX idx_utilizador_nome ON Utilizador (nome_Utilizador);

-- ESSENCIAL: Chave estrangeira para ligar Aquisicao -> Utilizador.
-- Acelera: "Ver todas as compras do utilizador X"
CREATE INDEX idx_aquisicao_id_utilizador ON Aquisicao (id_Utilizador);

-- ESSENCIAL: Chave estrangeira para ligar Aquisicao -> Viagem.
-- Acelera: "Ver quantas vezes a viagem Y foi comprada"
CREATE INDEX idx_aquisicao_id_viagem ON Aquisicao (id_Viagem);

-- Muito importante para relatórios financeiros, filtrar compras por período ou ordenar por data.
CREATE INDEX idx_aquisicao_data ON Aquisicao (data);

-- Para pesquisar viagens pelo título.
CREATE INDEX idx_viagem_titulo ON Viagem (titulo);

-- Para filtrar viagens por destino (País).
CREATE INDEX idx_viagem_pais ON Viagem (pais);

-- Para filtrar viagens por faixa de preço ou ordenar do mais barato para o mais caro.
CREATE INDEX idx_viagem_preco ON Viagem (preco);

-- ESSENCIAL: Chave estrangeira para ligar as fotos à viagem correspondente.
CREATE INDEX idx_itemgaleria_id_viagem ON ItemGaleria (id_Viagem);


-- Nomes de categorias geralmente não se devem repetir, por isso usamos UNIQUE.
CREATE UNIQUE INDEX idx_categoria_nome ON Categoria (nome_Categoria);
