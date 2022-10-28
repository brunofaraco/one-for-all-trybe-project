SELECT DISTINCT
    art.artist_name AS 'artista',
    alb.album_name AS 'album',
    COUNT(fa.fk_fa_user_id) AS 'seguidores'
FROM
    SpotifyClone.artist AS art
        INNER JOIN
    SpotifyClone.album AS alb ON alb.fk_album_artist_id = art.artist_id
        INNER JOIN
    SpotifyClone.fa AS fa ON fa.fk_fa_artist_id = art.artist_id
GROUP BY art.artist_id, alb.album_name
ORDER BY seguidores DESC;