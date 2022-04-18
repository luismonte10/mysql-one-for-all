SELECT 
	art.artist_name AS artista,
    alb.album_name AS album,
    COUNT(fol.artist_id) AS seguidores
FROM
    SpotifyClone.albuns AS alb
		INNER JOIN
	SpotifyClone.artists AS art ON art.artist_id = alb.artist_id
		INNER JOIN
	SpotifyClone.follows AS fol ON fol.artist_id = alb.artist_id
GROUP BY art.artist_name, alb.album_name
ORDER BY COUNT(fol.artist_id) DESC, art.artist_name, alb.album_name;