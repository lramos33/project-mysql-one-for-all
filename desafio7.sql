SELECT 
	ar.nome_artista AS artista,
  al.nome_album AS album,
  COUNT(us.artista_id) AS seguidores

FROM SpotifyClone.artistas AS ar

INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id

INNER JOIN SpotifyClone.usuario_segue_artista AS us
ON ar.artista_id = us.artista_id

GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;
