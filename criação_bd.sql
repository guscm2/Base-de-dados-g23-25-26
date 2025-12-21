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
	id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    nacionalidade VARCHAR(45) NOT NULL,
    sexo VARCHAR(2) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE INDEX email_UNIQUE (email ASC)
);

-- TABELA Viagem

CREATE TABLE IF NOT EXISTS Viagem (
	id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    tempo INT NOT NULL,
    local VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    avaliacao DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id)
);

-- TABELA Categoria

CREATE TABLE IF NOT EXISTS Categoria (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

-- TABELA ItemGaleria

CREATE TABLE IF NOT EXISTS ItemGaleria (
	id INT NOT NULL AUTO_INCREMENT,
    caminhoFicheiro VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    idViagem INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (idViagem)
		REFERENCES Viagem(id)
        ON DELETE CASCADE
		ON UPDATE CASCADE
);

-- TABELA Aquisição

CREATE TABLE IF NOT EXISTS Aquisicao (
	id INT NOT NULL AUTO_INCREMENT,
    valor DECIMAL(10,2) NOT NULL,
    NIF INT NOT NULL,
    data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    valorAvaliacao INT,
    comentario VARCHAR(255),
    idUtilizador INT NOT NULL,
    idViagem INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (idUtilizador)
		REFERENCES Utilizador (id)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (idViagem)
		REFERENCES Viagem (id)
        ON DELETE CASCADE
		ON UPDATE CASCADE
);

-- TABELA Viagem_Categoria

CREATE TABLE IF NOT EXISTS Viagem_Categoria (
	idViagem INT NOT NULL,
    idCategoria INT NOT NULL,
    PRIMARY KEY (idViagem, idCategoria),
    FOREIGN KEY (idViagem)
		REFERENCES Viagem(id)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (idCategoria)
		REFERENCES Categoria(id)
        ON DELETE CASCADE
		ON UPDATE CASCADE
);