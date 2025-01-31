-- sample data into PET table
INSERT INTO PET (Pet_ID, Pet_Name, Age, Breed_ID, Availability_Status, Date_of_Arrival, Location_ID) VALUES
(101, 'Fluffy', 3, 309, true, '2023-01-15', 1),
(102, 'Buddy', 2, 302, true, '2023-02-10', 2),
(103, 'Whiskers', 301, 3, true, '2023-03-20', 3),
(104, 'Max', 4, 309, false, '2023-04-25', 1),
(105, 'Daisy', 1, 305, true, '2023-05-30', 2),
(106, 'Mittens', 2, 308, true, '2023-06-12', 3),
(107, 'Rocky', 4, 303, false, '2023-07-08', 1),
(108, 'Shadow', 3, 310, true, '2023-08-21', 2),
(109, 'Luna', 2, 306, true, '2023-09-17', 3),
(110, 'Max', 6, 304, true, '2023-10-05', 1);

-- sample data into OWNER table
INSERT INTO OWNER (Owner_ID, First_Name, Last_Name, Owner_Address, Contact_Information) VALUES
(201, 'John', 'Doe', '123 Main St', 'john.doe@example.com'),
(202, 'Jane', 'Smith', '456 Elm St', 'jane.smith@example.com'),
(203, 'Mike', 'Johnson', '789 Oak St', 'mike.johnson@example.com'),
(204, 'Emily', 'Brown', '321 Maple St', 'emily.brown@example.com'),
(205, 'Sarah', 'Wilson', '555 Pine St', 'sarah.wilson@example.com'),
(206, 'Chris', 'Taylor', '789 Cherry St', 'chris.taylor@example.com'),
(207, 'Amy', 'Robinson', '654 Birch St', 'amy.robinson@example.com'),
(208, 'Mark', 'Evans', '987 Cedar St', 'mark.evans@example.com'),
(209, 'Laura', 'Harris', '753 Elmwood St', 'laura.harris@example.com'),
(210, 'Alex', 'Parker', '321 Oakwood St', 'alex.parker@example.com');

-- sample data into BREED table
INSERT INTO BREED (Breed_ID, Breed_Name, Country_of_Origin, Average_Lifespan) VALUES
(301, 'Persian', 'Iran', 15),
(302, 'Labrador Retriever', 'Canada', 12),
(303, 'Siamese', 'Thailand', 12),
(304, 'German Shepherd', 'Germany', 10),
(305, 'Golden Retriever', 'Scotland', 12),
(306, 'Maine Coon', 'United States', 12),
(307, 'Bulldog', 'England', 10),
(308, 'Sphynx', 'Canada', 14),
(309, 'Poodle', 'France', 14),
(310, 'Ragdoll', 'United States', 15);

-- sample data into ADOPTION table
INSERT INTO ADOPTION (Adoption_ID, fk_Owner_ID, fk_Pet_ID, fk_Location_ID, Adoption_Date, Adoption_Fee) VALUES
(401, 201, 101, 1, '2023-01-20', 100),
(402, 202, 102, 4, '2023-02-15', 150),
(403, 203, 103, 3, '2023-03-25', 120),
(404, 204, 104, 1, '2023-04-30', 130),
(405, 205, 105, 2, '2023-05-05', 110),
(406, 206, 106, 2, '2023-06-10', 140),
(407, 207, 107, 5, '2023-07-15', 90),
(408, 208, 108, 2, '2023-08-20', 160),
(409, 209, 109, 3, '2023-09-25', 130),
(410, 210, 110, 1, '2023-10-30', 120);

-- sample data into VETERINARIAN table
INSERT INTO VETERINARIAN (Veterinarian_ID, Fname, Lname, Specialization, Contact_Information) VALUES
(501, 'Dr. Sarah', 'Jones', 'General Practice', 'sarah.jones@example.com'),
(502, 'Dr. Michael', 'Smith', 'Surgery', 'michael.smith@example.com'),
(503, 'Dr. Emily', 'Brown', 'Dentistry', 'emily.brown@example.com'),
(504, 'Dr. David', 'Wilson', 'Orthopedics', 'david.wilson@example.com'),
(505, 'Dr. Jessica', 'Clark', 'Cardiology', 'jessica.clark@example.com'),
(506, 'Dr. John', 'Davis', 'Neurology', 'john.davis@example.com'),
(507, 'Dr. Lauren', 'Martinez', 'Oncology', 'lauren.martinez@example.com'),
(508, 'Dr. James', 'Anderson', 'Radiology', 'james.anderson@example.com'),
(509, 'Dr. Amanda', 'White', 'Dermatology', 'amanda.white@example.com'),
(510, 'Dr. Robert', 'Thompson', 'Anesthesiology', 'robert.thompson@example.com');

-- sample data into Dog table
INSERT INTO Dog (Dog_ID, Color, Size, Temperament, Health_Status) VALUES
(101, 'Brown', 'Medium', 'Friendly', 'Healthy'),
(102, 'Black', 'Large', 'Energetic', 'Healthy'),
(104, 'White', 'Small', 'Playful', 'Healthy'),
(105, 'Golden', 'Medium', 'Loyal', 'Healthy'),
(110, 'Gray', 'Large', 'Intelligent', 'Healthy');

-- sample data into Cat table
INSERT INTO Cat (Cat_ID, Color, Size, Temperament, Health_Status) VALUES
(103, 'White', 'Small', 'Independent', 'Healthy'),
(106, 'Gray', 'Medium', 'Calm', 'Healthy'),
(107, 'Black', 'Small', 'Affectionate', 'Healthy'),
(108, 'Tabby', 'Medium', 'Curious', 'Healthy'),
(109, 'Calico', 'Medium', 'Sweet', 'Healthy');

-- sample data into Location table
INSERT INTO LOCATION (Location_ID, City, State, Country, Address) VALUES
(1, 'New York City', 'NY', 'United States', '123 Main St'),
(2, 'Los Angeles', 'CA', 'United States', '456 Elm St'),
(3, 'Chicago', 'IL', 'United States', '789 Oak St'),
(4, 'Houston', 'TX', 'United States', '321 Maple St'),
(5, 'Phoenix', 'AZ', 'United States', '555 Pine St');

