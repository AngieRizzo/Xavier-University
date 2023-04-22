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
    PRIMARY KEY (`DEGREE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
