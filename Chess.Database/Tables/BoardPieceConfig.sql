CREATE TABLE [dbo].[BoardPieceConfig] (
    [BoardPieceConfigID] INT NOT NULL,
    [BoardID]            INT NOT NULL,
    [PieceID]            INT NOT NULL,
    CONSTRAINT [PK_BoardPieceConfig] PRIMARY KEY CLUSTERED ([BoardPieceConfigID] ASC),
    CONSTRAINT [FK_BoardPieceConfig_Board] FOREIGN KEY ([BoardID]) REFERENCES [dbo].[Board] ([BoardID]),
    CONSTRAINT [FK_BoardPieceConfig_Piece] FOREIGN KEY ([PieceID]) REFERENCES [dbo].[Piece] ([PieceID])
);

