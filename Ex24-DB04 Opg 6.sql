SELECT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER WHERE OwnerId IN(SELECT OwnerId FROM PET WHERE PetType LIKE 'Cat');
SELECT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER WHERE OwnerId IN(SELECT OwnerId FROM PET WHERE PetType LIKE 'Cat' AND PetName LIKE 'Teddy');

INSERT INTO BREED VALUES('Border Collie', 15.0, 22.5, 20);
INSERT INTO BREED VALUES('Cashmere', 10.0, 15.0, 12);
INSERT INTO BREED VALUES('Collie Mix', 17.5, 25.0, 18);
INSERT INTO BREED VALUES('Std.Poodle', 22.5, 30.0, 18);
INSERT INTO BREED VALUES('UNKNOWN', NULL, NULL, NUll);

ALTER TABLE PET ADD CONSTRAINT PetBreed_FK FOREIGN KEY (PetBreed) REFERENCES BREED(BreedName);

SELECT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER WHERE OwnerId IN(SELECT OwnerId FROM PET WHERE PetBreed IN (SELECT BreedName FROM BREED WHERE AverageLifeExpectancy > 15));

SELECT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER JOIN PET ON PET_OWNER.OwnerID = PET.OwnerId WHERE PetType LIKE 'Cat';
SELECT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER JOIN PET ON PET_OWNER.OwnerID = PET.OwnerId WHERE PetType = 'Cat' AND PetName = 'Teddy';
SELECT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER AS PO JOIN PET AS P ON PO.OwnerID = P.OwnerId JOIN BREED AS B ON P.PetBreed = B.BreedName WHERE AverageLifeExpectancy > 15;
SELECT OwnerLastName, OwnerFirstName, PetName, PetType, PetBreed, AverageLifeExpectancy FROM PET_OWNER AS PO JOIN PET AS P ON PO.OwnerID = P.OwnerId JOIN BREED AS B ON P.PetBreed = B.BreedName WHERE PetBreed != 'UNKNOWN';