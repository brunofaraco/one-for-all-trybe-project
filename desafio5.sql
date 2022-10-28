SELECT 
    son.songs_name AS 'cancao',
    COUNT(his.fk_history_songs_id) AS 'reproducoes'
FROM
    SpotifyClone.history AS his
        INNER JOIN
    SpotifyClone.songs AS son ON son.songs_id = his.fk_history_songs_id
GROUP BY son.songs_id
ORDER BY reproducoes DESC , cancao
LIMIT 2;