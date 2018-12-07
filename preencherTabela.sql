use SistemaAlbum;
/*drop database SistemaAlbum;*/
/*inserir editora*/

INSERT INTO editora(nome)  VALUES ('Panini');

/*inserir tematica*/

INSERT INTO tematica(nome) VALUES ('Esporte');
INSERT INTO tematica(nome) VALUES ('Games');
INSERT INTO tematica(nome) VALUES ('Desenho');
INSERT INTO tematica(nome) VALUES ('Filmes');

/*inserir ponto de troca*/

INSERT INTO pontoTroca(descricao) VALUES ('shopping');
INSERT INTO pontoTroca(descricao) VALUES ('praça');
INSERT INTO pontoTroca(descricao) VALUES ('supermercado');

/*inserir album*/

INSERT INTO album(nome,anoLancamento,tematicaID,editoraID) 
VALUES ('COPA DO MUNDO',2018,1,1);

INSERT INTO album(nome,anoLancamento,tematicaID,editoraID) 
VALUES ('THE WITCHER',2018,2,1);

INSERT INTO album(nome,anoLancamento,tematicaID,editoraID) 
VALUES ('VINGADORES',2018,4,1);

/*inserir pagina*/

INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');
INSERT INTO pagina(albumNome) VALUES ('COPA DO MUNDO');

INSERT INTO pagina(albumNome) VALUES ('THE WITCHER');
INSERT INTO pagina(albumNome) VALUES ('THE WITCHER');
INSERT INTO pagina(albumNome) VALUES ('THE WITCHER');
INSERT INTO pagina(albumNome) VALUES ('THE WITCHER');
INSERT INTO pagina(albumNome) VALUES ('THE WITCHER');
INSERT INTO pagina(albumNome) VALUES ('THE WITCHER');
INSERT INTO pagina(albumNome) VALUES ('THE WITCHER');
INSERT INTO pagina(albumNome) VALUES ('THE WITCHER');

INSERT INTO pagina(albumNome) VALUES ('VINGADORES');
INSERT INTO pagina(albumNome) VALUES ('VINGADORES');
INSERT INTO pagina(albumNome) VALUES ('VINGADORES');
INSERT INTO pagina(albumNome) VALUES ('VINGADORES');
INSERT INTO pagina(albumNome) VALUES ('VINGADORES');
INSERT INTO pagina(albumNome) VALUES ('VINGADORES');
INSERT INTO pagina(albumNome) VALUES ('VINGADORES');
INSERT INTO pagina(albumNome) VALUES ('VINGADORES');
INSERT INTO pagina(albumNome) VALUES ('VINGADORES');
INSERT INTO pagina(albumNome) VALUES ('VINGADORES');
INSERT INTO pagina(albumNome) VALUES ('VINGADORES');


/*inserir usuarios */

INSERT INTO usuarioPadrao(email,nome,senha,preferenciaTroca) 
VALUES('fulano@email.com','Fulano','1234',1);

INSERT INTO usuarioPadrao(email,nome,senha,preferenciaTroca) 
VALUES('ana@email.com','Ana Maria','senha',1);

INSERT INTO usuarioPadrao(email,nome,senha,preferenciaTroca) 
VALUES('andre@email.com','Andre','senha123',2);

INSERT INTO usuarioPadrao(email,nome,senha,preferenciaTroca) 
VALUES('bia@email.com','Bianca','abc123',2);

/*inserir gerentes*/
INSERT INTO usuarioGerente(email,nome,senha) 
VALUES('superUser@empresa.com','Paulo Franca','minha@super@senha@');

INSERT INTO usuarioGerente(email,nome,senha) 
VALUES('superUser2@empresa.com','Julia P.','@you@never@know@me');

/*inserir tipo de figurinhas*/


INSERT INTO tipoFigurinha(descricao) VALUES ('normal');
INSERT INTO tipoFigurinha(descricao) VALUES ('cromada');
INSERT INTO tipoFigurinha(descricao) VALUES ('especial');
INSERT INTO tipoFigurinha(descricao) VALUES ('combinada');


/*inserir figurinha*/

INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'COPA DO MUNDO',1);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'COPA DO MUNDO',2);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'COPA DO MUNDO',3);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'COPA DO MUNDO',4);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'COPA DO MUNDO',5);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'COPA DO MUNDO',6);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'COPA DO MUNDO',7);

INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'VINGADORES',1);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'VINGADORES',2);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'VINGADORES',3);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'VINGADORES',4);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'VINGADORES',5);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'VINGADORES',6);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'VINGADORES',7);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'VINGADORES',8);




INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',1);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',2);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',3);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',4);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',5);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',6);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',7);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',8);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',9);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',10);
INSERT INTO figurinha(tipo,imagen,paginaID,albumNome,numero)
VALUES(1,'caminhoDaImg',1,'THE WITCHER',11);



/*inserir cadastrar album*/

INSERT INTO cadastroAlbum(gerenteEmail,albumNome) 
VALUES ('superUser@empresa.com','COPA DO MUNDO');
INSERT INTO cadastroAlbum(gerenteEmail,albumNome) 
VALUES ('superUser@empresa.com','THE WITCHER');
INSERT INTO cadastroAlbum(gerenteEmail,albumNome) 
VALUES ('superUser@empresa.com','VINGADORES');


/*inserir usuario album*/

INSERT INTO usuarioAlbuns(usuarioEmail,albumNome) 
VALUES ('ana@email.com','COPA DO MUNDO');
INSERT INTO usuarioAlbuns(usuarioEmail,albumNome) 
VALUES ('ana@email.com','THE WITCHER');
INSERT INTO usuarioAlbuns(usuarioEmail,albumNome) 
VALUES ('ana@email.com','VINGADORES');

INSERT INTO usuarioAlbuns(usuarioEmail,albumNome) 
VALUES ('bia@email.com','COPA DO MUNDO');
INSERT INTO usuarioAlbuns(usuarioEmail,albumNome) 
VALUES ('bia@email.com','THE WITCHER');

INSERT INTO usuarioAlbuns(usuarioEmail,albumNome) 
VALUES ('andre@email.com','COPA DO MUNDO');

INSERT INTO usuarioAlbuns(usuarioEmail,albumNome) 
VALUES ('fulano@email.com','THE WITCHER');

/*inserir as figurinha de cada usuario*/

INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('ana@email.com',1,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('ana@email.com',2,2);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('ana@email.com',3,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('ana@email.com',4,4);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('ana@email.com',5,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('ana@email.com',15,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('ana@email.com',16,6);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('ana@email.com',17,2);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('ana@email.com',18,2);


INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('bia@email.com',3,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('bia@email.com',4,2);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('bia@email.com',5,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('bia@email.com',8,4);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('bia@email.com',10,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('bia@email.com',14,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('bia@email.com',16,6);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('bia@email.com',17,2);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('bia@email.com',20,2);

INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',3,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',4,2);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',5,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',8,4);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',10,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',11,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',16,6);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',17,2);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',20,2);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',21,2);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',22,1);
INSERT INTO figurinhaDoUsuario(usuarioEmail,figurinhaID,quantidade) 
VALUES('fulano@email.com',23,6);

/*inserir troca entre usuarios*/

INSERT INTO usuarioTroca(id,usuarioEmail,usuarioDestEmail,pontoID,dia)
VALUES (1,'bia@email.com','ana@email.com',1,'2018-10-2 23:00:00');
INSERT INTO usuarioTroca(id,usuarioEmail,usuarioDestEmail,pontoID,dia)
VALUES (2,'bia@email.com','ana@email.com',1,'2018-10-3 23:00:00');
INSERT INTO usuarioTroca(id,usuarioEmail,usuarioDestEmail,pontoID,dia)
VALUES (3,'bia@email.com','ana@email.com',1,'2018-10-4 23:00:00');
INSERT INTO usuarioTroca(id,usuarioEmail,usuarioDestEmail,pontoID,dia)
VALUES (4,'bia@email.com','ana@email.com',1,'2018-10-5 23:00:00');
INSERT INTO usuarioTroca(id,usuarioEmail,usuarioDestEmail,pontoID,dia)
VALUES (5,'fulano@email.com','ana@email.com',1,'2018-10-5 23:00:00');
INSERT INTO usuarioTroca(id,usuarioEmail,usuarioDestEmail,pontoID,dia)
VALUES (6,'bia@email.com','fulano@email.com',1,'2018-10-8 23:00:00');
INSERT INTO usuarioTroca(id,usuarioEmail,usuarioDestEmail,pontoID,dia)
VALUES (7,'fulano@email.com','ana@email.com',1,'2018-10-8 23:00:00');
INSERT INTO usuarioTroca(id,usuarioEmail,usuarioDestEmail,pontoID,dia)
VALUES (8,'bia@email.com','fulano@email.com',1,'2018-10-11 23:00:00');

/*inserir mensagens entre usuarios*/


INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('ana@email.com','fulano@email.com','2018-10-3 15:05:22','Olá, tem alguma figurinha pra trocar?');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('fulano@email.com','ana@email.com','2018-10-3 15:05:55','Opa, tudo bem? tenho sim! ');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('ana@email.com','fulano@email.com','2018-10-3 15:06:30','Tudo bem sim. Por acaso teria figurinha da copa?');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('fulano@email.com','ana@email.com','2018-10-3 15:07:01','Da copa eu não tenho pra trocar. No momento tenho apenas dos Vingadores');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('ana@email.com','fulano@email.com','2018-10-3 15:08:00','Haa, dos Vingadores eu não coleciono. Obrigado');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('fulano@email.com','ana@email.com','2018-10-3 15:08:27','De nada');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('bia@email.com','andre@email.com','2018-10-2','Oi, tudo bem?');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('ana@email.com','bia@email.com','2018-10-2','Tudo sim ');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('bia@email.com','ana@email.com','2018-10-2','tem figurinhas pra trocar?');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('ana@email.com','bia@email.com','2018-10-2','Hoje não tenho');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('bia@email.com','ana@email.com','2018-10-2','Tudo bem então, obrigada');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('ana@email.com','bia@email.com','2018-10-2','De nada, até mais');

INSERT INTO usuarioMensagens(usuarioEmail,usuarioDestEmail,dia,descricao) 
VALUES ('bia@email.com','ana@email.com','2018-10-2','Até mais');






