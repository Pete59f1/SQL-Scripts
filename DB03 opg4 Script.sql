CREATE TABLE SEMINAR(
SeminarID int PRIMARY KEY not null,
SeminarDate DATETIME2 not null DEFAULT'01-jan-2000',
"Location" nvarchar(200) not null,
SeminarTitle nvarchar(200) not null)

CREATE TABLE ZIP_CITY(
Zip int PRIMARY KEY not null,
City nvarchar(20)
)

CREATE TABLE CUSTOMER(
CustomerID int not null PRIMARY KEY,
FirstName nvarchar(200) not null,
LastName nvarchar(200) not null,
Street nvarchar(100) not null,
Zip int not null,
CONSTRAINT CUSTOMER_FK FOREIGN KEY(Zip)
REFERENCES ZIP_CITY(Zip)
)

CREATE TABLE SEMINAR_CUSTOMER(
SeminarID int not null,
CustomerID int not null,
CONSTRAINT SEMINAR_CUSTOMER_FK FOREIGN KEY(SeminarID)
REFERENCES SEMINAR(SeminarID),
CONSTRAINT SEMINAR_CUSTOMER_FK2 FOREIGN KEY(CustomerID)
REFERENCES CUSTOMER(CustomerID),
CONSTRAINT SEMINAR_CUSTONER_PK PRIMARY KEY(SeminarID, CustomerID)
)