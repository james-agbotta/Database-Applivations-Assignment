CREATE TABLE dbo.usertb(
ID int IDENTITY(10000000,1) NOT NULL PRIMARY KEY,
first_name NVARCHAR(60) NOT NULL,
last_name NVARCHAR(60) NOT Null,
lastLogin DATETIME NOT NULL,
userpassword NVARCHAR(15) 
);

INSERT INTO dbo.usertb (first_name, last_name, lastLogin, userpassword)
VALUES
  ('John', 'Doe', '2023-06-12 10:23:41', 'Password123'),
  ('Jane', 'Smith', '2023-06-10 15:30:00', 'SecurePwd456'),
  ('Michael', 'Johnson', '2023-06-15 09:45:22', 'Pass123word'),
  ('Emily', 'Davis', '2023-06-09 18:12:10', 'StrongPwd789'),
  ('David', 'Anderson', '2023-06-14 07:55:37', 'P@ssw0rd!'),
  ('Sarah', 'Wilson', '2023-06-13 12:40:59', 'SecretPwd321'),
  ('Matthew', 'Taylor', '2023-06-08 21:17:25', 'Password!23'),
  ('Olivia', 'Brown', '2023-06-11 08:37:49', 'Secure123Pwd'),
  ('Daniel', 'Miller', '2023-06-16 16:58:03', 'Pwd456789'),
  ('Sophia', 'Clark', '2023-06-07 14:29:51', 'Password789'),
  ('James', 'Walker', '2023-06-17 11:05:15', 'SecurePwd123'),
  ('Emma', 'Hall', '2023-06-05 19:43:08', 'P@ssw0rd123'),
  ('William', 'Young', '2023-06-18 06:23:57', 'StrongPwd456'),
  ('Ava', 'White', '2023-06-04 22:10:33', 'Pwd789!'),
  ('Alexander', 'Turner', '2023-06-19 03:51:14', 'Secret123Pwd');

