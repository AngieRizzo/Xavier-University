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
-- ( {PERSON_FNAME},     {PERSON_LNAME},    {PERSON_EMAIL},     {PERSON_PHONE},     {PERSON_ADDR} ),

UNLOCK TABLES;


------- DEPARTMENT -------
LOCK TABLES `DEPARTMENT` WRITE;
INSERT INTO `DEPARTMENT`(DEPT_NAME)
 value('Fine Arts');
 INSERT INTO `DEPARTMENT`(DEPT_NAME)
 value('Mathematics');
 INSERT INTO `DEPARTMENT`(DEPT_NAME)
 value('Liberal Arts');
 INSERT INTO `DEPARTMENT`(DEPT_NAME)
 value('Foreign Language');

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
 value('5', '5');

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
