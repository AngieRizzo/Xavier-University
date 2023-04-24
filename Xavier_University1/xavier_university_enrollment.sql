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
