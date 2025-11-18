CREATE TABLE [Table_Artist] (
    [ArtistID] INT IDENTITY (1, 1) NOT NULL,
    [ArtistName] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Table_Artist] PRIMARY KEY  ([ArtistID])
);


CREATE TABLE [Table_Playlist] (
    [PlaylistID] INT IDENTITY (1, 1) NOT NULL,
    [PlaylistName] NVARCHAR (100) NOT NULL,
    [UserID] INT NOT NULL,
    [LengthOfPlaylist] TIME (0) NOT NULL,
    CONSTRAINT [PK_Table_Playlist] PRIMARY KEY ([PlaylistID]),
    CONSTRAINT [FK_Playlist_User] FOREIGN KEY ([UserID]) REFERENCES [Table_User] ([UserID])
);

CREATE TABLE [Table_Playlist_Song] (
    [SongID] INT NOT NULL,
    [PlaylistID] INT NOT NULL,
    CONSTRAINT [FK_Playlist_Song_PlaylistID] FOREIGN KEY ([PlaylistID]) REFERENCES [Table_Playlist] ([PlaylistID]),
    CONSTRAINT [FK_Playlist_Song_SongID] FOREIGN KEY ([SongID]) REFERENCES [Table_Song] ([SongID])
);

CREATE TABLE [Table_Song] (
    [SongID] INT IDENTITY (1, 1) NOT NULL,
    [Title] NVARCHAR (100) NOT NULL,
    [Album] NVARCHAR (100) NULL,
    [Length] TIME (0) NOT NULL,
    CONSTRAINT [PK_Table_Song] PRIMARY KEY ([SongID])
);

CREATE TABLE [Table_Song_Artist] (
    [SongID] INT NOT NULL,
    [ArtistID] INT NOT NULL,
    CONSTRAINT [FK_Song_Artist_Artist] FOREIGN KEY ([ArtistID]) REFERENCES [Table_Artist] ([ArtistID]),
    CONSTRAINT [FK_Song_Artist_Song] FOREIGN KEY ([SongID]) REFERENCES [Table_Song] ([SongID])
);