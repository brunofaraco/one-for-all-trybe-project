SELECT 
    CONVERT( MIN(pla.plan_value) , NCHAR) AS 'faturamento_minimo',
    CONVERT( MAX(pla.plan_value) , NCHAR) AS 'faturamento_maximo',
    CONVERT( ROUND(AVG(pla.plan_value), 2) , NCHAR) AS 'faturamento_medio',
    CONVERT( ROUND(SUM(pla.plan_value), 2) , NCHAR) AS 'faturamento_total'
FROM
    SpotifyClone.plan AS pla
        INNER JOIN
    SpotifyClone.user AS us ON us.fk_user_plan_id = pla.plan_id;