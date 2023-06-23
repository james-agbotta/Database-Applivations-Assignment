CREATE TABLE [dbo].[editortb]
(
  editorID INT NOT NULL PRIMARY KEY,
  userID INT,
  department NVARCHAR(20) NOT NULL,
  bio TEXT,


Foreign Key (userID) REFERENCES dbo.usertb(id)
on update CASCADE on DELETE CASCADE
);

