/*Criar Banco de Dados*/
CREATE DATABASE boletim;

/*Usamos o banco efetivamente*/
/*USE boletim;*/

/*Para Excluir o banco :*/
/*DROP DATABASE botetim;*/

/*Criar a tabela alunos*/
/*IDENTITY -> Gera os IDs automaticamente de forma sequencial */
CREATE TABLE aluno (
	IdAluno INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT

);

/*Criar a tabela de matérias*/
CREATE TABLE materia (
	IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
	Titulo VARCHAR(50) NOT NULL
);
/*Criar a tabela trabalho*/
CREATE TABLE trabalho (
	IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
	Nota DECIMAL,

	--Chamar as chaves estrangeiras (Foreign Key)

	IdAluno INT FOREIGN KEY REFERENCES  aluno(IdAluno),
	IdMateria INT FOREIGN KEY REFERENCES materia(IdMateria)
);

/*Incluir a coluna esquecida: ' DATA DE ENTREGA '*/
ALTER TABLE trabalho ADD DataEntrega DATETIME;

/*Criar uma coluna de teste para excluí-la em seguida*/
ALTER TABLE trabalho ADD teste INT;
--Excluir a coluna teste 
ALTER TABLE trabalho DROP COLUMN teste;
