SELECT DISTINCT PetBreed FROM PET
SELECT PetName, PetBreed FROM PET ORDER BY PetName;
SELECT COUNT(DISTINCT PetBreed) as NumberOfBreeds FROM PET;
SELECT MIN(PetWeight) as minimum, MAX(PetWeight) as maximum, AVG(PetWeight) as avg FROM PET WHERE PetType LIKE 'Dog';
SELECT PetBreed, AVG(PetWeight) as AVG FROM PET GROUP BY PetBreed;
SELECT PetBreed, AVG(PetWeight) as AVG FROM PET GROUP BY PetBreed HAVING COUNT(PetBreed) > 1;
SELECT PetBreed, AVG(PetWeight) as AVG FROM PET WHERE PetBreed NOT LIKE 'UNKNOWN' GROUP BY PetBreed HAVING COUNT(PetBreed) > 1;