DROP TABLE PET_OWNER;
CREATE TABLE PET_OWNER(
OwnerID int PRIMARY KEY, 
OwnerLastName nvarchar(25) NOT NULL,
OwnerFirstName nvarchar(25) NOT NULL,
OwnerPhone nvarchar(10),
OwnerEmail nvarchar(25) NOT NULL)

CREATE TABLE PET(
PetId int PRIMARY KEY,
PetName nvarchar(25) not null,
PetType nvarchar(25) not null,
PetBreed nvarchar(25) not null DEFAULT 'UNKNOWN',
PetDOB date,
PetWeight decimal not null,
OwnerId int not null,
CONSTRAINT BLA FOREIGN KEY(OwnerId)
REFERENCES PET_OWNER(OwnerID))