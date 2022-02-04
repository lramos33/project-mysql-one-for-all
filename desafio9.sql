SELECT 
	COUNT(hi.usuario_id) AS quantidade_musicas_no_historico
    
FROM SpotifyClone.historico_de_reproducoes AS hi

INNER JOIN SpotifyClone.usuarios AS us
ON hi.usuario_id = us.usuario_id

WHERE us.nome_usuario = 'Bill'

ORDER BY quantidade_musicas_no_historico ASC;
