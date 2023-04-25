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
INSERT INTO `PERSON` value(`PERSON_FNAME`, `PERSON_LNAME`, `PERSON_EMAIL`, `PERSON_PHONE`, `PERSON_ADDR`);
-- ( {PERSON_FNAME},     {PERSON_LNAME},    {PERSON_EMAIL},     {PERSON_PHONE},     {PERSON_ADDR} ),

UNLOCK TABLES;


------- DEPARTMENT -------
LOCK TABLES `DEPARTMENT` WRITE;
INSERT INTO `DEPARTMENT` value(`DEPT_NAME`, `DEPT_CHAIR`);

UNLOCK TABLES;


------- BUILDING -------
LOCK TABLES `DEGREE` WRITE;
INSERT INTO `DEGREE` VALUE(`DEGREE_NAME`, `DEGREE_TYPE`, `DEPT_ID`, `DEGREE_GPA`, `CATALOG_YEAR`, `YEAR_STARTED`, `YEAR_COMPLETED` /* NULL if not completed */);

UNLOCK TABLES;


------- BUILDING -------
LOCK TABLES `BUILDING` WRITE;
INSERT INTO `BUILDING` value(`DEPT_ID`, `BUILDING_NAME`, `BUILDING_ADDRESS`);

UNLOCK TABLES;


------- STUDENT -------
LOCK TABLES `STUDENT` WRITE;
INSERT INTO `STUDENT` value(`PERSON_ID`, `DEPT_ID`);

UNLOCK TABLES;


------- PROFESSOR -------
LOCK TABLES `PROFESSOR` WRITE;
INSERT INTO `PROFESSOR` value(`PERSON_ID`, `DEPT_ID`, `OFFICE_NUM`, `BUILDING_ID`);

UNLOCK TABLES;


------- STU_DEGREE_LIST -------
LOCK TABLES `STU_DEGREE_LIST` WRITE;
INSERT INTO `STU_DEGREE_LIST`value(`STU_ID`, `DEGREE_ID`, `CREDITS_EARNED`);

UNLOCK TABLES;


------- CLASS -------
LOCK TABLES `CLASS` WRITE;
INSERT INTO `CLASS` value(`DEPT_ID`, `CLASS_NAME`, `CLASS_NUMBER`, `CLASS_YEAR`, `CLASS_SEMESTER`, `CLASS_CREDITS`, `CLASS_ROOM_NUM`, `BUILDING_ID`, `CLASS_TIME_SLOTS`, `PROF_ID`);
-- Use random numbers for the time slots. It's a fake foreign key, so the actual value doesn't mean anything right now

UNLOCK TABLES;


------- UPDATE DEPARTMENT -------
LOCK TABLES `DEPARTMENT` WRITE;
-- UPDATE `DEPARTMENT` SET `DEPT_CHAIR` = {prof_id} WHERE `DEPT_ID` = {dept_id}};

UNLOCK TABLES;


------- ENROLLMENT -------
LOCK TABLES `ENROLLMENT` WRITE;
INSERT INTO `ENROLLMENT` value(`STU_ID`, `CLASS_ID`, `ENROLL_GRADE`);

UNLOCK TABLES;


------- UPDATE STUDENT STANDING -------
-- CALL update_standing(1);
