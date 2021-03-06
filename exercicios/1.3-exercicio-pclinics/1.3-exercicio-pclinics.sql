CREATE DATABASE PCLINICS;
GO


USE PCLINICS;
GO


CREATE TABLE Clinica(
	idClinica TINYINT PRIMARY KEY IDENTITY(1,1),
	endereco VARCHAR(40),
);
GO


CREATE TABLE Veterinario(
	idVeterinario TINYINT PRIMARY KEY IDENTITY(1,1),
	idClinica TINYINT FOREIGN KEY REFERENCES Clinica (idClinica),
	nomeVeterinario VARCHAR(30),
);
GO


CREATE TABLE Pet(
	idPet TINYINT PRIMARY KEY IDENTITY(1,1),
	nomePet VARCHAR(20),
);


CREATE TABLE Consulta(
	idConsulta TINYINT PRIMARY KEY IDENTITY(1,1),
	idVeterinario TINYINT FOREIGN KEY REFERENCES Veterinario (idVeterinario),
	dataConsulta VARCHAR(8),
	nomeVeterinario VARCHAR(30),
	pet VARCHAR(30),
);
GO


CREATE TABLE Raca(
	idRaca TINYINT PRIMARY KEY IDENTITY(1,1),
	idPet TINYINT FOREIGN KEY REFERENCES Pet (idPet),
	nomeRaca VARCHAR(20),
	nomePet VARCHAR(30),
);
GO

CREATE TABLE TipoPet(
	idTipo TINYINT PRIMARY KEY IDENTITY(1,1),
	idRaca TINYINT FOREIGN KEY REFERENCES raca (idRaca),
	tipoPet VARCHAR(30),
);


CREATE TABLE Genero(
	idGenero TINYINT PRIMARY KEY IDENTITY(1,1),
	nomeGenero VARCHAR(30),
);
GO



CREATE TABLE Filmes(
	idFilme SMALLINT PRIMARY KEY IDENTITY(1,1),
	idGenero TINYINT FOREIGN KEY REFERENCES Genero (idGenero),
	tituloFilme VARCHAR(60)
);
GO