SELECT
    artists.name AS ArtistName,
    albums.name AS AlbumName,
    tracks.name AS TrackName,
    ROUND(tracks.size / 1024 / 1024, 2) || ' MB' AS MegaBytes
FROM artists
    JOIN albums ON artists.id = albums.artist_id
    JOIN tracks ON albums.id = tracks.album_id
WHERE albums.name = 'American Idiot'
ORDER BY tracks.track_number;
