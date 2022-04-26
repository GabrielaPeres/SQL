CREATE DATABASE db_redesocial

USE db_redesocial

CREATE TABLE Usuarios(
Id_Usuario INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(50) NOT NULL,
Email VARCHAR(50) NOT NULL,
Senha VARCHAR(100) NOT NULL,
)

CREATE TABLE Tema(
Id_Tema INT PRIMARY KEY IDENTITY NOT NULL,
Descricao VARCHAR(100) NOT NULL,
)

CREATE TABLE Grupos(
Id_Grupo INT PRIMARY KEY IDENTITY NOT NULL,
 Nome VARCHAR(50) NOT NULL,
 FK_Id_Tema INT NOT NULL,
 FK_Id_Usuario INT NOT NULL,
 FOREIGN KEY (FK_Id_Tema) REFERENCES Tema (Id_Tema),
 FOREIGN KEY (FK_Id_Usuario) REFERENCES Usuarios (Id_Usuario)
)

CREATE TABLE Postagens(
Id_Postagem INT PRIMARY KEY IDENTITY NOT NULL,
Titulo VARCHAR(50) NOT NULL,
Descricao VARCHAR(100) NOT NULL,
FK_Id_Usuario INT NULL,
FK_Id_Tema INT NOT NULL,
FK_Id_Grupo INT NOT NULL,
FOREIGN KEY (FK_Id_Usuario) REFERENCES Usuarios (Id_Usuario),
FOREIGN KEY (FK_Id_Grupo) REFERENCES Grupos (Id_Grupo),
FOREIGN KEY (FK_Id_Tema) REFERENCES Tema (Id_Tema),
)