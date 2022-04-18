SELECT 
    ROUND(MIN(pl.plan_price), 2) AS faturamento_minimo,
    ROUND(MAX(pl.plan_price), 2) AS faturamento_maximo,
    ROUND(AVG(pl.plan_price), 2) AS faturamento_medio,
    ROUND(SUM(pl.plan_price), 2) AS faturamento_total
FROM
    SpotifyClone.plans AS pl
        INNER JOIN
    SpotifyClone.users AS us ON us.plan_id = pl.plan_id;