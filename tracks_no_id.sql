SELECT 
    a.Title AS AlbumName, 
    mt.Name AS MediaType, 
    g.Name AS Genre
FROM Track t
JOIN Album a ON t.AlbumId = a.AlbumId
JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
JOIN Genre g ON t.GenreId = g.GenreId


