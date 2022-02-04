SELECT 
	ca.nome_cancao AS cancao, 
	count(hi.cancao_id) AS reproducoes
    
FROM SpotifyClone.historico_de_reproducoes AS hi

INNER JOIN SpotifyClone.cancoes AS ca
ON hi.cancao_id = ca.cancao_id

GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
