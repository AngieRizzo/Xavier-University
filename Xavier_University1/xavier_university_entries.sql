-- INSERT statements

-- Order to insert data into tables:
    -- Person || Department
    -- Degree || Building || Student
    -- Professor || Stu_degree_listperson
    -- Class || Update Department for Dep_chair
    -- Enroll
    -- Calculate GPAs for each student with a function? Or just throw some numbers in there?

-- NOTE:
    -- I have not included any of the primary keys ({table}_id), as they are marked as auto-incrementing in the CREATE TABLE statements
    -- This sets them to 1, and for each new row, it increments by 1
    -- To use a key/id from a table as a FK for another table, simply count which row you want to use, and use that number as the ID, starting at 1

------- PERSON -------
LOCK TABLES `PERSON` WRITE;
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('John', 'Doe', 'johndoe@gmail.com', '2109876543', '123 lane');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Bob', 'Smith', 'bobsmith@outlook.com', '2101234567', '124 lane');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Timmy', 'Zu', 'timmyzu@gmail.com', '2102347364', '125 lane');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Chloe', 'Smith', 'chloesmith@gmail.com', '2102439786', '124 lane');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Haley', 'H', 'haleyh@gmail.com', '2108376432', '126 lane');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Jalen', 'G', 'gjalen@outlook.com', '2102439173', '127 lane');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Jude', 'Flight', 'cjflight@gmail.com', '2102491733', '128 lane');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Denise', 'Dumner', 'denised@gmail.com', '2109224391', '129 lane');
  INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Ava', 'Smith', 'avasmith@gmail.com', '1234567890', '123 Main St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Emma', 'Johnson', 'emmajohnson@gmail.com', '2345678901', '234 Elm St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Olivia', 'Williams', 'oliviawilliams@gmail.com', '3456789012', '345 Oak St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Sophia', 'Brown', 'sophiabrown@gmail.com', '4567890123', '456 Pine St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Isabella', 'Jones', 'isabellajones@gmail.com', '5678901234', '567 Maple St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Mia', 'Miller', 'miamiller@gmail.com', '6789012345', '678 Birch St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Charlotte', 'Davis', 'charlottedavis@gmail.com', '7890123456', '789 Cedar St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Amelia', 'Garcia', 'ameliagarcia@gmail.com', '8901234567', '890 Walnut St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Harper', 'Rodriguez', 'harperrodriguez@gmail.com', '9012345678', '901 Chestnut St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Evelyn', 'Wilson', 'evelynwilson@gmail.com', '0123456789', '012 Cherry St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Abigail', 'Anderson','abigailanderson@gmail.com','1234567890','123 Apple St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Emily','Taylor','emilytaylor@gmail.com','2345678901','234 Peach St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Elizabeth','Moore','elizabethmoore@gmail.com','3456789012','345 Plum St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Sofia','Jackson','sofiajackson@gmail.com','4567890123','456 Pear St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Avery','Martin','averymartin@gmail.com','5678901234','567 Orange St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Ella','Lee','ellalee@gmail.com','6789012345','678 Grapefruit St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Scarlett','Perez','scarlettperez@gmail.com','7890123456','789 Lemon St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Grace','Thompson','gracethompson@gmail.com','8901234567','890 Lime St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Victoria','White','victoriawhite@gmail.com','9012345678','901 Kiwi St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Riley','Harris','rileyharris@gmail.com' ,'0123456789' ,'012 Mango St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Aria' ,'Clark' ,'ariaclark@gmail.com' ,'1234567890' ,'123 Papaya St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Lily' ,'Lewis' ,'lilylewis@gmail.com' ,'2345678901' ,'234 Pineapple St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Chloe' ,'Nelson' ,'chloenelson@gmail.com' ,'3456789012' ,'345 Banana St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Layla' ,'Carter' ,'laylacarter@gmail.com' ,'4567890123' ,'456 Strawberry St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Natalie' ,'Mitchell' ,'nataliemitchell@gmail.com' ,'5678901234' ,'567 Raspberry St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Savannah' ,'Perez' ,'savannahperez@gmail.com' ,'6789012345' ,'678 Blueberry St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Leah' ,'Roberts' ,'leahroberts@gmail.com' ,'7890123456' ,'789 Blackberry St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Audrey' ,'Turner' ,'audreyturner@gmail.com' ,'8901234567' ,'890 Cranberry St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Allison' ,'Phillips' ,'allisonphillips@gmail.com' ,'9012345678' ,'901 Cherry St');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('Anna' ,'Campbell' ,'annacampbell@gmail.com' ,'5252562244' ,'567 Raspberry St');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR) #38
 values('Isabella' ,'Inman' ,'isabella.inman@gmail.com' ,'5255559512' ,'123 lane');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
value('Connie', 'Vigue', 'ConnieCVigue@gmail.com', '8053650871', '413 Turtle Crest Dr' );
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
value('Tahi-Popa', 'Wikiriwhi', 'TahiPopaWikiriwhi@gmail.com', '9411326663', '967 Raspberry St');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
value('Elizabeth', 'Cryer', 'Ecryer@gmail.com', '9281497351', '112 lane' );
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
VALUES ('George', 'Jones', 'georgejones@gmail.com', '5551235734', '123 Main St');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
VALUES ('Jane', 'Smith', 'jane.smith@gmail.com', '3455673578', '456 Elm St');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
VALUES ('Bob', 'Johnson', 'bob.johnson@gmail.com', '1577458765', '789 Oak St');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
VALUES ('Alice', 'Williams', 'alice.williams@gmail.com', '3556554321', '321 Pine St');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
VALUES ('Charlie', 'Brown', 'charlie.brown@gmail.com', '5365552468', '246 Maple St');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
VALUES ('Dave', 'Davis', 'dave.davis@gmail.com', '4551357', '357 Cedar St');
INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
VALUES ('Emily', 'Evans', 'emily.evans@gmail.com', '4255557531', '531 Birch St');
-- ( {PERSON_FNAME},     {PERSON_LNAME},    {PERSON_EMAIL},     {PERSON_PHONE},     {PERSON_ADDR} ),

UNLOCK TABLES;


------- DEPARTMENT -------
LOCK TABLES `DEPARTMENT` WRITE;
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Architecture');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Biology');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Business');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Computer Science');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Engineering');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Fine Arts');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Foreign Language');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Histoy');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Humanities & Sciences');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Information Systems');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Law');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Liberal Arts');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Mathematics');
INSERT INTO `DEPARTMENT`(DEPT_NAME)
value('Medicine');


UNLOCK TABLES;


------- DEGREE -------
LOCK TABLES `DEGREE` WRITE;
INSERT INTO `DEGREE`(DEGREE_NAME, DEGREE_TYPE, DEPT_ID, DEGREE_GPA, CATALOG_YEAR, YEAR_STARTED, YEAR_COMPLETED /* NULL if not completed */)
 VALUE('Computer Science', 'bachelors', '2', '4.0', '2023', '2020', '0' /* NULL if not completed */);
 INSERT INTO `DEGREE`(DEGREE_NAME, DEGREE_TYPE, DEPT_ID, DEGREE_GPA, CATALOG_YEAR, YEAR_STARTED, YEAR_COMPLETED /* NULL if not completed */)
 VALUE('Mathematics', 'bachelors', '2', '4.0', '2023', '2019', '0' /* NULL if not completed */);
 INSERT INTO `DEGREE`(DEGREE_NAME, DEGREE_TYPE, DEPT_ID, DEGREE_GPA, CATALOG_YEAR, YEAR_STARTED, YEAR_COMPLETED /* NULL if not completed */)
 VALUE('Spanish', 'bachelors', '3', '3.5', '2023', '2021', '0' /* NULL if not completed */);
 INSERT INTO `DEGREE`(DEGREE_NAME, DEGREE_TYPE, DEPT_ID, DEGREE_GPA, CATALOG_YEAR, YEAR_STARTED, YEAR_COMPLETED /* NULL if not completed */)
 VALUE('Computer Science', 'bachelors', '2', '3.2', '2023', '2019', '2023' /* NULL if not completed */);
 INSERT INTO `DEGREE`(DEGREE_NAME, DEGREE_TYPE, DEPT_ID, DEGREE_GPA, CATALOG_YEAR, YEAR_STARTED, YEAR_COMPLETED /* NULL if not completed */)
 VALUE('Art', 'bachelors', '1', '2.9', '2020', '2016', '2020' /* NULL if not completed */);

UNLOCK TABLES;


------- BUILDING -------
LOCK TABLES `BUILDING` WRITE;
INSERT INTO `BUILDING`(DEPT_ID, BUILDING_NAME, BUILDING_ADDRESS)
 value('1', 'West', '1 Xavier ln');
 INSERT INTO `BUILDING`(DEPT_ID, BUILDING_NAME, BUILDING_ADDRESS)
 value('2', 'North', '2 Xavier ln');
 INSERT INTO `BUILDING`(DEPT_ID, BUILDING_NAME, BUILDING_ADDRESS)
 value('3', 'East', '3 Xavier ln');
 INSERT INTO `BUILDING`(DEPT_ID, BUILDING_NAME, BUILDING_ADDRESS)
 value('4', 'South', '4 Xavier ln');

UNLOCK TABLES;

------- STUDENT -------
LOCK TABLES `STUDENT` WRITE;
INSERT INTO `STUDENT`(PERSON_ID, DEPT_ID)
 value('1', '1');
INSERT INTO `STUDENT`(PERSON_ID, DEPT_ID)
 value('2', '2');
 INSERT INTO `STUDENT`(PERSON_ID, DEPT_ID)
 value('3', '3');
 INSERT INTO `STUDENT`(PERSON_ID, DEPT_ID)
 value('4', '4');
 INSERT INTO `STUDENT`(PERSON_ID, DEPT_ID)
 value('5', '1');

UNLOCK TABLES;

------- PROFESSOR -------
LOCK TABLES `PROFESSOR` WRITE;
INSERT INTO `PROFESSOR`(PERSON_ID, DEPT_ID, OFFICE_NUM, BUILDING_ID)
 value('3', '1', '1', '1');
 INSERT INTO `PROFESSOR`(PERSON_ID, DEPT_ID, OFFICE_NUM, BUILDING_ID)
 value('3', '1', '1', '1');

UNLOCK TABLES;

------- STU DEGREE LIST -------
LOCK TABLES `stu_degree_list` WRITE;
INSERT INTO `stu_degree_list`(STU_ID, DEGREE_ID, CREDITS_EARNED)
 value('1', '1', '108');
 INSERT INTO `stu_degree_list`(STU_ID, DEGREE_ID, CREDITS_EARNED)
 value('2', '2', '110');
 INSERT INTO `stu_degree_list`(STU_ID, DEGREE_ID, CREDITS_EARNED)
 value('3', '3', '80');
 INSERT INTO `stu_degree_list`(STU_ID, DEGREE_ID, CREDITS_EARNED)
 value('4', '4', '120');
  INSERT INTO `stu_degree_list`(STU_ID, DEGREE_ID, CREDITS_EARNED)
 value('5', '5', '120');

UNLOCK TABLES;


------- CLASS -------
LOCK TABLES `CLASS` WRITE;
INSERT INTO `CLASS`(DEPT_ID, CLASS_NAME, CLASS_NUMBER, CLASS_YEAR, CLASS_SEMESTER, CLASS_CREDITS, CLASS_ROOM_NUM, BUILDING_ID, CLASS_TIME_SLOTS, PROF_ID)
 value('2', 'databases', '0001', '2023', '1', '3', '1', '2', '10', '1');
 INSERT INTO `CLASS`(DEPT_ID, CLASS_NAME, CLASS_NUMBER, CLASS_YEAR, CLASS_SEMESTER, CLASS_CREDITS, CLASS_ROOM_NUM, BUILDING_ID, CLASS_TIME_SLOTS, PROF_ID)
 value('4', 'Spanish', '0002', '2023', '1', '3', '2', '4', '10', '2');
-- Use random numbers for the time slots. It's a fake foreign key, so the actual value doesn't mean anything right now

UNLOCK TABLES;


------- ENROLLMENT -------
LOCK TABLES `ENROLLMENT` WRITE;
INSERT INTO `ENROLLMENT` (STU_ID, CLASS_ID, ENROLL_GRADE)
 value('1', '1', '4.0');

UNLOCK TABLES;


------- UPDATE STUDENT STANDING -------
-- CALL update_standing(1);
