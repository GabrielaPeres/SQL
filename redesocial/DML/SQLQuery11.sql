-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE
-- INSERT
INSERT INTO Usuarios
VALUES
(1, 'Haley Cammy', 'Haylycamcam@email.com', '90875'),
(2, 'Madalena Fiona', 'Madafifi@email.com', '197552'),
(3, 'Joana Lennis', 'Joana@email.com', '85764'),
(4, 'Camilla Lennis', 'camis@gmail.com', '746484'),
(5, 'Samira Bolero','samira@gmail.com','453687')

INSERT INTO Postagem
VALUES
(1, 'foto familia', 'familia',3,1),
(2, 'foto pets', 'pets',2,3),
(3, 'foto viagem','viagem' ,3,2),
(4, 'foto comidas', 'comidas',4,1),
(5, 'foto praia', 'praia',5,2)  

INSERT INTO Grupos
VALUES
('familia Lennis', 'grupo da familia Lennis','Joana Lennis,Cammila Lennis,Roberto Lennis, Raquel,Lennis'),
('amantes de viagens', 'fotos,videos e relatos de viagens', 'Cammila Lennis, Samira Bolero,Hailey Cammy, Madalena Fiona'),
('amo animais', 'fotos e videos de pets fofos', 'Cammila Lennis, Samira Bolero,Hailey Cammy, Madalena Fiona')

SELECT * FROM Usuarios
WHERE Nome LIKE '%Lennis%'

SELECT * FROM Postagem
WHERE Descricao LIKE '%foto%'
