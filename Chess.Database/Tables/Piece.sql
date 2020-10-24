CREATE TABLE [dbo].[Piece] (
    [PieceID]     INT            NOT NULL,
    [Name]        VARCHAR (50)   NOT NULL,
    [Code]        VARBINARY (50) NOT NULL,
    [RaceType]    VARCHAR (50)   NOT NULL,
    [PieceIconID] INT            NOT NULL,
    CONSTRAINT [PK_Piece] PRIMARY KEY CLUSTERED ([PieceID] ASC),
    CONSTRAINT [FK_Piece_PieceIcon] FOREIGN KEY ([PieceIconID]) REFERENCES [dbo].[PieceIcon] ([PieceIconID])
);

