SELECT 
    user_name AS 'usuario',
    IF(MAX(YEAR(his.history_play_date)) > 2020,
        'Usuário ativo',
        'Usuário inativo') AS 'status_usuario'
FROM
    SpotifyClone.user AS us
        INNER JOIN
    SpotifyClone.history AS his ON his.fk_history_user_id = us.user_id
GROUP BY us.user_id
ORDER BY user_name ASC;