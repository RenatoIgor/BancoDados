/*
	Scripts criacao das tabelas
usuarioEmailusuarioAlbuns
*/

create database SistemaAlbum;
USE SistemaAlbum;

CREATE TABLE editora( 
		
	id INTEGER AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,

	PRIMARY KEY( id)

);

CREATE TABLE tematica(

	id INTEGER AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,

	PRIMARY KEY( id)
);

CREATE TABLE pontoTroca(
	id INTEGER AUTO_INCREMENT,
	descricao VARCHAR(50) NOT NULL,

	PRIMARY KEY( id)

);

CREATE TABLE tipoFigurinha( 

	id INTEGER AUTO_INCREMENT,
	descricao VARCHAR(50) NOT NULL,

	PRIMARY KEY( id),

	CONSTRAINT chk_tipoFIGURINHA CHECK( descricao = 'cromada' OR descricao = 'normal')
);

CREATE TABLE album(

	nome VARCHAR(50),
	anoLancamento YEAR NOT NULL,
	tematicaID INTEGER NOT NULL,
	editoraID INTEGER,
	
	FOREIGN KEY (tematicaID) REFERENCES tematica (id),
	FOREIGN KEY (editoraID) REFERENCES editora (id),

	PRIMARY KEY(nome)
);


CREATE TABLE pagina(

	id INTEGER AUTO_INCREMENT,
	albumNome VARCHAR(50) NOT NULL,

	FOREIGN KEY (albumNome) REFERENCES album(nome),
	PRIMARY KEY (id)
		

);

CREATE TABLE figurinha(

	id INTEGER AUTO_INCREMENT,
	tipo INTEGER NOT NULL,
	imagen VARCHAR(100) NOT NULL,
	paginaID INTEGER NOT NULL,
	albumNome VARCHAR(50) NOT NULL,
	numero INTEGER NOT NULL,

	FOREIGN KEY (albumNome) REFERENCES album(nome),
	FOREIGN KEY (tipo) REFERENCES tipoFigurinha(id),
	FOREIGN KEY (paginaID) REFERENCES pagina(id),

	CHECK(NUMERO >= 1),

	PRIMARY KEY (id)
	

);

CREATE TABLE usuarioPadrao(

	email VARCHAR (50),
	nome VARCHAR (50) NOT NULL,
	senha VARCHAR (10) NOT NULL,
	preferenciaTroca INTEGER,

	FOREIGN KEY (preferenciaTroca) REFERENCES pontoTroca(id),
	
	PRIMARY KEY(email)
);

CREATE TABLE figurinhaDoUsuario(

	usuarioEmail VARCHAR(50),
	figurinhaID INTEGER ,
	quantidade INTEGER DEFAULT 0,

	FOREIGN KEY (usuarioEmail) REFERENCES usuarioPadrao(email),
	FOREIGN KEY (figurinhaID) REFERENCES figurinha(id),

	CHECK(quantidade >= 0),

	PRIMARY KEY (usuarioEmail,figurinhaID)

	
);



CREATE TABLE usuarioAlbuns(

	usuarioEmail VARCHAR(50),
	albumNome VARCHAR(50),

	FOREIGN KEY (usuarioEmail) REFERENCES usuarioPadrao(email),
	FOREIGN KEY (albumNome) REFERENCES album(nome),

	PRIMARY KEY(usuarioEmail,albumNome)
);


CREATE TABLE usuarioMensagens(

	mensagemID INTEGER AUTO_INCREMENT,
	usuarioEmail VARCHAR(50) NOT NULL,
	usuarioDestEmail VARCHAR(50) NOT NULL,
	dia DATETIME  ,
	descricao VARCHAR(100),

	FOREIGN KEY (usuarioEmail) REFERENCES usuarioPadrao(email),
	FOREIGN KEY (usuarioDestEmail) REFERENCES usuarioPadrao(email),

	
	PRIMARY KEY (mensagemID)

);

CREATE TABLE usuarioTroca(

	id INTEGER,
	usuarioEmail VARCHAR(50) NOT NULL,
	usuarioDestEmail VARCHAR(50) NOT NULL,
	pontoID INTEGER NOT NULL,
	dia DATETIME NOT NULL,
	
	
	FOREIGN KEY (usuarioEmail) REFERENCES usuarioPadrao(email),
	FOREIGN KEY (usuarioDestEmail) REFERENCES usuarioPadrao(email),
	FOREIGN KEY (pontoID) REFERENCES pontoTroca(id),

	PRIMARY KEY(id)

);


CREATE TABLE usuarioGerente(

	email VARCHAR(50),
	nome VARCHAR(50) NOT NULL,
	senha VARCHAR(20) NOT NULL,

	PRIMARY KEY(email)
	
);

CREATE TABLE cadastroAlbum(
	
	gerenteEmail VARCHAR(50),
	albumNome VARCHAR (50) NOT NULL,

	FOREIGN KEY (gerenteEmail) REFERENCES usuarioGerente(email),
	FOREIGN KEY (albumNome) REFERENCES album(nome),
	
	PRIMARY KEY(gerenteEmail,albumNome)

);
