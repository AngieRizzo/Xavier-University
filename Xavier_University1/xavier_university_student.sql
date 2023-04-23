DROP TABLE IF EXISTS `STUDENT`;

CREATE TABLE `STUDENT` (
    `STU_ID` int NOT NULL AUTO_INCREMENT,
    `PERSON_ID` int NOT NULL, -- Foreign key to PERSON table
    `DEPT_ID` int NOT NULL, -- Foreign key to DEPARTMENT table
    `STU_GPA` decimal(4,2) DEFAULT NULL,
    `STU_STANDING` varchar(45) DEFAULT NULL,
    `STU_GRADE_LEVEL` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`STUDENT_ID`),
    FOREIGN KEY (`PERSON_ID`) REFERENCES PERSON(`PERSON_ID`),
    FOREIGN KEY (`DEPT_ID`) REFERENCES DEPARTMENT(`DEPT_ID`),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

----------------
-- PROCEDURES --
----------------

-- Update GPA
-- search enrollment table for student id, the sum of the grades, and the count of the grades, then divide the sum by the count to get the GPA
-- update the student table with the new GPA
-- if the student has no grades, set the GPA to 0
DROP PROCEDURE IF EXISTS `update_gpa`;
DELIMITER $$
CREATE PROCEDURE `update_gpa` (IN `stu_id` INT)
BEGIN
    DECLARE `gpa` DECIMAL(4,2);
    DECLARE `grade_sum` DECIMAL(4,2);
    DECLARE `grade_count` INT;
    SET `grade_sum` = (SELECT SUM(`ENROLL_GRADE`) FROM `ENROLLMENT` WHERE `STU_ID` = `stu_id`);
    SET `grade_count` = (SELECT COUNT(`ENROLL_GRADE`) FROM `ENROLLMENT` WHERE `STU_ID` = `stu_id`);
    IF `grade_count` = 0 THEN
        SET `gpa` = 0;
    ELSE
        SET `gpa` = `grade_sum` / `grade_count`;
    END IF;
    UPDATE `STUDENT` SET `STU_GPA` = `gpa` WHERE `STU_ID` = `stu_id`;
END$$
-- run with `CALL update_gpa(n);` where n is the student id
-- create trigger to run when the ENROLLMENT table is updated and it's the student's id that is updated in the STU_ID field
-- the trigger will run the update_gpa procedure
DROP TRIGGER IF EXISTS `update_gpa_trigger`;
DELIMITER $$
CREATE TRIGGER `update_gpa_trigger` AFTER UPDATE ON `ENROLLMENT`
FOR EACH ROW
BEGIN
    IF NEW.`STU_ID` = OLD.`STU_ID` THEN
        CALL update_gpa(NEW.`STU_ID`);
    END IF;
END$$
-- create trigger to run when an entry is inserted into the ENROLLMENT table
-- the trigger will run the update_gpa procedure
DROP TRIGGER IF EXISTS `update_gpa_trigger_insert`;
DELIMITER $$
CREATE TRIGGER `update_gpa_trigger_insert` AFTER INSERT ON `ENROLLMENT`
FOR EACH ROW
BEGIN
    CALL update_gpa(NEW.`STU_ID`);
END$$


-- Update standing
-- From the current GPA, set it to the corresponding standing
-- If the student has no GPA, set the standing to "No Standing" (0)
-- If the student has a GPA of 3.5 or higher, set the standing to "Dean's List" (4)
-- If the student has a GPA of 2.5 or higher, set the standing to "Good Standing" (3)
-- If the student has a GPA of 2.0 or higher, set the standing to "Academic Probation" (2)
-- If the student has a GPA below 2.0, set the standing to "Academic Dismissal" (1)
DROP PROCEDURE IF EXISTS `update_standing`;
DELIMITER $$
CREATE PROCEDURE `update_standing` (IN `stu_id` INT)
BEGIN
    DECLARE `gpa` DECIMAL(4,2);
    DECLARE `standing` VARCHAR(45);
    SET `gpa` = (SELECT `STU_GPA` FROM `STUDENT` WHERE `STU_ID` = `stu_id`);
    IF `gpa` IS NULL THEN
        SET `standing` = "No Standing";
    ELSEIF `gpa` >= 3.5 THEN
        SET `standing` = "Dean's List";
    ELSEIF `gpa` >= 2.5 THEN
        SET `standing` = "Good Standing";
    ELSEIF `gpa` >= 2.0 THEN
        SET `standing` = "Academic Probation";
    ELSE
        SET `standing` = "Academic Dismissal";
    END IF;
    UPDATE `STUDENT` SET `STU_STANDING` = `standing` WHERE `STU_ID` = `stu_id`;
END$$
-- call with `CALL update_standing(n);` where n is the student id
