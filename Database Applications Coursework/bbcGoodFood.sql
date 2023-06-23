create DATABASE bbcgoodfoodDB;

-- CREATE usertable
CREATE TABLE dbo.usertb(
ID int IDENTITY(10000000,1) NOT NULL PRIMARY KEY,
first_name NVARCHAR(60) NOT NULL,
last_name NVARCHAR(60) NOT Null,
lastLogin DATETIME NOT NULL,
userpassword NVARCHAR(15) NOT NULL CHECK (userpassword LIKE '%[A-Z]%' AND userpassword LIKE '%[a-z]%' AND userpassword LIKE '%[0-9]%' AND LEN(userpassword) >= 8),

);



-- CREATE editor
CREATE TABLE [dbo].[editortb]
(
  editorID INT NOT NULL PRIMARY KEY,
  userID INT,
  department NVARCHAR(20) NOT NULL,
  bio TEXT,

Foreign Key (userID) REFERENCES dbo.usertb(id)
);


-- CREAte Consumer
CREATE TABLE [dbo].[consumertb]
(
  [Id] INT NOT NULL PRIMARY KEY,
  [userID] int,
  [screenName] NVARCHAR(20) NOT NUll,
  [email] NVARCHAR(80) NOT NUll ,
  [location] NVARCHAR(80),
  [bio] NVARCHAR(160),

Foreign Key (userID) REFERENCES dbo.usertb(id)

);

--CREATe Article
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




CREATE TABLE [dbo].[nutritiontb]
(
  [Id] INT NOT NULL PRIMARY KEY,
  [kcal] INT NOT NUll,
  [fat] INT,
  [saturates] INT,
  [carbs] INT,
  [sugars] INT,
  [fibre] INT,
  [protein] INT,
  [salt] DECIMAL,



)


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

