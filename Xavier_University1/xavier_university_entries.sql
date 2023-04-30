-- INSERT statements

-- Order to insert data into tables:
    -- Person || Department
    -- Degree || Building || Student
    -- Professor || Stu_degree_list
    -- Class
    -- Enroll
    -- Calculate GPAs for each student with a function? Or just throw some numbers in there?

-- NOTE:
    -- I have not included any of the primary keys ({table}_id), as they are marked as auto-incrementing in the CREATE TABLE statements
    -- This sets them to 1, and for each new row, it increments by 1
    -- To use a key/id from a table as a FK for another table, simply count which row you want to use, and use that number as the ID, starting at 1

-- ----- PERSON -------
LOCK TABLES `PERSON` WRITE;
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
VALUES ('John', 'Doe', 'johndoe@gmail.com', '2109876543', '123 lane'),
    ('Bob', 'Smith', 'bobsmith@outlook.com', '2101234567', '124 lane'),
    ('Haley', 'H', 'haleyh@gmail.com', '2108376432', '126 lane'),
    ('Jalen', 'G', 'gjalen@outlook.com', '2102439173', '127 lane'),
    ('Chloe', 'Smith', 'chloesmith@gmail.com', '2102439786', '124 lane'),
    ('Jude', 'Flight', 'cjflight@gmail.com', '2102491733', '128 lane'),
    ('Denise', 'Dumner', 'denised@gmail.com', '2109224391', '129 lane'),
    ('Ava', 'Smith', 'avasmith@gmail.com', '1234567890', '123 Main St'),
    ('Emma', 'Johnson', 'emmajohnson@gmail.com', '2345678901', '234 Elm St'),
    ('Olivia', 'Williams', 'oliviawilliams@gmail.com', '3456789012', '345 Oak St'),
    ('Timmy', 'Zu', 'timmyzu@gmail.com', '2102347364', '125 lane'),
    ('Sophia', 'Brown', 'sophiabrown@gmail.com', '4567890123', '456 Pine St'),
    ('Isabella', 'Jones', 'isabellajones@gmail.com', '5678901234', '567 Maple St'),
    ('Mia', 'Miller', 'miamiller@gmail.com', '6789012345', '678 Birch St'),
    ('Charlotte', 'Davis', 'charlottedavis@gmail.com', '7890123456', '789 Cedar St'),
    ('Amelia', 'Garcia', 'ameliagarcia@gmail.com', '8901234567', '890 Walnut St'),
    ('Harper', 'Rodriguez', 'harperrodriguez@gmail.com', '9012345678', '901 Chestnut St'),
    ('Evelyn', 'Wilson', 'evelynwilson@gmail.com', '0123456789', '012 Cherry St'),
    ('Abigail', 'Anderson','abigailanderson@gmail.com','1234567890','123 Apple St'),
    ('Emily','Taylor','emilytaylor@gmail.com','2345678901','234 Peach St'),
    ('Elizabeth','Moore','elizabethmoore@gmail.com','3456789012','345 Plum St'),
    ('Sofia','Jackson','sofiajackson@gmail.com','4567890123','456 Pear St'),
    ('Avery','Martin','averymartin@gmail.com','5678901234','567 Orange St'),
    ('Ella','Lee','ellalee@gmail.com','6789012345','678 Grapefruit St'),
    ('Scarlett','Perez','scarlettperez@gmail.com','7890123456','789 Lemon St'),
    ('Grace','Thompson','gracethompson@gmail.com','8901234567','890 Lime St'),
    ('Victoria','White','victoriawhite@gmail.com','9012345678','901 Kiwi St'),
    ('Riley','Harris','rileyharris@gmail.com' ,'0123456789' ,'012 Mango St'),
    ('Aria' ,'Clark' ,'ariaclark@gmail.com' ,'1234567890' ,'123 Papaya St'),
    ('Lily' ,'Lewis' ,'lilylewis@gmail.com' ,'2345678901' ,'234 Pineapple St'),
    ('Chloe' ,'Nelson' ,'chloenelson@gmail.com' ,'3456789012' ,'345 Banana St'),
    ('Layla' ,'Carter' ,'laylacarter@gmail.com' ,'4567890123' ,'456 Strawberry St'),
    ('Natalie' ,'Mitchell' ,'nataliemitchell@gmail.com' ,'5678901234' ,'567 Raspberry St'),
    ('Savannah' ,'Perez' ,'savannahperez@gmail.com' ,'6789012345' ,'678 Blueberry St'),
    ('Leah' ,'Roberts' ,'leahroberts@gmail.com' ,'7890123456' ,'789 Blackberry St'),
    ('Audrey' ,'Turner' ,'audreyturner@gmail.com' ,'8901234567' ,'890 Cranberry St'),
    ('Allison' ,'Phillips' ,'allisonphillips@gmail.com' ,'9012345678' ,'901 Cherry St'),
    ('Anna' ,'Campbell' ,'annacampbell@gmail.com' ,'5252562244' ,'567 Raspberry St'), -- #38
    ('Isabella' ,'Inman' ,'isabella.inman@gmail.com' ,'5255559512' ,'123 lane'),
    ('Connie', 'Vigue', 'ConnieCVigue@gmail.com', '8053650871', '413 Turtle Crest Dr' ),
    ('Tahi-Popa', 'Wikiriwhi', 'TahiPopaWikiriwhi@gmail.com', '9411326663', '967 Raspberry St'),
    ('Elizabeth', 'Cryer', 'Ecryer@gmail.com', '9281497351', '112 lane' ),
    ('George', 'Jones', 'georgejones@gmail.com', '5551235734', '123 Main St'),
    ('Jane', 'Smith', 'jane.smith@gmail.com', '3455673578', '456 Elm St'),
    ('Bob', 'Johnson', 'bob.johnson@gmail.com', '1577458765', '789 Oak St'),
    ('Alice', 'Williams', 'alice.williams@gmail.com', '3556554321', '321 Pine St'),
    ('Charlie', 'Brown', 'charlie.brown@gmail.com', '5365552468', '246 Maple St'),
    ('Dave', 'Davis', 'dave.davis@gmail.com', '4551357', '357 Cedar St'),
    ('Emily', 'Evans', 'emily.evans@gmail.com', '4255557531', '531 Birch St');
-- ( {PERSON_FNAME},     {PERSON_LNAME},    {PERSON_EMAIL},     {PERSON_PHONE},     {PERSON_ADDR} ),

UNLOCK TABLES;


-- ----- DEPARTMENT -------
LOCK TABLES `DEPARTMENT` WRITE;
INSERT INTO `DEPARTMENT`(DEPT_NAME)
VALUES('Architecture'),
	('Astronomy and Astrophysics'),
    ('Neuroscience, Developmental and Regenerative Biology'),
    ('Integrative Biology'),
    ('Earth and Planetary Sciences'),
    ('Business'),
    ('Computer Science'),
    ('Engineering'),
    ('Fine Arts'),
    ('Foreign Language'),
    ('Histoy'),
    ('Humanities & Sciences'),
    ('Information Systems'),
    ('Law'),
    ('Liberal Arts'),
    ('Mathematics'),
    ('Medicine'),
    ('Molecular Microbiology and Immunology'),
    ('ENERGY & UTILITY MANAGEMENT'),
    ('Contract & Support Services'),
    ('Facilities Leadership Team'),
    ('Operations & Maintenance'),
    ('Business & Customer Services'),
    ('Political Science and Geography'),
    ('Philosophy and Classics');


UNLOCK TABLES;


-- ----- DEGREE -------
LOCK TABLES `DEGREE` WRITE;
INSERT INTO `DEGREE`(DEGREE_NAME, DEGREE_TYPE, DEPT_ID, DEGREE_GPA, CATALOG_YEAR, YEAR_STARTED, YEAR_COMPLETED /* NULL if not completed */)
VALUES('Computer Science', 'bachelors', '2', '4.0', '2023', '2020', '0' /* NULL if not completed */),
    ('Mathematics', 'bachelors', '2', '4.0', '2023', '2019', '0' /* NULL if not completed */),
    ('Spanish', 'bachelors', '3', '3.5', '2023', '2021', '0' /* NULL if not completed */),
    ('Computer Science', 'bachelors', '2', '3.2', '2023', '2019', '2023' /* NULL if not completed */),
    ('Art', 'bachelors', '1', '2.9', '2020', '2016', '2020' /* NULL if not completed */);

UNLOCK TABLES;


-- ----- BUILDING -------
LOCK TABLES `BUILDING` WRITE;
INSERT INTO `BUILDING`(DEPT_ID, BUILDING_NAME, BUILDING_ADDRESS)
VALUES('1', 'West', '1 Xavier ln'),
    ('2', 'North', '2 Xavier ln'),
    ('3', 'East', '3 Xavier ln'),
    ('4', 'South', '4 Xavier ln'),
    ('5', 'A1', '5 Xavier ln'),
    ('6', 'A2', '6 Xavier ln'),
    ('7', 'A3', '7 Xavier ln'),
    ('8', 'A4', '8 Xavier ln'),
    ('9', 'A5', '9 Xavier ln'),
    ('10', 'A6', '10 Xavier ln'),
    ('11', 'A7', '11 Xavier ln'),
    ('12', 'A8', '12 Xavier ln'),
    ('13', 'A9', '13 Xavier ln'),
    ('14', 'B1', '14 Xavier ln'),
    ('15', 'B2', '15 Xavier ln'),
    ('16', 'B3', '16 Xavier ln'),
    ('17', 'B4', '17 Xavier ln'),
    ('18', 'B5', '18 Xavier ln'),
    ('19', 'B6', '19 Xavier ln'),
    ('20', 'B7', '20 Xavier ln'),
    ('21', 'B8', '21 Xavier ln'),
    ('22', 'B9', '22 Xavier ln'),
    ('23', 'C1', '23 Xavier ln'),
    ('24', 'C2', '24 Xavier ln');

UNLOCK TABLES;

-- ----- STUDENT -------
LOCK TABLES `STUDENT` WRITE;
INSERT INTO `STUDENT`(PERSON_ID, DEPT_ID)
VALUES('1', '1'),
    ('2', '2'),
    ('3', '3'),
    ('4', '4'),
    ('5', '1');

UNLOCK TABLES;

-- ----- PROFESSOR -------
LOCK TABLES `PROFESSOR` WRITE;
INSERT INTO `PROFESSOR`(PERSON_ID, DEPT_ID, OFFICE_NUM, BUILDING_ID)
VALUES('3', '1', '1', '1'),
    ('4', '2', '2', '2'),
    ('5', '3', '3', '3'),
    ('6', '4', '9', '4'),
    ('12', '5', '10', '5'),
    ('13', '6', '11', '6'),
    ('7', '7', '12', '7'),
    ('8', '8', '13', '18'),
    ('9', '9', '14', '19'),
    ('10', '10', '15', '20'),
    ('11', '11', '16', '21'),
    ('2', '12', '4', '22'),
    ('14', '13', '5', '23'),
    ('15', '14', '6', '24'),
    ('16', '15', '7', '8'),
    ('17', '16', '8', '9'),
    ('18', '17', '17', '10'),
    ('19', '18', '18', '11'),
    ('21', '19', '19', '12'),
    ('22', '20', '20', '13'),
    ('23', '21', '24', '14'),
    ('24', '22', '23', '15'),
    ('20', '23', '22', '16'),
    ('1', '24', '21', '17');

UNLOCK TABLES;

-- ----- STU DEGREE LIST -------
LOCK TABLES `STU_DEGREE_LIST` WRITE;
INSERT INTO `STU_DEGREE_LIST`(STU_ID, DEGREE_ID, CREDITS_EARNED)
VALUES('1', '1', '108'),
    ('2', '2', '110'),
    ('3', '3', '80'),
    ('4', '4', '120'),
    ('5', '5', '120');

UNLOCK TABLES;


-- ----- CLASS -------
LOCK TABLES `CLASS` WRITE;
INSERT INTO `CLASS`(DEPT_ID, CLASS_NAME, CLASS_NUMBER, CLASS_YEAR, CLASS_SEMESTER, CLASS_CREDITS, CLASS_ROOM_NUM, BUILDING_ID, CLASS_TIME_SLOTS, PROF_ID)
VALUES('2', 'Databases', '0001', '2023', '1', '3', '1', '2', '10', '1'),
    ('4', 'Spanish', '0002', '2023', '1', '3', '2', '4', '10', '1'); -- TODO: WE ONLY HAVE 1 PROFESSOR RIGHT NOW
-- Use random numbers for the time slots. It's a fake foreign key, so the actual value doesn't mean anything right now

UNLOCK TABLES;


-- ----- ENROLLMENT -------
LOCK TABLES `ENROLLMENT` WRITE;
INSERT INTO `ENROLLMENT` (STU_ID, CLASS_ID, ENROLL_GRADE)
VALUES('1', '1', '4.0');

UNLOCK TABLES;


-- ----- UPDATE STUDENT STANDING -------
-- CALL update_standing(1);

-- ----- CALL `update_degree_all_credits`() -------
CALL update_degree_all_credits();
