USE BSN;

/*

-INSERT INTO Utilizador (email, password, nome, idade, nacionalidade, sexo)
VALUES 
('Albertofernandes21', 'albfern1998', 'Alberto Fernandes', 27, 'Angolano', 'M'),
('maria.silva@email.com', 'mariasilva22', 'Maria Silva', 24, 'Portuguesa', 'F'),
('joao.pereira@email.com', 'joaop123', 'João Pereira', 31, 'Brasileiro', 'M'),
('ana.costa@email.com', 'anacosta98', 'Ana Costa', 26, 'Portuguesa', 'F'),
('carlos.mendes@email.com', 'carlmendes77', 'Carlos Mendes', 35, 'Angolano', 'M'),
('sofia.rocha@email.com', 'sofiarocha11', 'Sofia Rocha', 22, 'Portuguesa', 'F'),
('pedro.alves@email.com', 'pedroalves9', 'Pedro Alves', 29, 'Brasileiro', 'M'),
('ines.martins@email.com', 'inesmartins3', 'Inês Martins', 27, 'Portuguesa', 'F'),
('ricardo.lima@email.com', 'ricardolima88', 'Ricardo Lima', 34, 'Angolano', 'M'),
('tiago.ribeiro@email.com', 'tiagoribeiro45', 'Tiago Ribeiro', 28, 'Português', 'M');

INSERT INTO Viagem (titulo, descricao_Viagem, tempo, local, pais, preco, avaliacao)
VALUES
('Viagem a Madrid',
 'Descobre Madrid com visitas ao Palácio Real, Museu do Prado e Parque do Retiro. Aproveita a gastronomia local e bairros históricos.',
 3, 'Madrid', 'Espanha', 450.00, 4.5),

('Escapadinha a Paris',
 'Vive o charme de Paris com visitas à Torre Eiffel, Museu do Louvre e passeios junto ao Rio Sena. Aproveita cafés típicos e zonas históricas.',
 4, 'Paris', 'França', 780.00, 4.8),

('Aventura em Roma',
 'Explora Roma com visitas ao Coliseu, Fórum Romano e Vaticano. Descobre praças emblemáticas e gastronomia italiana.',
 5, 'Roma', 'Itália', 690.00, 4.7),

('Férias em Lisboa',
 'Conhece Lisboa através de Alfama, Bairro Alto e Belém. Desfruta de miradouros, elétricos históricos e da gastronomia portuguesa.',
 3, 'Lisboa', 'Portugal', 320.00, 4.4),

('Descobrir Londres',
 'Explora Londres com visitas ao Big Ben, Palácio de Buckingham e Museu Britânico. Aproveita zonas comerciais e culturais.',
 4, 'Londres', 'Reino Unido', 820.00, 4.6),

('Praias do Algarve',
 'Relaxa nas praias do Algarve com tempo livre para o mar, passeios de barco e vilas costeiras.',
 7, 'Algarve', 'Portugal', 950.00, 4.9),

('Viagem a Barcelona',
 'Descobre Barcelona com visitas à Sagrada Família, Parque Güell e La Rambla. Combina cultura, praia e vida noturna.',
 4, 'Barcelona', 'Espanha', 560.00, 4.7),

('Aventura em Amesterdão',
 'Explora Amesterdão através dos seus canais, museus e bairros alternativos.',
 3, 'Amesterdão', 'Países Baixos', 610.00, 4.5),

('Descanso em Dubrovnik',
 'Descobre Dubrovnik com passeios pelas muralhas históricas e centro antigo.',
 5, 'Dubrovnik', 'Croácia', 740.00, 4.8),

('Explorar Berlim',
 'Conhece Berlim com visitas ao Muro de Berlim, Portão de Brandemburgo e museus históricos.',
 4, 'Berlim', 'Alemanha', 670.00, 4.6);


UPDATE Utilizador
SET nacionalidade = 'Português'
WHERE email = 'tiago.ribeiro@email.com';

SELECT * FROM Viagem;
SELECT * FROM Utilizador;


INSERT INTO Categoria (nome_Categoria)
VALUES
('Época Alta'),
('Época Baixa'),
('Mais Caro'),
('Mais Barato'),
('Curta Duração'),
('Longa Duração'),
('Praia'),
('Cultura'),
('Aventura'),
('Romântica');


INSERT INTO Viagem_Categoria (idViagem, idCategoria)
VALUES
-- Viagem a Madrid (id_viagem = 1)
(1, 1), -- Época Alta
(1, 8), -- Cultura

-- Escapadinha a Paris (id_viagem = 2)
(2, 1), -- Época Alta
(2, 10), -- Romântica

-- Aventura em Roma (id_viagem = 3)
(3, 8), -- Cultura
(3, 9), -- Aventura

-- Férias em Lisboa (id_viagem = 4)
(4, 8), -- Cultura
(4, 6), -- Longa Duração

-- Descobrir Londres (id_viagem = 5)
(5, 8), -- Cultura
(5, 9), -- Aventura

-- Praias do Algarve (id_viagem = 6)
(6, 5), -- Curta Duração
(6, 7), -- Praia

-- Viagem a Barcelona (id_viagem = 7)
(7, 8), -- Cultura
(7, 10), -- Romântica

-- Aventura em Amesterdão (id_viagem = 8)
(8, 9), -- Aventura
(8, 8), -- Cultura

-- Descanso em Dubrovnik (id_viagem = 9)
(9, 7), -- Praia
(9, 10), -- Romântica

-- Explorar Berlim (id_viagem = 10)
(10, 8), -- Cultura
(10, 9); -- Aventura

SELECT * FROM Categoria;
SELECT * FROM Viagem_Categoria


INSERT INTO ItemGaleria (caminhoFicheiro, descricao_ItemGaleria, 
*/