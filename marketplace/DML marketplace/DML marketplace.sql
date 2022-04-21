-- DML
-- INSERT
-- SELECT
-- UPDATE
-- DELETE

-- INSERT
INSERT INTO Usuarios
VALUES
(1, 'Gabriela', 'gabriela@email.com', '123456', 'Rua das flores , 450 - SP'),
(2,  'Rebecca', 'rebecca@email.com', '01020304', 'Rua das pedras  820 - SP'),
(3, 'Ana Carla','anacarla@email.com', '302045', 'Rua dos camelos, 462 - SP')

INSERT INTO Categorias
VALUES
(1, 'roupas'),
(2, 'sapatos')

INSERT INTO Produtos
VALUES
('saia', 'saia listrada', 50.30, 3, 1),
('vestido', 'vestido preto', 100.50, 2, 1),
('salto', 'salto rosa', 100.00, 1, 2)

INSERT INTO Compras
VALUES
(1, 3),
(3, 1),
(2, 2),
(2, 2)

SELECT * FROM Usuarios
WHERE Endereco LIKE '%Rua das pi%'

SELECT * FROM Produtos
WHERE Preco BETWEEN 5 AND 15



