/*Criar o banco de dados musica*/
CREATE DATABASE musica;

/*Criar Tabela usuario*/

CREATE TABLE usuario(
IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(100) NOT NULL,
Permicao VARCHAR(100) NOT NULL,
Senha VARCHAR(20) NOT NULL,
Email VARCHAR(100) NOT NULL

);

/*Criar a tabela estilo*/
CREATE TABLE estilo(
IdEstilo INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(50) NOT NULL
);

/*Criar a tabela artista*/
CREATE TABLE artista(
IdArtista INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(50),

-- Adicionar o FK do estilo
IdEstilo INT FOREIGN KEY REFERENCES estilo(IdEstilo)
);

/*Criar a Tabela ALBUM*/
CREATE TABLE album(
IdAlbum INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(50) NOT NULL,
DataLacamento DATETIME,
QtdMinutos INT,

-- Adicionar o FK do Artista
IdArtista INT FOREIGN KEY REFERENCES artista(IdArtista)
);

