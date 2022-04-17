SELECT 
    us.user_name AS usuario,
    IF(MAX(hi.activity_date) >= '2021-01-01 00:00:00', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.users AS us
        INNER JOIN
    history AS hi ON hi.user_id = us.user_id
GROUP BY us.user_name;