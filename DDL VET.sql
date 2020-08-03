/*Criar o banco de dados Clinica*/
CREATE DATABASE vet;

/*Criar a tabela clinica*/
CREATE TABLE clinica(
IdClinica INT PRIMARY KEY IDENTITY NOT NULL,
 Nome VARCHAR(100) NOT NULL,
 Endereco VARCHAR(100) NOT NULL
);

/*Criei a tabela Dono*/
CREATE TABLE  dono(
IdDono INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(100) NOT NULL
);

/*Criei a tabela Tipo pet*/
CREATE TABLE tipopet(
IdTipoPet INT PRIMARY KEY IDENTITY NOT NULL,
Descricao VARCHAR(150)
);

/*Criei a tabela de veterinários*/
CREATE TABLE veterinario(
IdVeterinario INT PRIMARY KEY NOT NULL,
Nome VARCHAR(100) NOT NULL,
CRVM INT,

-- Adicionar a FK da Clinica
IdClinica INT FOREIGN KEY REFERENCES clinica(IdClinica)
);

/*Criei a tabela raca*/
CREATE TABLE raca(
IdRaca INT PRIMARY KEY IDENTITY NOT NULL,
Descricao VARCHAR(150),

-- Adicionar a FK do Tipo Pet
IdTipoPet INT FOREIGN KEY REFERENCES tipopet(IdTipoPet)
);

/*Criei a tabela pet*/
CREATE TABLE pet(
IdPet INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(80),
DataNascimento DATETIME,

-- Adicionar a FK do dono e da raça
IdDono INT FOREIGN KEY REFERENCES dono(IdDono),
IdRaca INT FOREIGN KEY REFERENCES raca(IdRaca)
);



/*Criei a tabela Atendimento*/
CREATE TABLE atendimento (
IdAtendimento INT PRIMARY KEY IDENTITY NOT NULL,
Descricao VARCHAR(150),
DataAtendimento DATETIME,

--Adicionar a FK VET E PET
IdVeterinario INT FOREIGN KEY REFERENCES veterinario(IdVeterinario),
IdPet INT FOREIGN KEY REFERENCES pet(IdPet)

);

