CREATE TABLE [dbo].[GameHistory] (
    [ID]                INT IDENTITY (1, 1) NOT NULL,
    [GamePlayerBoardID] INT NOT NULL,
    [BoardID]           INT NOT NULL,
    [PieceID]           INT NULL,
    [GamePlayerID]      INT NULL,
    CONSTRAINT [PK_GameHistory] PRIMARY KEY CLUSTERED ([ID] ASC)
);

