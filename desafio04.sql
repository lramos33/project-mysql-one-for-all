SELECT 
	us.nome_usuario AS usuario,
  IF(MAX(YEAR(hi.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
    
FROM SpotifyClone.usuarios AS us

INNER JOIN SpotifyClone.historico_de_reproducoes AS hi
ON us.usuario_id = hi.usuario_id

GROUP BY us.nome_usuario
ORDER BY nome_usuario ASC;
