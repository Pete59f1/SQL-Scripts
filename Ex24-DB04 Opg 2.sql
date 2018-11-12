SELECT PetBreed FROM PET;
SELECT COUNT(PetId) as NumberOfPets FROM PET;
SELECT OwnerFirstName, OwnerLastName, OwnerEmail FROM PET_OWNER WHERE OwnerPhone IS NULL;
SELECT PetBreed, PetType, PetDOB FROM PET WHERE PetType LIKE 'Dog';
SELECT PetId, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerId FROM PET;
SELECT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER WHERE OwnerEmail LIKE '%somewhere.com';
SELECT PetBreed, PetType, PetDOB FROM PET WHERE PetType LIKE 'Dog' AND PetBreed LIKE 'Std.Poodle';
SELECT PetName, PetBreed, PetType FROM PET WHERE PetType NOT LIKE 'Dog' AND PetType NOT LIKE 'Cat' AND PetType NOT LIKE 'Fish';