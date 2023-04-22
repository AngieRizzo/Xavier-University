-- INSERT statements

-- Order to insert data into tables:
    -- University || Person
    -- Department
    -- Building || Professor || Student
    -- Class
    -- Enroll


-- INSERT statements

-- Order to insert data into tables:
    -- Person || Department
    -- Degree || Building || Student
    -- Professor || Stu_degree_list
    -- Class || Update Department for Dep_chair
    -- Enroll
    -- Calculate GPAs for each student with a function? Or just throw some numbers in there?

-- NOTE:
    -- I have not included any of the primary keys ({table}_id), as they are marked as auto-incrementing in the CREATE TABLE statements
    -- This sets them to 1, and for each new row, it increments by 1
    -- To use a key/id from a table as a FK for another table, simply count which row you want to use, and use that number as the ID, starting at 1

------- PERSON -------
LOCK TABLES `PERSON` WRITE;
INSERT INTO `PERSON` (`PERSON_FNAME`, `PERSON_LNAME`, `PERSON_EMAIL`, `PERSON_PHONE`, `PERSON_ADDR`) VALUES
-- ( {PERSON_FNAME},     {PERSON_LNAME},    {PERSON_EMAIL},     {PERSON_PHONE},     {PERSON_ADDR} ),


UNLOCK TABLES;


------- DEPARTMENT -------
LOCK TABLES `DEPARTMENT` WRITE;
INSERT INTO `DEPARTMENT` (`DEPT_NAME`, `DEPT_CHAIR`) VALUES

UNLOCK TABLES;


------- BUILDING -------
LOCK TABLES `DEGREE` WRITE;
INSERT INTO `DEGREE` (`DEGREE_NAME`, `DEGREE_TYPE`, `DEPT_ID`, `DEGREE_GPA`, `CATALOG_YEAR`, `YEAR_STARTED`, `YEAR_COMPLETED` /* NULL if not completed */) VALUES

UNLOCK TABLES;


------- BUILDING -------
LOCK TABLES `BUILDING` WRITE;
INSERT INTO `BUILDING` (`DEPT_ID`, `BUILDING_NAME`, `BUILDING_ADDRESS`) VALUES

UNLOCK TABLES;


------- STUDENT -------
LOCK TABLES `STUDENT` WRITE;
INSERT INTO `STUDENT` (`PERSON_ID`, `DEPT_ID`, `STU_GPA`, `STU_STANDING`, `STU_GRADE_LEVEL`) VALUES

UNLOCK TABLES;


------- PROFESSOR -------
LOCK TABLES `PROFESSOR` WRITE;
INSERT INTO `PROFESSOR` (`PERSON_ID`, `DEPT_ID`, `OFFICE_NUM`, `BUILDING_ID`) VALUES

UNLOCK TABLES;


------- STU_DEGREE_LIST -------
LOCK TABLES `STU_DEGREE_LIST` WRITE;
INSERT INTO `STU_DEGREE_LIST` (`STU_ID`, `DEGREE_ID`) VALUES

UNLOCK TABLES;


------- CLASS -------
LOCK TABLES `CLASS` WRITE;
INSERT INTO `CLASS` (`DEPT_ID`, `CLASS_NAME`, `CLASS_NUMBER`, `CLASS_YEAR`, `CLASS_SEMESTER`, `CLASS_CREDITS`, `CLASS_ROOM_NUM`, `BUILDING_ID`, `CLASS_TIME_SLOTS`, `PROF_ID`) VALUES
-- Use random numbers for the time slots. It's a fake foreign key, so the actual value doesn't mean anything right now

UNLOCK TABLES;


------- UPDATE DEPARTMENT -------
LOCK TABLES `DEPARTMENT` WRITE;
-- UPDATE `DEPARTMENT` SET `DEPT_CHAIR` = {prof_id} WHERE `DEPT_ID` = {dept_id}};

UNLOCK TABLES;


------- ENROLLMENT -------
LOCK TABLES `ENROLLMENT` WRITE;
INSERT INTO `ENROLLMENT` (`STU_ID`, `CLASS_ID`, `ENROLL_GRADE`) VALUES

UNLOCK TABLES;