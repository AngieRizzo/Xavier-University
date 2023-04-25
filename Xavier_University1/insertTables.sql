DROP TABLE IF EXISTS `PERSON`;

CREATE TABLE `PERSON` (
  `PERSON_ID` int NOT NULL AUTO_INCREMENT,
  `PERSON_FNAME` text,
  `PERSON_LNAME` text,
  `PERSON_EMAIL` text,
  `PERSON_PHONE` text,
  `PERSON_ADDR` text,
  PRIMARY KEY (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `DEGREE`;

CREATE TABLE `DEGREE` (
    `DEGREE_ID` int NOT NULL AUTO_INCREMENT,
    `DEGREE_NAME` varchar(45) DEFAULT NULL,
    `DEGREE_TYPE` varchar(45) DEFAULT NULL, -- Certificate, Associate, Bachelor, Master, Doctorate
    `DEPT_ID` int NOT NULL, -- Foreign key to DEPARTMENT table
    `DEGREE_GPA` decimal(4,2) DEFAULT NULL, -- This could be different for a student with multiple degrees from the student's overall GPA. This is what shows up on their transcript for this specific degree
    `CATALOG_YEAR` int DEFAULT NULL, -- This is the year the catalog was published for this degree, as the degree could be updated over time, so this allows us to know which catalog the student was following
    `YEAR_STARTED` int DEFAULT NULL, -- This is the year the student started the degree
    `YEAR_COMPLETED` int DEFAULT NULL, -- This is the year the student completed the degree
    `DEGREE_CREDITS` int DEFAULT NULL, -- This is the number of credits required for this degree
    PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `DEPARTMENT`;

CREATE TABLE `DEPARTMENT` (
    `DEPT_ID` int NOT NULL AUTO_INCREMENT,
    `DEPT_NAME` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `STUDENT`;

CREATE TABLE `STUDENT` (
    `STU_ID` int NOT NULL AUTO_INCREMENT,
    `PERSON_ID` int NOT NULL, -- Foreign key to PERSON table
    `DEPT_ID` int NOT NULL, -- Foreign key to DEPARTMENT table
    `STU_GPA` decimal(4,2) DEFAULT NULL,
    `STU_STANDING` varchar(45) DEFAULT NULL,
    `STU_GRADE_LEVEL` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`STU_ID`),
    FOREIGN KEY (`PERSON_ID`) REFERENCES PERSON(`PERSON_ID`),
    FOREIGN KEY (`DEPT_ID`) REFERENCES DEPARTMENT(`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `BUILDING`;

CREATE TABLE `BUILDING` (
    `BUILDING_ID` int NOT NULL AUTO_INCREMENT,
    `DEPT_ID` int NOT NULL, -- Foreign key to DEPARTMENT table
    `BUILDING_NAME` varchar(45) DEFAULT NULL,
    `BUILDING_ADDRESS` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`BUILDING_ID`),
    FOREIGN KEY (`DEPT_ID`) REFERENCES DEPARTMENT(`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `PROFESSOR`;

CREATE TABLE `PROFESSOR` (
  `PROF_ID` int NOT NULL AUTO_INCREMENT,
  `PERSON_ID` int NOT NULL, -- Can't be NULL (?), the professor must be a person -- Foreign key to PERSON table
  `DEPT_ID` int DEFAULT NULL, -- Foreign key to DEPARTMENT table
  `OFFICE_NUM` int DEFAULT NULL,
  `BUILDING_ID` int DEFAULT NULL, -- Foreign key to BUILDING table
  PRIMARY KEY (`PROF_ID`),
  FOREIGN KEY (`PERSON_ID`) REFERENCES PERSON(`PERSON_ID`),
  FOREIGN KEY (`BUILDING_ID`) REFERENCES BUILDING(`BUILDING_ID`),
  FOREIGN KEY (`DEPT_ID`) REFERENCES DEPARTMENT(`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `CLASS`;

CREATE TABLE `CLASS` (
    `CLASS_ID` int NOT NULL AUTO_INCREMENT,
    `DEPT_ID` int NOT NULL, -- Foreign key to DEPARTMENT table
    `CLASS_NAME` varchar(45) DEFAULT NULL,
    `CLASS_NUMBER` varchar(45) DEFAULT NULL,
    `CLASS_YEAR` int DEFAULT NULL,
    `CLASS_SEMESTER` int DEFAULT NULL, -- 1 = Fall, 2 = Spring, 3 = Summer
    `CLASS_CREDITS` int DEFAULT 3,
    `CLASS_ROOM_NUM` int DEFAULT NULL,
    `BUILDING_ID` int DEFAULT NULL, -- Foreign key to BUILDING table
    `CLASS_TIME_SLOTS` int DEFAULT NULL, -- This would be likely a foreign key to a time slot table that would specify days and times of the class
    `PROF_ID` int DEFAULT NULL, -- Foreign key to PROFESSOR table
    PRIMARY KEY (`CLASS_ID`),
    FOREIGN KEY (`DEPT_ID`) REFERENCES DEPARTMENT(`DEPT_ID`),
    FOREIGN KEY (`BUILDING_ID`) REFERENCES BUILDING(`BUILDING_ID`),
    FOREIGN KEY (`PROF_ID`) REFERENCES PROFESSOR(`PROF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `ENROLLMENT`;

CREATE TABLE `ENROLLMENT` (
    `ENROLL_ID` int NOT NULL AUTO_INCREMENT,
    `STU_ID` int NOT NULL, -- Foreign key to STUDENT table
    `CLASS_ID` int NOT NULL, -- Foreign key to CLASS table
    `ENROLL_GRADE` decimal(4,2) DEFAULT NULL, -- Grade received in class, only if the semester is over. Otherwise it's the grade the professor has given the student so far.
    PRIMARY KEY (`ENROLL_ID`),
    FOREIGN KEY (`STU_ID`) REFERENCES STUDENT(`STU_ID`),
    FOREIGN KEY (`CLASS_ID`) REFERENCES CLASS(`CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `STU_DEGREE_LIST`;

CREATE TABLE `STU_DEGREE_LIST` (
    `STU_DEGREE_LIST_ID` int NOT NULL AUTO_INCREMENT,
    `STU_ID` int NOT NULL, -- Foreign key to STUDENT table
    `DEGREE_ID` int NOT NULL, -- Foreign key to DEGREE table
    `CREDITS_EARNED` int DEFAULT 0, -- This is the number of credits the student has earned towards this degree
    PRIMARY KEY (`STU_DEGREE_LIST_ID`),
    FOREIGN KEY (`STU_ID`) REFERENCES STUDENT(`STU_ID`),
    FOREIGN KEY (`DEGREE_ID`) REFERENCES DEGREE(`DEGREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
