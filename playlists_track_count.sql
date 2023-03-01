SELECT 
    pl.name AS Playlist_Name,
    COUNT(t.TrackId) AS Number_of_Tracks 
FROM Playlist pl
JOIN PlaylistTrack pt ON pl.PlayListId = pt.PlayListId
JOIN Track t ON pt.TrackId = t.TrackId
GROUP BY pl.name
