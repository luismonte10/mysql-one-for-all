SELECT 
    us.user_name AS usuario,
    COUNT(mu.music_name) AS qtde_musicas_ouvidas,
    ROUND(SUM(mu.seconds_duraction) / 60, 2) AS total_minutos
FROM
    SpotifyClone.users AS us
        JOIN
    history AS hi ON hi.user_id = us.user_id
        JOIN
    musics AS mu ON mu.music_id = hi.music_id
GROUP BY us.user_name;