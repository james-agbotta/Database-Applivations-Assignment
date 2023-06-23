CREATE TABLE [dbo].[editortb]
(
  editorID INT NOT NULL PRIMARY KEY,
  userID INT,
  department NVARCHAR(20) NOT NULL,
  bio TEXT,
  



Foreign Key (userID) REFERENCES dbo.usertb(id)
);

INSERT INTO dbo.editortb (editorID, userID, department, bio)
SELECT TOP 5
  ROW_NUMBER() OVER (ORDER BY ID) AS editorID,
  ID AS userID,
  'Editorial Department' AS department,
  'This is the bio for the editor ' + first_name AS bio
FROM dbo.usertb
WHERE ID NOT IN (SELECT TOP 10 ID FROM dbo.usertb);
