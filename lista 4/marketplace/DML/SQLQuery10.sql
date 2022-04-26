
INSERT INTO Usuarios
VALUES
('Murilo','murilo@email.com','134652','Rua Jeronimo - 456'),
('Matheus','matheus@email.com','134652','Rua Matildes - 265'),
('Gabi','gabi@email.com','134652','Rua Camões - 263'),
('Lucas','lucas@email.com','134652','Rua São Paulo - 126')


INSERT INTO Categorias
VALUES
(1, 'Eletronicos'),
(2,'Cozinha')

INSERT INTO Produtos
VALUES
('TV','Smart 65 polegadas',4200.00,1,1),
('Panela de pressão','Tramontina com fechamento externo',249.99,2,2),
('Som','150W bivolt',259.99,3,1),
('Alexa','3 geração',331.55,1,1),
('Geladeira' ,'2 portas branca',5479.99,4,2)

INSERT INTO Compras
VALUES
(1,3),
(2,4),
(4,5),
(3,2),
(1,1)

SELECT Usuarios.Nome AS Nome,COUNT(Compras.FK_Comprador) AS QtdProdutoFROM UsuariosLEFT JOIN ComprasON Usuarios.Id = Compras.FK_CompradorLEFT JOIN Produtos ON Compras.FK_Produto = Produtos.IdGROUP BY Usuarios.Nome


