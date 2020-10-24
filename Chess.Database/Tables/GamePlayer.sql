CREATE TABLE [dbo].[GamePlayer] (
    [GamePlayerID] INT IDENTITY (1, 1) NOT NULL,
    [GameID]       INT NOT NULL,
    [PlayerID]     INT NOT NULL,
    CONSTRAINT [PK_GamePlayer] PRIMARY KEY CLUSTERED ([GamePlayerID] ASC),
    CONSTRAINT [FK_GamePlayer_Game] FOREIGN KEY ([GameID]) REFERENCES [dbo].[Game] ([GameID]),
    CONSTRAINT [FK_GamePlayer_Player] FOREIGN KEY ([PlayerID]) REFERENCES [dbo].[Player] ([PlayerID])
);

