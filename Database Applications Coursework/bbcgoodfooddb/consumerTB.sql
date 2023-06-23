CREATE TABLE [dbo].[consumertb]
(
  Id INT NOT NULL PRIMARY KEY,
  userID int,
  screen_name NVARCHAR(20) NOT NUll,
  email NVARCHAR(80) NOT NUll ,
  location NVARCHAR(80),
  bio NVARCHAR(160),

Foreign Key (userID) REFERENCES dbo.usertb(id)

);
