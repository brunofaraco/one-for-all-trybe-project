SELECT
  son.songs_name AS nome_musica,
    CASE
    WHEN son.songs_name LIKE '%Bard%' THEN REPLACE (songs_name, 'Bard', 'QA')
    WHEN son.songs_name LIKE '%Amar%' THEN REPLACE (songs_name, 'Amar', 'Code Review')
    WHEN son.songs_name LIKE '%Pais%' THEN REPLACE (songs_name, 'Pais', 'Pull Requests')
    WHEN son.songs_name LIKE '%SOUL%' THEN REPLACE (songs_name, 'SOUL', 'CODE')
    WHEN son.songs_name LIKE '%SUPERSTAR%' THEN REPLACE (songs_name, 'SUPERSTAR', 'SUPERDEV')
    END AS novo_nome
FROM SpotifyClone.songs AS son
WHERE
son.songs_name LIKE '%Bard%' OR
son.songs_name LIKE '%Amar%' OR
son.songs_name LIKE '%Pais%' OR
son.songs_name LIKE '%SOUL%' OR
son.songs_name LIKE '%SUPERSTAR%'
ORDER BY novo_nome DESC;