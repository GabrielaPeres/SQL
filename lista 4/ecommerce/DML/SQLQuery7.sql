INSERT INTO tb_Usuarios

SELECT * FROM tb_Produtos
Where tb_Produtos.Preco BETWEEN 1000.00 AND 4000.00

SELECT 
tb_Usuarios.Nome AS Nome,
SUM (tb_Produtos.Preco) AS Preco
FROM tb_Usuarios
INNER JOIN tb_Entrega ON tb_Usuarios.Id_Usuarios= tb_Entrega.FK_Id_Usuarios
INNER JOIN tb_Produtos ON tb_Entrega.Id_Entrega= tb_Produtos.Id_Produtos 
GROUP BY tb_Usuarios.Nome