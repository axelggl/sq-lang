SELECT genres.Name, COUNT(tracks.TrackId) AS NumberOfTracks
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
GROUP BY genres.Name, tracks.GenreId;