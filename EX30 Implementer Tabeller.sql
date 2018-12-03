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

CREATE TABLE LÆGE
(
	LægeId int PRIMARY KEY,
	KlinikId int,
	Lønramme nvarchar(10),
	Timeløn float

	CONSTRAINT LægeId_FK FOREIGN KEY(LægeId)
	REFERENCES PERSON(Id),
	CONSTRAINT KlinikId_FK FOREIGN KEY(KlinikId)
	REFERENCES KLINIK(KlinikId)
)

CREATE TABLE PÅRØRENDE
(
	PårørendeId int PRIMARY KEY

	CONSTRAINT PårørendeId_FK FOREIGN KEY(PårørendeId)
	REFERENCES PERSON(Id)
)

CREATE TABLE PATIENT
(
	PatientId int PRIMARY KEY,
	PårørendeId int

	CONSTRAINT PatientId_FK FOREIGN KEY(PatientId)
	REFERENCES PERSON(Id),
	CONSTRAINT PATIENT_PårørendeId_FK FOREIGN KEY(PårørendeId)
	REFERENCES PÅRØRENDE(PårørendeId)
)

CREATE TABLE PATIENT_PÅRØRENDE
(
	PatientId int,
	PårørendeId int

	CONSTRAINT PATIENT_PÅRØRENDE_PatientId_FK FOREIGN KEY(PatientId)
	REFERENCES PATIENT(PatientId),
	CONSTRAINT PATIENT_PÅRØRENDE_PårørendeId_FK FOREIGN KEY(PårørendeId)
	REFERENCES PÅRØRENDE(PårørendeId),
	CONSTRAINT PatientId_PårørendeId_PK PRIMARY KEY(PatientId, PårørendeId)
)

CREATE TABLE AFTALE
(
	LægeId int,
	KlinikId int,
	PatientId int,
	PårørendeId int,
	"Date" dateTime2,
	Tid dateTime2

	CONSTRAINT AFTALE_LægeId_FK FOREIGN KEY(LægeId)
	REFERENCES LÆGE(LægeId),
	CONSTRAINT AFTALE_KlinikId_FK FOREIGN KEY(KlinikId)
	REFERENCES KLINIK(KlinikId),
	CONSTRAINT AFTALE_PatientId_FK FOREIGN KEY(PatientId)
	REFERENCES PATIENT(PatientId),
	CONSTRAINT AFTALE_PårørendeId_FK FOREIGN KEY(PårørendeId)
	REFERENCES PÅRØRENDE(PårørendeId),

	CONSTRAINT LægeId_PatientId_PK PRIMARY KEY(LægeId, PatientId)
)