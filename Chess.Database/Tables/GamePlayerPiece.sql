CREATE TABLE [dbo].[GamePlayerPiece] (
    [GamePlayerPieceID] INT IDENTITY (1, 1) NOT NULL,
    [PieceID]           INT NOT NULL,
    [GamePlayerID]      INT NOT NULL,
    CONSTRAINT [PK_GamePlayerPiece] PRIMARY KEY CLUSTERED ([GamePlayerPieceID] ASC),
    CONSTRAINT [FK_GamePlayerPiece_GamePlayer] FOREIGN KEY ([GamePlayerID]) REFERENCES [dbo].[GamePlayer] ([GamePlayerID]),
    CONSTRAINT [FK_GamePlayerPiece_Piece] FOREIGN KEY ([PieceID]) REFERENCES [dbo].[Piece] ([PieceID])
);

