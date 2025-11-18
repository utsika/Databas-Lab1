--SELECT Table_Playlist.PlaylistName, Table_User.UserName, Table_Playlist.LengthOfPlaylist
--FROM Table_Playlist 
--INNER JOIN Table_User ON Table_Playlist.UserID=Table_User.UserID;

--SELECT * FROM [Table_Playlist];


--SELECT * FROM [Table_Song];

--UPDATE Table_Playlist
--SET PlaylistName = 'Blandat'
--WHERE PlaylistID = 4;

--SELECT * FROM [Table_Playlist_Song];
--SELECT * FROM [Table_Artist];
--SELECT * FROM [Table_Song_Artist];

--SELECT 
--    Table_Song.Title, 
 --   Table_Artist.ArtistName
--FROM Table_Song
--INNER JOIN Table_Song_Artist ON Table_Song.SongID = Table_Song_Artist.SongID
--INNER JOIN Table_Artist ON Table_Artist.ArtistID = Table_Song_Artist.ArtistID;

--UPDATE [Table_Song]
--SET [Album] = 'Kid A'
--WHERE [SongID] = 12;

--INSERT INTO [Table_Song] ([SongID], [Title], [Album], [Length]) VALUES 
--(17, 'Guess feat billie eilish', 'Brat and it''s completely different but also still brat', '00:02:23');

--SELECT * FROM [Table_Song];

--ALTER TABLE [Table_Song_Artist]
--DROP CONSTRAINT [FK_Song_Artist_Song];

--ALTER TABLE [Table_Playlist_Song]
--DROP CONSTRAINT [FK_Playlist_Song_SongID];

--DELETE FROM [Table_Song]
--WHERE [SongID] = 17;

--SELECT * FROM [Table_Song];

--ALTER TABLE [Table_Song_Artist]
--ADD CONSTRAINT [FK_Song_Artist_Song] FOREIGN KEY ([SongID]) REFERENCES [Table_Song] ([SongID]);
--ALTER TABLE [Table_Playlist_Song]
--ADD CONSTRAINT [FK_Playlist_Song_SongID] FOREIGN KEY ([SongID]) REFERENCES [Table_Song] ([SongID]);

--INSERT INTO [Table_Song] ([Title], [Album], [Length]) VALUES 
--('Guess feat billie eilish', 'Brat and it''s completely different but also still brat', '00:02:23');

--SELECT * FROM [Table_Playlist_Song];

--UPDATE [Table_Playlist_Song]
--SET [SongID] = 18
--WHERE [SongID] = 17;