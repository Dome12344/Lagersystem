USE master;
GO

IF DB_ID(N'Profil') IS NULL
  CREATE DATABASE Profil;
GO

USE Profil;
GO 

IF OBJECT_ID('user') IS NOT NULL
  DROP TABLE user;
GO


CREATE TABLE user (
  ID INT IDENTITY PRIMARY KEY, 
  username varchar(50),
  passwort varchar(50)
);
CREATE TABLE Notenliste (
  Note INT, 
  ID_Nutzer INT,
  CONSTRAINT pk_Notenid PRIMARY KEY (ID) 

INSERT INTO user (username, passwort) VALUES
  ('Dirk','123456789');

