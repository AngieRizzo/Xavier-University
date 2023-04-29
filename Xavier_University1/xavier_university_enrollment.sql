CREATE TABLE `ENROLLMENT` (
    `ENROLL_ID` int NOT NULL AUTO_INCREMENT,
    `STU_ID` int NOT NULL, -- Foreign key to STUDENT table
    `CLASS_ID` int NOT NULL, -- Foreign key to CLASS table
    `ENROLL_GRADE` decimal(4,2) DEFAULT NULL, -- Grade received in class, only if the semester is over. Otherwise it's the grade the professor has given the student so far.
    PRIMARY KEY (`ENROLL_ID`),
    FOREIGN KEY (`STU_ID`) REFERENCES STUDENT(`STU_ID`),
    FOREIGN KEY (`CLASS_ID`) REFERENCES CLASS(`CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


----------------
-- PROCEDURES --
----------------

-- student triggers placed here because they need ENROLLMENT table to exist

-- Update GPA
-- search enrollment table for student id, the sum of the grades, and the count of the grades, then divide the sum by the count to get the GPA
-- update the student table with the new GPA
-- if the student has no grades, set the GPA to 0
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
DELIMITER $$
CREATE TRIGGER `update_gpa_trigger_insert` AFTER INSERT ON `ENROLLMENT`
FOR EACH ROW
BEGIN
    CALL update_gpa(NEW.`STU_ID`);
END$$
DELIMITER ;
