CREATE TABLE [dbo].[articleTB]
(
  [articleId] INT NOT NULL PRIMARY KEY,
  [title] NVARCHAR(250) NOT NULL,
  [author] int NOT NULL,
  [content] TEXT,
  [publishing_date] DATETIME NOT NULL,
  [articleType] NVARCHAR(10) NOT NULL CHECK (articleType in ('Guide','Review','How To', 'Travel')),

  Foreign Key (author) REFERENCES dbo.editorTB(editorID) ON UPDATE CASCADE
);

