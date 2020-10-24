CREATE TABLE [dbo].[Game] (
    [GameID]    INT          IDENTITY (1, 1) NOT NULL,
    [Name]      VARCHAR (50) NOT NULL,
    [StratDate] DATETIME     NOT NULL,
    CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED ([GameID] ASC)
);

