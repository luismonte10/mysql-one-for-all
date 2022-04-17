SELECT 
    COUNT(DISTINCT mus.music_name) AS cancoes,
    COUNT(DISTINCT art.artist_name) AS artistas,
    COUNT(DISTINCT alb.album_name) AS albuns
FROM
    SpotifyClone.musics AS mus,
    SpotifyClone.artists AS art,
    SpotifyClone.albuns AS alb