--CREATE TABLE Ex31Person
--(
--	Id int identity (1, 1) PRIMARY KEY,
--	Navn nvarchar(50)
--)

--CREATE TABLE Ex31L�ge
--(
--	Id int PRIMARY KEY,
--	L�nramme nvarchar(5)

--	CONSTRAINT Ex31L�ge_Id_FK FOREIGN KEY (Id)
--	REFERENCES Ex31Person (Id)
--)

--CREATE PROCEDURE Inds�tL�ge
--@Navn nvarchar(50),
--@L�nramme nvarchar(10)

--AS

--INSERT INTO Ex31Person VALUES (@Navn)
--INSERT INTO Ex31L�ge VALUES (@L�nramme)
--DECLARE @LastValue AS int;
--SET @LastValue = (SELECT SCOPE_IDENTITY());

--EXEC Inds�tL�ge 'Ib Larsson', 'D'

--CREATE PROCEDURE VisL�ge
--@Id int

--AS
--SELECT PE.Id, Navn, L�nramme FROM Ex31Person AS PE JOIN Ex31L�ge AS L� ON PE.Id = L�.Id

--EXEC VisL�ge 3;

--EXEC Inds�tL�ge 'Bo Larsson', 'L'
--EXEC Inds�tL�ge 'Ko Larsson', 'M'
--EXEC Inds�tL�ge 'Op Larsson', 'K'
--EXEC Inds�tL�ge 'Do Larsson', 'P'

--EXEC VisL�ge 3;