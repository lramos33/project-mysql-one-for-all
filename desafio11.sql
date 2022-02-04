SELECT
	nome_cancao AS nome_musica,
  CASE
		WHEN nome_cancao LIKE '%Streets%' THEN REPLACE(nome_cancao, 'Streets', 'Code Review')
    WHEN nome_cancao LIKE '%Her Own%' THEN REPLACE(nome_cancao, 'Her Own', 'Trybe')
    WHEN nome_cancao LIKE '%Inner Fire%' THEN REPLACE(nome_cancao, 'Inner Fire', 'Project')
    WHEN nome_cancao LIKE '%Silly%' THEN REPLACE(nome_cancao, 'Silly', 'Nice')
    WHEN nome_cancao LIKE '%Circus%' THEN REPLACE(nome_cancao, 'Circus', 'Pull Request')
	END AS novo_nome
    
FROM SpotifyClone.cancoes

HAVING novo_nome IS NOT NULL
ORDER BY nome_cancao ASC;
