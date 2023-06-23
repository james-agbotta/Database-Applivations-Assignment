CREATE TABLE [dbo].[commentstb]
(
  [CommentID] INT NOT NULL PRIMARY KEY,
  [userID] INT NOT NULL,
  [comment] NVARCHAR(500) NOT NULL,
  [commentType] NVARCHAR(10) NOT NULL CHECK(commentType in ('Tip', 'Quesiton', 'Comment' )),
  [commentDate] DATETIME  NOT NULL, 

  Foreign Key (userID) REFERENCES [dbo].[usertb](ID)
)
