CREATE TABLE [dbo].[collectionTB]
(
  --Many to many join for Collections
  [Id] INT NOT NULL PRIMARY KEY,
  [collectionName] NVARCHAR(90) NOT NULL,
  [description] NVARCHAR(150),
  [creator] INT NOT NULL, 
  [recipe] INT NOT NULl,


  Foreign Key (creator) REFERENCES dbo.usertb(id) ON UPDATE CASCADE,
  Foreign Key (recipe) REFERENCES [dbo].[recipetb](recipeID) ON UPDATE CASCADE
)
