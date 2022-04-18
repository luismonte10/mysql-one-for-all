SELECT 
	COUNT(hi.music_id) AS quantidade_musicas_no_historico
FROM
	SpotifyClone.users AS us
		INNER JOIN
	SpotifyClone.history AS hi ON hi.user_id = us.user_id
WHERE us.user_name = 'Bill';