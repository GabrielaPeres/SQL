USE db_classificados1

INSERT INTO Usuario
VALUES
(1, '356.452.54.98','Anunciante','SP','11 957472-7474'),
(2,'654.463.98.785','Anunciante','RJ','21 96820-6290'),
(3,'572.582.78.10','Anunciante','SP','11 96830-7247')

INSERT INTO Anuncio 
VALUES
(1,'Automóvel','Carro','SP','11 957472-7474',1),
(2,'Automóvel','Caminhão','SP','11 957472-7474',3),
(3,'Imóvel','Casa','SP','11 957472-7474',2),
(4,'Automóvel','Carro','SP','11 957472-7474',3),
(5,'Automóvel','Carro','SP','11 957472-7474',3)


SELECT
Usuario.Contato AS 'Tel para Contato',
Anuncio.Classificacao AS 'Classificação',
COUNT (Anuncio.Descricao) AS 'Descrição',
Anuncio.Regiao  AS  'Região'
FROM Usuario
RIGHT JOIN Anuncio ON Usuario.Id_Usuario = Anuncio.FK_Id_Usuario 
WHERE Anuncio.Classificacao  LIKE '%A%'  AND Anuncio.Descricao  =  'Carro' 

GROUP BY  Anuncio.Classificacao,
Usuario.Contato,
Anuncio.Regiao
