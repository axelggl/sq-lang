SELECT
    artists.Name AS ArtistName,
    albums.Title AS AlbumName,
    tracks.Name AS TrackName,
    ROUND(tracks.Bytes / 1024.0, 1024.0, 2) || ' MB' AS MegaBytes
FROM artists
    JOIN albums ON artists.ArtistId = albums.ArtistId
    JOIN tracks ON albums.AlbumId = tracks.AlbumId
WHERE albums.Title = 'American Idiot';
