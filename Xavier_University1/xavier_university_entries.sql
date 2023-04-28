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
 values('PERSON_LNAME', 'PERSON_LNAME', 'PERSON_EMAIL', 'PERSON_PHONE', 'PERSON_ADDR');
 INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('PERSON_LNAME2', 'PERSON_LNAME2', 'PERSON_EMAIL2', 'PERSON_PHONE2', 'PERSON_ADDR2');
  INSERT INTO `PERSON`(PERSON_FNAME, PERSON_LNAME, PERSON_EMAIL, PERSON_PHONE, PERSON_ADDR)
 values('PERSON_LNAME3', 'PERSON_LNAME3', 'PERSON_EMAIL3', 'PERSON_PHONE3', 'PERSON_ADDR3');
-- ( {PERSON_FNAME},     {PERSON_LNAME},    {PERSON_EMAIL},     {PERSON_PHONE},     {PERSON_ADDR} ),

UNLOCK TABLES;


------- DEPARTMENT -------
LOCK TABLES `DEPARTMENT` WRITE;
INSERT INTO `DEPARTMENT`(DEPT_NAME)
 value('DEPT_NAME');
 INSERT INTO `DEPARTMENT`(DEPT_NAME)
 value('DEPT_NAME2');

UNLOCK TABLES;


------- DEGREE -------
LOCK TABLES `DEGREE` WRITE;
INSERT INTO `DEGREE`(DEGREE_NAME, DEGREE_TYPE, DEPT_ID, DEGREE_GPA, CATALOG_YEAR, YEAR_STARTED, YEAR_COMPLETED /* NULL if not completed */)
 VALUE('comp sci', 'bachelors', '1', '4', '2023', '2020', '2024' /* NULL if not completed */);

UNLOCK TABLES;


------- BUILDING -------
LOCK TABLES `BUILDING` WRITE;
INSERT INTO `BUILDING`(DEPT_ID, BUILDING_NAME, BUILDING_ADDRESS)
 value('1', 'west', 'address');

UNLOCK TABLES;

------- STUDENT -------
LOCK TABLES `STUDENT` WRITE;
INSERT INTO `STUDENT`(PERSON_ID, DEPT_ID)
 value('1', '1');
INSERT INTO `STUDENT`(PERSON_ID, DEPT_ID)
 value('2', '2');

UNLOCK TABLES;

------- PROFESSOR -------
LOCK TABLES `PROFESSOR` WRITE;
INSERT INTO `PROFESSOR`(PERSON_ID, DEPT_ID, OFFICE_NUM, BUILDING_ID)
 value('3', '1', '1', '1');

UNLOCK TABLES;

------- STU DEGREE LIST -------
LOCK TABLES `stu_degree_list` WRITE;
INSERT INTO `stu_degree_list`(STU_ID, DEGREE_ID, CREDITS_EARNED)
 value('1', '1', '3');

UNLOCK TABLES;


------- CLASS -------
LOCK TABLES `CLASS` WRITE;
INSERT INTO `CLASS`(DEPT_ID, CLASS_NAME, CLASS_NUMBER, CLASS_YEAR, CLASS_SEMESTER, CLASS_CREDITS, CLASS_ROOM_NUM, BUILDING_ID, CLASS_TIME_SLOTS, PROF_ID)
 value('1', 'databases', '3xxx', '2023', '1', '3', '4', '1', '10', '1');
-- Use random numbers for the time slots. It's a fake foreign key, so the actual value doesn't mean anything right now

UNLOCK TABLES;


------- ENROLLMENT -------
LOCK TABLES `ENROLLMENT` WRITE;
INSERT INTO `ENROLLMENT` (STU_ID, CLASS_ID, ENROLL_GRADE)
 value('1', '1', '4.0');

UNLOCK TABLES;


------- UPDATE STUDENT STANDING -------
-- CALL update_standing(1);
