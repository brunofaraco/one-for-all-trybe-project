SELECT 
    COUNT(*) AS 'quantidade_musicas_no_historico'
FROM
    SpotifyClone.history AS his
WHERE
    his.fk_history_user_id = 1;