-- -------------------------------------------
-- CRIAÇÂO DA BASE DE DADOS BSN
-- -------------------------------------------
CREATE SCHEMA BSN;

USE BSN;

-- -------------------------------------------
-- CRIAÇÂO DAS TABELAS DA BASE DE DADOS
-- -------------------------------------------

-- TABELA UTILIZADOR

CREATE TABLE IF NOT EXISTS Utilizador (
	id_Utilizador INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    nome_Utilizador VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    nacionalidade VARCHAR(45) NOT NULL,
    sexo VARCHAR(2) NOT NULL,
    PRIMARY KEY (id_Utilizador),
    UNIQUE INDEX email_UNIQUE (email ASC)
);

-- TABELA Viagem

CREATE TABLE IF NOT EXISTS Viagem (
	id_Viagem INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    descricao_Viagem VARCHAR(255) NOT NULL,
    tempo INT NOT NULL,
    local VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    avaliacao DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_Viagem)
);

-- TABELA Categoria

CREATE TABLE IF NOT EXISTS Categoria (
  id_Categoria INT NOT NULL AUTO_INCREMENT,
  nome_Categoria VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_Categoria)
);

-- TABELA ItemGaleria

CREATE TABLE IF NOT EXISTS ItemGaleria (
	id_ItemGaleria INT NOT NULL AUTO_INCREMENT,
    caminhoFicheiro VARCHAR(255) NOT NULL,
    descricao_ItemGaleria VARCHAR(255) NOT NULL,
    idViagem INT NOT NULL,
    PRIMARY KEY (id_ItemGaleria),
    FOREIGN KEY (id_Viagem)
		REFERENCES Viagem(id_Viagem)
        ON DELETE CASCADE
		ON UPDATE CASCADE
);

-- TABELA Aquisição

CREATE TABLE IF NOT EXISTS Aquisicao (
	id_Aquisicao INT NOT NULL AUTO_INCREMENT,
    valor DECIMAL(10,2) NOT NULL,
    NIF INT NOT NULL,
    data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    valorAvaliacao INT,
    comentario VARCHAR(255),
    id_Utilizador INT NOT NULL,
    id_Viagem INT NOT NULL,
    PRIMARY KEY (id_Aqusicao),
    FOREIGN KEY (id_Utilizador)
		REFERENCES Utilizador (id_Utilizador)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (id_Viagem)
		REFERENCES Viagem (id_Viagem)
        ON DELETE CASCADE
		ON UPDATE CASCADE
);

-- TABELA Viagem_Categoria

CREATE TABLE IF NOT EXISTS Viagem_Categoria (
	id_Viagem INT NOT NULL,
    id_Categoria INT NOT NULL,
    PRIMARY KEY (id_Viagem, id_Categoria),
    FOREIGN KEY (id_Viagem)
		REFERENCES Viagem(id_Viagem)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (id_Categoria)
		REFERENCES Categoria(id_Categoria)
        ON DELETE CASCADE
		ON UPDATE CASCADE
);