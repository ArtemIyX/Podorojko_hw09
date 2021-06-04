CREATE DATABASE Library;
USE Library;
CREATE TABLE [dbo].[Author] (
    [id]   INT           IDENTITY (1, 1) NOT NULL,
    [name] NVARCHAR (50) NULL,
    CONSTRAINT [Author_pk] PRIMARY KEY NONCLUSTERED ([id] ASC)
);
CREATE TABLE [dbo].[Book] (
    [id]        INT            IDENTITY (1, 1) NOT NULL,
    [title]     NVARCHAR (150) NULL,
    [cost]      INT            NULL,
    [amount]    INT            NULL,
    [author_id] INT            NULL,
    CONSTRAINT [Book_pk] PRIMARY KEY NONCLUSTERED ([id] ASC),
    CONSTRAINT [Book_Author_id_fk] FOREIGN KEY ([author_id]) REFERENCES [dbo].[Author] ([id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Book_title_uindex]
    ON [dbo].[Book]([title] ASC);

