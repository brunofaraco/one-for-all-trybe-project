SELECT 
    son.songs_name AS 'nome', COUNT(son.songs_name) AS 'reproducoes'
FROM
    SpotifyClone.user AS us
        INNER JOIN
    SpotifyClone.history AS his ON us.user_id = his.fk_history_user_id
        INNER JOIN
    SpotifyClone.songs AS son ON son.songs_id = his.fk_history_songs_id
        INNER JOIN
    SpotifyClone.plan AS pla ON pla.plan_id = us.fk_user_plan_id
WHERE
    pla.plan_type IN ('gratuito' , 'pessoal')
GROUP BY son.songs_name
ORDER BY son.songs_name;