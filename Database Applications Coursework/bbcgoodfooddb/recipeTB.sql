CREATE TABLE [dbo].[recipetb]
(
  [recipeID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  [title] NVARCHAR(80) NOT NULL ,
  [intro] NVARCHAR(250) NOT NULL,
  [author] INT,
  [serving_size] INT NOT NULL check (serving_size > 1),
  [difficulty] NVARCHAR(12) check (difficulty in ('Easy','More Effort', 'A challenge' )),
  [rating] INT check (rating >=1 AND rating <= 5),
  [diet] INT,
  [cuisine] INT,
  [meal_type] INT,
  [preptime] INT DEFAULT(0),
  [cookTime] INT DEFAULT(0),
  [instructions] TEXT,
  [nutrition] INT,




Foreign Key (author) REFERENCES dbo.usertb(ID),
Foreign Key (nutrition) REFERENCES dbo.nutritiontb(ID)
);
