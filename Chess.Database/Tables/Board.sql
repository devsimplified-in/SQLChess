CREATE TABLE [dbo].[Board] (
    [BoardID]    INT          NOT NULL,
    [XCordinate] SMALLINT     NOT NULL,
    [YCordinate] SMALLINT     NOT NULL,
    [Square]     CHAR (2)     NOT NULL,
    [Color]      VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Board] PRIMARY KEY CLUSTERED ([BoardID] ASC)
);

