CREATE TABLE KLINIK 
(
	KlinikId INT PRIMARY KEY,
	Navn nvarchar(50),
	Gade nvarchar(50),
	Husnr int,
	Postnr int,
	"By" nvarchar(30)
)

CREATE TABLE PERSON
(
	Id int PRIMARY KEY,
	Navn nvarchar(50),
	Gade nvarchar(50),
	Husnr int,
	Postnr int,
	ArbejdsBy nvarchar(30),
	ArbejdsGade nvarchar(50),
	ArbejdsHusnr int,
	ArbejdsPostnr int
)

CREATE TABLE L�GE
(
	L�geId int PRIMARY KEY,
	KlinikId int,
	L�nramme nvarchar(10),
	Timel�n float

	CONSTRAINT L�geId_FK FOREIGN KEY(L�geId)
	REFERENCES PERSON(Id),
	CONSTRAINT KlinikId_FK FOREIGN KEY(KlinikId)
	REFERENCES KLINIK(KlinikId)
)

CREATE TABLE P�R�RENDE
(
	P�r�rendeId int PRIMARY KEY

	CONSTRAINT P�r�rendeId_FK FOREIGN KEY(P�r�rendeId)
	REFERENCES PERSON(Id)
)

CREATE TABLE PATIENT
(
	PatientId int PRIMARY KEY,
	P�r�rendeId int

	CONSTRAINT PatientId_FK FOREIGN KEY(PatientId)
	REFERENCES PERSON(Id),
	CONSTRAINT PATIENT_P�r�rendeId_FK FOREIGN KEY(P�r�rendeId)
	REFERENCES P�R�RENDE(P�r�rendeId)
)

CREATE TABLE PATIENT_P�R�RENDE
(
	PatientId int,
	P�r�rendeId int

	CONSTRAINT PATIENT_P�R�RENDE_PatientId_FK FOREIGN KEY(PatientId)
	REFERENCES PATIENT(PatientId),
	CONSTRAINT PATIENT_P�R�RENDE_P�r�rendeId_FK FOREIGN KEY(P�r�rendeId)
	REFERENCES P�R�RENDE(P�r�rendeId),
	CONSTRAINT PatientId_P�r�rendeId_PK PRIMARY KEY(PatientId, P�r�rendeId)
)

CREATE TABLE AFTALE
(
	L�geId int,
	KlinikId int,
	PatientId int,
	P�r�rendeId int,
	"Date" dateTime2,
	Tid dateTime2

	CONSTRAINT AFTALE_L�geId_FK FOREIGN KEY(L�geId)
	REFERENCES L�GE(L�geId),
	CONSTRAINT AFTALE_KlinikId_FK FOREIGN KEY(KlinikId)
	REFERENCES KLINIK(KlinikId),
	CONSTRAINT AFTALE_PatientId_FK FOREIGN KEY(PatientId)
	REFERENCES PATIENT(PatientId),
	CONSTRAINT AFTALE_P�r�rendeId_FK FOREIGN KEY(P�r�rendeId)
	REFERENCES P�R�RENDE(P�r�rendeId),

	CONSTRAINT L�geId_PatientId_PK PRIMARY KEY(L�geId, PatientId)
)