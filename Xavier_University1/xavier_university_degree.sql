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


----------------
-- PROCEDURES --
----------------

-- Update DEGREE_CREDITS based on the DEGREE_TYPE
-- This is done as follows:
-- Certificate: 30
-- Associate: 60
-- Bachelor: 120
-- Master: 30
-- Doctorate: 60
CREATE PROCEDURE `update_degree_credits`()
BEGIN
    -- make variables for degree_type, year_level_start, credits_earned, and credits_required
    -- get the student's degree type
    SELECT DEGREE_TYPE INTO @degree_type FROM DEGREE WHERE DEGREE_ID = NEW.DEGREE_ID;
    IF @degree_type = 'Certificate' THEN
        SET @degree_credits = 30;
    ELSEIF @degree_type = 'Associate' THEN
        SET @degree_credits = 60;
    ELSEIF @degree_type = 'Bachelor' THEN
        SET @degree_credits = 120;
    ELSEIF @degree_type = 'Master' THEN
        SET @degree_credits = 30;
    ELSEIF @degree_type = 'Doctorate' THEN
        SET @degree_credits = 60;
    END IF;
    UPDATE DEGREE SET DEGREE_CREDITS = @degree_credits WHERE DEGREE_ID = NEW.DEGREE_ID;
END$$
-- create trigger to run when the DEGREE table is updated and it's the degree's id that is updated in the DEGREE_ID field
-- the trigger will run the update_degree_credits procedure
DROP TRIGGER IF EXISTS `update_degree_credits_trigger`;
CREATE TRIGGER `update_degree_credits_trigger` AFTER UPDATE ON `DEGREE`
FOR EACH ROW
BEGIN
    IF NEW.DEGREE_ID != OLD.DEGREE_ID THEN
        CALL update_degree_credits();
    END IF;
END$$
-- create trigger to run when the DEGREE table is inserted into
-- the trigger will run the update_degree_credits procedure
DROP TRIGGER IF EXISTS `update_degree_credits_trigger_insert`;
CREATE TRIGGER `update_degree_credits_trigger_insert` AFTER INSERT ON `DEGREE`
FOR EACH ROW
BEGIN
    CALL update_degree_credits();
END$$
