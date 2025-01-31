CREATE TABLE LOCATION
(
    Location_ID INT NOT NULL,
    City VARCHAR (50),
    State VARCHAR (2),
    Country VARCHAR (100),
    Address VARCHAR (225),
    PRIMARY KEY (Location_ID)
);



CREATE TABLE PET
( 
Pet_ID INT NOT NULL,
Pet_Name VARCHAR(50) NOT NULL,
Age INT,
Breed_ID INT,
Availability_Status BOOLEAN,
Date_of_Arrival DATE,
Location_ID INT,
PRIMARY KEY (Pet_ID)
);


CREATE TABLE OWNER
(
    Owner_ID INT NOT NULL,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Owner_Address VARCHAR(225),
    Contact_Information VARCHAR(100),
    PRIMARY KEY (Owner_ID)
);

CREATE TABLE BREED 
(
    Breed_ID INT NOT NULL,
    Breed_Name VARCHAR(100),
    Country_of_Origin VARCHAR(100),
    Average_Lifespan INT,
    PRIMARY KEY (Breed_ID),
    UNIQUE (Breed_Name)
);

CREATE TABLE ADOPTION
(
    Adoption_ID INT NOT NULL,
    fk_Owner_ID INT NOT NULL,
    fk_Pet_ID INT NOT NULL,
    fk_Location_ID INT NOT NULL,
    Adoption_Date DATE,
    Adoption_Fee FLOAT,
    PRIMARY KEY(Adoption_ID),
    FOREIGN KEY (fk_Owner_ID) REFERENCES OWNER (Owner_ID),
    FOREIGN KEY (fk_PET_ID) REFERENCES PET (Pet_ID),
    FOREIGN KEY (fk_Location_ID) REFERENCES LOCATION (Location_ID)
); 

CREATE TABLE VETERINARIAN
(
    Veterinarian_ID INT NOT NULL,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Specialization VARCHAR(100),
    Contact_Information VARCHAR(255),


    PRIMARY KEY (Veterinarian_ID),
    UNIQUE(Specialization),
    UNIQUE(Contact_Information)

);



CREATE TABLE Dog
(
    Dog_ID INT NOT NULL,
    Color VARCHAR(50),
    Size VARCHAR(20),
    Temperament VARCHAR(100),
    Health_Status VARCHAR(100),
    FOREIGN Key (Dog_ID) REFERENCES PET(Pet_ID)
);

CREATE TABLE Cat 
(
    Cat_ID INT NOT NULL,
    Color VARCHAR(50),
    Size VARCHAR(20),
    Temperament VARCHAR(100),
    Health_Status VARCHAR(100),
    FOREIGN Key (Cat_ID) REFERENCES PET(Pet_ID)
);




 -- Combines information from PET, BREED , LOCATION TO EXECUTE THE COMMAND IS: SELECT * FROM PetDetails;

CREATE OR REPLACE VIEW PetDetails AS
SELECT 
    p.Pet_ID,
    p.Pet_Name,
    p.Age,
    b.Breed_Name,
    p.Availability_Status,
    p.Date_of_Arrival,
    l.City,
    l.State,
    l.Country,
    l.Address
FROM 
    PET p
JOIN 
    BREED b ON p.Breed_ID = b.Breed_ID
JOIN 
    LOCATION l ON p.Location_ID = l.Location_ID;



