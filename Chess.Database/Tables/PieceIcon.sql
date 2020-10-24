CREATE TABLE [dbo].[PieceIcon] (
    [PieceIconID] INT          NOT NULL,
    [IconCode]    VARCHAR (50) NOT NULL,
    [IconPath]    VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_PieceIcon] PRIMARY KEY CLUSTERED ([PieceIconID] ASC)
);

