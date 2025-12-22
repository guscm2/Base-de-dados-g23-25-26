USE BSN;

/*
INSERT INTO Utilizador (email, password, nome, idade, nacionalidade, sexo)
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

INSERT INTO Viagem (titulo, descricao, tempo, local, pais, preco, avaliacao)
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




INSERT INTO ItemGaleria (caminhoFicheiro, descricao, idViagem)
VALUES
('images/madrid_palacio.jpg', 'Fachada principal do Palácio Real de Madrid', 1),
('images/paris_torre.jpg', 'Torre Eiffel vista dos jardins do Trocadéro', 2),
('images/roma_coliseu.jpg', 'Vista exterior do Coliseu de Roma ao pôr do sol', 3),
('images/lisboa_eletrico.jpg', 'Elétrico 28 a subir as ruas típicas de Alfama', 4),
('images/londres_bigben.jpg', 'Big Ben e o Parlamento junto ao rio Tamisa', 5),
('images/algarve_praia.jpg', 'Praia da Marinha e as suas falésias douradas', 6),
('images/barcelona_sagrada.jpg', 'Detalhes da arquitetura da Sagrada Família', 7),
('images/amesterdao_canal.jpg', 'Passeio de barco pelos canais de Amesterdão', 8),
('images/dubrovnik_muralhas.jpg', 'Vista panorâmica das muralhas de Dubrovnik', 9),
('images/berlim_portao.jpg', 'Portão de Brandemburgo iluminado à noite', 10);


INSERT INTO Aquisicao (valor, NIF, data, valorAvaliacao, comentario, id_Utilizador, id_Viagem)
VALUES
(25, 210123456, '2024-02-15 10:30:00', 5, 'Experiência fantástica!', 1, 1),
(18, 220987654, '2024-03-10 14:00:00', 4, 'Paris é linda, mas cansativa.', 2, 2),
(29, 230456789, '2024-04-05 09:15:00', 5, 'O Coliseu é incrível.', 3, 3),
(12, 240112233, '2024-05-20 18:45:00', 4, 'Ótima comida.', 4, 4),
(30, 250334455, '2024-06-12 11:20:00', 5, 'Organização impecável.', 5, 5),
(15, 260667788, '2024-07-01 16:30:00', 5, 'Melhores férias de sempre.', 6, 6),
(22, 270998877, '2024-08-14 08:50:00', 3, 'Cidade muito cheia.', 7, 7),
(19, 280556644, '2024-09-09 13:10:00', 4, 'Canais muito bonitos.', 8, 8),
(27, 290223311, '2024-10-02 12:00:00', 5, 'Paisagem de filme.', 9, 9),
(14, 200778899, '2024-11-15 15:40:00', 4, 'Muita história.', 10, 10);
*/
SELECT * FROM ItemGaleria;
SELECT * FROM Aquisicao;
SELECT * FROM Categoria;
SELECT * FROM Utilizador;
SELECT * FROM Viagem;
SELECT * FROM Viagem_Categoria