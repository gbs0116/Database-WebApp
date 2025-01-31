

-- Q1: Retrieve names, ages, breeds, and locations of all available pets
-- Entities involved: PET, BREED, LOCATION
SELECT p.Pet_Name, p.Age, b.Breed_Name, l.City, l.State, l.Country
FROM PET p
JOIN BREED b ON p.Breed_ID = b.Breed_ID
JOIN LOCATION l ON p.Location_ID = l.Location_ID
WHERE p.Availability_Status = TRUE;


-- Q2: Retrieve names, countries of origins, breeds, and adoption fees of available pets
-- Entities involved: PET, BREED, ADOPTION
SELECT p.Pet_Name, b.Country_of_Origin, b.Breed_Name, a.Adoption_Fee
FROM PET p
JOIN BREED b ON p.Breed_ID = b.Breed_ID
JOIN ADOPTION a ON p.Pet_ID = a.fk_Pet_ID
WHERE p.Availability_Status = TRUE;


-- Q3: Retrieve owner's name, contact information, adoption date, and adoption location for a specific pet
-- Entities involved: PET, OWNER, LOCATION, ADOPTION
SELECT CONCAT(o.First_Name, ' ', o.Last_Name) AS Owner_Name,
       o.Contact_Information,
       a.Adoption_Date,
       l.City,
       l.State,
       l.Country
FROM PET p
JOIN ADOPTION a ON p.Pet_ID = a.fk_Pet_ID
JOIN OWNER o ON a.fk_Owner_ID = o.Owner_ID
JOIN LOCATION l ON a.fk_Location_ID = l.Location_ID
WHERE p.Pet_Name = 'Daisy';

-- Q4: Find the average age of pets, grouped by breed, filtering out breeds with an average age less than or equal to 2, ordered by the average age in descending order
-- Entities involved: PET, BREED

SELECT b.Breed_Name, AVG(p.Age) AS Average_Age
FROM PET p
JOIN BREED b ON p.Breed_ID = b.Breed_ID
GROUP BY b.Breed_Name
HAVING AVG(p.Age) > 2
ORDER BY Average_Age DESC;


-- Q5:Find an available pet that is 2 years of age, that is a labrador retriever, with an adoption fee that is less
-- than 200 dollars
-- Entities involved: PET, ADOPTION
SELECT p.Pet_Name, p.Age, b.Breed_Name, l.City, l.State, l.Country
FROM PET p
JOIN BREED b ON p.Breed_ID = b.Breed_ID
JOIN ADOPTION a ON p.Pet_ID = a.fk_Pet_ID
JOIN LOCATION l ON a.fk_Location_ID = l.Location_ID
WHERE p.Age = 2 AND b.Breed_Name = 'Labrador Retriever' AND a.Adoption_Fee < 200;


-- Q6: Find the average age of pets, grouped by breed, only considering breeds with an average lifespan greater than 10 years, ordered by the average age in descending order
-- Entities involved: PET, BREED
SELECT b.Breed_Name, AVG(p.Age) AS Average_Age
FROM PET p
JOIN BREED b ON p.Breed_ID = b.Breed_ID
WHERE b.Average_Lifespan > 10
GROUP BY b.Breed_Name
ORDER BY Average_Age DESC;


-- Q7: Retrieve the names and ages of all pets that are currently unavailable
-- Entities involved: PET
SELECT Pet_Name, Age
FROM PET
WHERE Availability_Status = FALSE;

-- Q8: Retrieve the names, breeds, and average lifespans of all breeds along with the count of pets for each breed
-- Entities involved: PET, BREED
SELECT b.Breed_Name, AVG(b.Average_Lifespan) AS Average_Lifespan, COUNT(p.Pet_ID) AS Pet_Count
FROM BREED b
LEFT JOIN PET p ON b.Breed_ID = p.Breed_ID
GROUP BY b.Breed_Name;

-- Q9: Find the total number of pets available in each location
-- Entities involved: PET, LOCATION
SELECT l.City, l.State, l.Country, COUNT(p.Pet_ID) AS Total_Pets_Available
FROM PET p
JOIN LOCATION l ON p.Location_ID = l.Location_ID
WHERE p.Availability_Status = TRUE
GROUP BY l.City, l.State, l.Country;

-- Q10: Retrieve the names and contact information of owners who adopted pets in the month of May 2023
-- Entities involved: OWNER, ADOPTION
SELECT CONCAT(o.First_Name, ' ', o.Last_Name) AS Owner_Name, o.Contact_Information
FROM OWNER o
JOIN ADOPTION a ON o.Owner_ID = a.fk_Owner_ID
WHERE MONTH(a.Adoption_Date) = 5 AND YEAR(a.Adoption_Date) = 2023;



 
