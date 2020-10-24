CREATE TABLE [dbo].[GamePlayerBoard] (
    [GamePlayerBoardID] INT IDENTITY (1, 1) NOT NULL,
    [BoardID]           INT NOT NULL,
    [GamePlayerPieceID] INT NULL,
    CONSTRAINT [PK_GamePlayerBoard] PRIMARY KEY CLUSTERED ([GamePlayerBoardID] ASC),
    CONSTRAINT [FK_GamePlayerBoard_Board] FOREIGN KEY ([BoardID]) REFERENCES [dbo].[Board] ([BoardID]),
    CONSTRAINT [FK_GamePlayerBoard_GamePlayerPiece] FOREIGN KEY ([GamePlayerPieceID]) REFERENCES [dbo].[GamePlayerPiece] ([GamePlayerPieceID])
);

