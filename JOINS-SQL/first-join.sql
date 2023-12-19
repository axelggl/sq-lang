SELECT albums.Title AS AlbumName, artists.Name AS ArtistName
FROM albums
JOIN artists ON albums.ArtistId = artists.ArtistID
LIMIT 100