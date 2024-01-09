SELECT genres.Name, COUNT(track.TrackId) AS NumberOfTracks
FROM genres
JOIN tracks ON genres.GenreId = tracks.GenreId
GROUP BY genres.Name, tracks.GenreId;