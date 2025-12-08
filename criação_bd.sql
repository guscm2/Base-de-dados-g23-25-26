-- -------------------------------------------
-- CRIAÇÂO DA BASE DE DADOS BSN
-- -------------------------------------------

CREATE SCHEMA IF NOT EXISTS BSN;

USE BSN;

-- -------------------------------------------
-- CRIAÇÂO DAS TABELAS DA BASE DE DADOS
-- -------------------------------------------

-- TABELA UTILIZADOR

CREATE TABLE IF NOT EXISTS Utilizador (
	id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    nif INT NOT NULL,
    PRIMARY KEY (id),
    UNIQUE INDEX email_UNIQUE (email ASC),
    UNIQUE INDEX nif_UNIQUE (nif ASC)
);

-- TABELA Viagem

CREATE TABLE IF NOT EXISTS Viagem (
	id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    descrição VARCHAR(255) NOT NULL,
    tempo INT NOT NULL,
    local VARCHAR(45) NOT NULL,
    país VARCHAR(45) NOT NULL,
    preço DECIMAL(10,2) NOT NULL,
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
    descrição VARCHAR(255) NOT NULL,
    idViagem INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (idViagem)
		REFERENCES Viagem(id)
);

-- TABELA Aquisição

CREATE TABLE IF NOT EXISTS Aquisição (
	id INT NOT NULL AUTO_INCREMENT,
    valor DECIMAL(10,2) NOT NULL,
    NIF INT NOT NULL,
    data DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    valorAvaliação INT CHECK (valorAvaliação BETWEEN 1 AND 5),
    idUtilizador INT NOT NULL,
    idViagem INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (idUtilizador)
		REFERENCES Utilizador (id),
	FOREIGN KEY (idViagem)
		REFERENCES Viagem (id)
);

-- TABELA Categoria

CREATE TABLE IF NOT EXISTS Categoria (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45),
    PRIMARY KEY (id)
);

-- TABELA Viagem_Categoria

CREATE TABLE IF NOT EXISTS Viagem_Categoria (
	idViagem INT NOT NULL,
    idCategoria INT NOT NULL,
    FOREIGN KEY (idViagem)
		REFERENCES Viagem(id),
	FOREIGN KEY (idCategoria)
		REFERENCES Categoria(id)
);
    
    
    
    
    
    
    



