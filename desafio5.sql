SELECT 
    mus.music_name AS cancao,
    COUNT(mus.music_name) AS reproducoes
FROM
    SpotifyClone.musics AS mus
        INNER JOIN
    SpotifyClone.history AS his ON his.music_id = mus.music_id
GROUP BY mus.music_name
ORDER BY COUNT(mus.music_name) DESC, mus.music_name ASC
LIMIT 2;