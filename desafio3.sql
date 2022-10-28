SELECT 
    user_name AS 'usuario',
    COUNT(*) AS 'qt_de_musicas_ouvidas',
    ROUND(SUM(songs_duration) / 60, 2) AS 'total_minutos'
FROM
    SpotifyClone.user AS us
        INNER JOIN
    SpotifyClone.history AS his ON his.fk_history_user_id = us.user_id
        INNER JOIN
    SpotifyClone.songs AS son ON son.songs_id = his.fk_history_songs_id
GROUP BY us.user_name
ORDER BY us.user_name ASC;