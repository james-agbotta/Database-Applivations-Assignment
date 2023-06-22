CREATE DATABASE bbcgoodfoodDB;


--Editor Table
 CREATE TABLE editorTB (
    employeeID INT  PRIMARY KEY,
    firstName VARCHAR(60) NOT NULL,
    lastName VARCHAR(60),


 );

--Consumer Table
CREATE TABLE cusumerTB(
    consumberID INT PRIMARY KEY,
    screenName VARCHAR(60),
    firstName VARCHAR(60),
    lastName VARCHAR(60),
    email VARCHAR(60),
    phoneNumber INT,
    userPassword PASSWORD,


);

-- CREATE TABLE articleTB
CREATE TABLE articleTB(

);

-- CREATE TABLE reviewTB

-- CREATE TABLE recipeTB

-- CREATE TABLE collectionTB

