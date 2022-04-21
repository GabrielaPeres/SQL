-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE
-- INSERT
INSERT INTO Usuarios
VALUES
(1, 'Sabrina Morgan', 'Sabrinamg@email.com', '134652', 'Rua das rosas , 456 - SP'),
(2,  'Felipe Reis', 'felipe48@email.com', '155544', 'Rua fanny, 455 - SP'),
(3, 'Diana Almeida', 'dianaalmeida@gmail.com', '4562578', 'Rua Jamaica, 787 - SP')

INSERT INTO Plataforma
VALUES
(1, 'venda de calcados',1,1,1),
(2, 'venda de vestidos',2,3,4)

INSERT INTO Produtos
VALUES
( 'salto','salto de bolinha', 100.75, 1),
( 'vestido','vestido longo', 400.00, 3),
( 'tenis','tenis listrado', 450.00, 2)

 INSERT INTO Pedidos
VALUES
(1, 'um salto de bolinha',1,1),
(2, 'um vestido longo',3,2),
(3, 'um tenis listrado',2,3)

SELECT * FROM Usuarios
WHERE Endereco LIKE '%Rua%'

SELECT * FROM Produtos
WHERE Preco BETWEEN 50.00 AND 500.00

