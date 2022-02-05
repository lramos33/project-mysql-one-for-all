SELECT 
	us.nome_usuario AS usuario, 
  COUNT(hi.usuario_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(ca.duracao_segundos / 60), 2) AS total_minutos
    
FROM SpotifyClone.usuarios AS us

INNER JOIN SpotifyClone.historico_de_reproducoes AS hi 
ON us.usuario_id = hi.usuario_id

INNER JOIN SpotifyClone.cancoes AS ca
ON hi.cancao_id = ca.cancao_id

GROUP BY us.nome_usuario
ORDER BY nome_usuario ASC;
