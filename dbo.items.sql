CREATE TABLE [dbo].[items] (
    [id]          INT          NOT NULL IDENTITY,
    [name]        VARCHAR (10) NOT NULL,
    [description] VARCHAR (50) NULL,
    [size]        VARCHAR (10) NULL,
    [price]       MONEY        NOT NULL,
    [vat]         FLOAT (53)   NOT NULL,
    CONSTRAINT [PK_items] PRIMARY KEY CLUSTERED ([id] ASC)
);

