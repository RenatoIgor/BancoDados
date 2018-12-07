-- a. Recuperar os números das figurinhas existentes de um determinado álbum de um usuário
SELECT numero FROM figurinha JOIN figurinhaDoUsuario ON figurinha.ID = figurinhaDoUsuario.figurinhaID WHERE usuarioEmail = "ana@email.com" AND albumNome = "THE WITCHER";

-- b. Recuperar os números das figurinhas faltantes para um álbum de um determinado usuário
SELECT a.numero FROM (SELECT * FROM figurinha WHERE albumNome = "THE WITCHER") AS a LEFT JOIN
(SELECT * FROM figurinha JOIN figurinhaDoUsuario ON figurinha.ID = figurinhaDoUsuario.figurinhaID WHERE usuarioEmail = "ana@email.com" AND albumNome = "THE WITCHER") AS b ON a.ID = b.ID WHERE b.ID IS NULL;

-- c. O percentual de conclusão de cada álbum (cuidado para não contar as repetidas!)
SELECT usuarioEmail, A.albumNome, ((figurinhasPossuidas * 100) / totalFigurinhas) AS porcentagem FROM (SELECT usuarioEmail, albumNome, COUNT(ID) as figurinhasPossuidas FROM figurinha JOIN figurinhaDoUsuario ON ID = figurinhaID GROUP BY usuarioEmail, albumNome) AS A JOIN (SELECT albumNome, COUNT(ID) AS totalFigurinhas FROM figurinha GROUP BY albumNome) AS B WHERE A.albumNome = B.albumNome;

-- e. Quais são as figurinhas repetidas, com as suas quantidades, de um álbum de um usuário (para momento de uma troca)
SELECT ID, usuarioEmail, albumNome, quantidade FROM figurinha JOIN figurinhaDoUsuario ON ID = figurinhaID WHERE quantidade > 1 AND usuarioEmail = "ana@email.com" AND albumNome = "THE WITCHER";

-- g. Exibir as mensagens enviadas e recebidas por um usuário, em ordem cronológica inversa (as conversas mais recentes aparecem primeiro)
SELECT * FROM usuarioMensagens WHERE usuarioEmail = "ana@email.com" OR usuarioDestEmail = "ana@email.com" ORDER BY dia DESC;


