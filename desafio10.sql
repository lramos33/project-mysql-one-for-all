SELECT
	ca.nome_cancao AS nome,
  COUNT(hi.cancao_id) AS reproducoes

FROM SpotifyClone.cancoes AS ca

INNER JOIN SpotifyClone.historico_de_reproducoes AS hi
ON ca.cancao_id = hi.cancao_id

INNER JOIN SpotifyClone.usuarios AS us
ON hi.usuario_id = us.usuario_id

INNER JOIN SpotifyClone.planos AS pl
ON us.id_plano = pl.id_plano

WHERE us.id_plano = 1 OR us.id_plano = 4

GROUP BY nome
ORDER BY nome ASC;
