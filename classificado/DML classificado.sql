-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE
-- INSERT

USE db_classificado

INSERT INTO Usuarios
VALUES
(1, 'Roberto Sales', 'salesroberto12@email.com', '124578', 'Rua dos carneiros , 350 - SP'),
(2, 'Railana Pereira', 'railana34pperei@emmail.com' , '476582' , 'Rua demes , 345 - SP') 

INSERT INTO Anuncios
VALUES
(1, 'carro fiat vermelho usado', 12000.00 ,1)

SELECT * FROM Usuarios
WHERE Endereco LIKE '%Rua%'

SELECT * FROM Anuncios
WHERE Preço BETWEEN 100.00 AND 15001.00

