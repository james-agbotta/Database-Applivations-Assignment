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

INSERT INTO dbo.consumertb (Id, userID, screenName, email, location, bio)
SELECT TOP 10
  ROW_NUMBER() OVER (ORDER BY ID) AS Id,
  ID AS userID,
  CONCAT(first_name, last_name) AS screenName,
  CONCAT(first_name, last_name, '@example.com') AS email,
  'Unknown' AS location,
  'This is the bio for ' + first_name AS bio
FROM dbo.usertb;
