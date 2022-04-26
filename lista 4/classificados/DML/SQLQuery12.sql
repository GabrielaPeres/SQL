USE db_classificados1

INSERT INTO Usuario
VALUES
(1, '356.452.54.98','Anunciante','SP','11 957472-7474'),
(2,'654.463.98.785','Anunciante','RJ','21 96820-6290'),
(3,'572.582.78.10','Anunciante','SP','11 96830-7247')

INSERT INTO Anuncio 
VALUES
(1,'Autom�vel','Carro','SP','11 957472-7474',1),
(2,'Autom�vel','Caminh�o','SP','11 957472-7474',3),
(3,'Im�vel','Casa','SP','11 957472-7474',2),
(4,'Autom�vel','Carro','SP','11 957472-7474',3),
(5,'Autom�vel','Carro','SP','11 957472-7474',3)


SELECT
Usuario.Contato AS 'Tel para Contato',
Anuncio.Classificacao AS 'Classifica��o',
COUNT (Anuncio.Descricao) AS 'Descri��o',
Anuncio.Regiao  AS  'Regi�o'
FROM Usuario
RIGHT JOIN Anuncio ON Usuario.Id_Usuario = Anuncio.FK_Id_Usuario 
WHERE Anuncio.Classificacao  LIKE '%A%'  AND Anuncio.Descricao  =  'Carro' 

GROUP BY  Anuncio.Classificacao,
Usuario.Contato,
Anuncio.Regiao
