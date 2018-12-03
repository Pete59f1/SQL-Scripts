--CREATE TABLE Ex31Person
--(
--	Id int identity (1, 1) PRIMARY KEY,
--	Navn nvarchar(50)
--)

--CREATE TABLE Ex31Læge
--(
--	Id int PRIMARY KEY,
--	Lønramme nvarchar(5)

--	CONSTRAINT Ex31Læge_Id_FK FOREIGN KEY (Id)
--	REFERENCES Ex31Person (Id)
--)

--CREATE PROCEDURE IndsætLæge
--@Navn nvarchar(50),
--@Lønramme nvarchar(10)

--AS

--INSERT INTO Ex31Person VALUES (@Navn)
--INSERT INTO Ex31Læge VALUES (@Lønramme)
--DECLARE @LastValue AS int;
--SET @LastValue = (SELECT SCOPE_IDENTITY());

--EXEC IndsætLæge 'Ib Larsson', 'D'

--CREATE PROCEDURE VisLæge
--@Id int

--AS
--SELECT PE.Id, Navn, Lønramme FROM Ex31Person AS PE JOIN Ex31Læge AS LÆ ON PE.Id = LÆ.Id

--EXEC VisLæge 3;

--EXEC IndsætLæge 'Bo Larsson', 'L'
--EXEC IndsætLæge 'Ko Larsson', 'M'
--EXEC IndsætLæge 'Op Larsson', 'K'
--EXEC IndsætLæge 'Do Larsson', 'P'

--EXEC VisLæge 3;