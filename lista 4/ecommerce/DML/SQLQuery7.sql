INSERT INTO tb_UsuariosVALUES(1,'Uriel','uriel@email.com','134652','Rua Jeronimo - 456','CARTÃO'),(2,'Kauane','kauane@email.com','134652','Rua Matildes - 265','BOLETO'),(3,'Gabi','gaby@email.com','134652','Rua Camões - 263','CARTÃO'),(4,'Thammy','thamy@email.com','134652','Rua São Paulo - 126','PIX')INSERT INTO tb_ProdutosVALUES(1, 2000.00, 15, 'Tv SAMSUNG'),(2, 1550.00, 8, 'Safá'),(3, 1200.00, 10, 'Fogão BRASTEMP'),(4, 5575.00, 5, 'Geladeira')INSERT INTO tb_EntregaVALUES(1, '05/05/22', 2, 4),(2, '05/05/22', 3, 1),(3, '05/05/22', 1, 3),(4, '05/05/22', 4, 2)INSERT INTO tb_EntregaVALUES(5, '05/05/22',1,4)  SELECT * FROM tb_UsuariosSELECT * FROM tb_ProdutosSELECT * FROM tb_Entrega

SELECT * FROM tb_Produtos
Where tb_Produtos.Preco BETWEEN 1000.00 AND 4000.00

SELECT 
tb_Usuarios.Nome AS Nome,
SUM (tb_Produtos.Preco) AS Preco
FROM tb_Usuarios
INNER JOIN tb_Entrega ON tb_Usuarios.Id_Usuarios= tb_Entrega.FK_Id_Usuarios
INNER JOIN tb_Produtos ON tb_Entrega.Id_Entrega= tb_Produtos.Id_Produtos 
GROUP BY tb_Usuarios.Nome
