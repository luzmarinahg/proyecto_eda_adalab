-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema abccorporation
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema abccorporation
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `abccorporation` DEFAULT CHARACTER SET utf8 ;
USE `abccorporation` ;

-- -----------------------------------------------------
-- Table `abccorporation`.`PERSONAL_INFO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `abccorporation`.`PERSONAL_INFO` (
  `IdEmployee` INT NOT NULL,
  `EmployeeNumber` VARCHAR(45) NULL,
  `Age` INT NULL,
  `DateBirth` INT NULL,
  `Gender` VARCHAR(45) NULL,
  `MaritalStatus` VARCHAR(45) NULL,
  `DistanceFromHome` INT NULL,
  `Education` INT NULL,
  `EducationField` VARCHAR(100) NULL,
  PRIMARY KEY (`IdEmployee`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `abccorporation`.`EMPLOYEE_SATISFACTION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `abccorporation`.`EMPLOYEE_SATISFACTION` (
  `IdEmployeeSatisfaction` INT NOT NULL AUTO_INCREMENT,
  `EnvironmentSatisfaction` INT NULL,
  `JobInvolvement` INT NULL,
  `JobSatisfaction` INT NULL,
  `RelationshipSatisfaction` INT NULL,
  `WorkLifeBalance` INT NULL,
  PRIMARY KEY (`IdEmployeeSatisfaction`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `abccorporation`.`JOB_DATA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `abccorporation`.`JOB_DATA` (
  `IdJobData` INT NOT NULL AUTO_INCREMENT,
  `Attrition` VARCHAR(45) NULL,
  `JobLevel` INT NULL,
  `JobRole` VARCHAR(100) NULL,
  `NumCompaniesWorked` INT NULL,
  `TotalWorkingYears` VARCHAR(45) NULL,
  `YearsAtCompany` INT NULL,
  `YearsSinceLastPromotion` INT NULL,
  `YearsWithCurrManager` INT NULL,
  `JOB_DATAcol` VARCHAR(45) NULL,
  PRIMARY KEY (`IdJobData`))
ENGINE = InnoDB
COMMENT = '\n';


-- -----------------------------------------------------
-- Table `abccorporation`.`SALARY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `abccorporation`.`SALARY` (
  `IdSalary` INT NOT NULL AUTO_INCREMENT,
  `HourlyRate` FLOAT NULL,
  `DailyRate` FLOAT NULL,
  `MonthlyRate` FLOAT NULL,
  `PercentSalaryHike` INT NULL,
  `SALARYcol` VARCHAR(45) NULL,
  PRIMARY KEY (`IdSalary`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `abccorporation`.`JOB_EXTRAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `abccorporation`.`JOB_EXTRAS` (
  `IdJobExtras` INT NOT NULL AUTO_INCREMENT,
  `OverTime` VARCHAR(45) NULL,
  `BusinessTravel` VARCHAR(45) NULL,
  `StockOptionLevel` INT NULL,
  `TrainingTimesLastYear` INT NULL,
  `RemoteWork` TINYINT NULL,
  `PerformanceRating` INT NULL,
  `JOB_EXTRAScol` VARCHAR(45) NULL,
  PRIMARY KEY (`IdJobExtras`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `abccorporation`.`UNION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `abccorporation`.`UNION` (
  `IdUnion` INT NOT NULL AUTO_INCREMENT,
  `PERSONAL_INFO_IdEmployee` INT NOT NULL,
  `EMPLOYEE_SATISFACTION_IdEmployeeSatisfaction` INT NOT NULL,
  `JOB_DATA_IdJobData` INT NOT NULL,
  `SALARY_IdSalary` INT NOT NULL,
  `JOB_EXTRAS_IdJobExtras` INT NOT NULL,
  PRIMARY KEY (`IdUnion`, `PERSONAL_INFO_IdEmployee`, `EMPLOYEE_SATISFACTION_IdEmployeeSatisfaction`, `JOB_DATA_IdJobData`, `SALARY_IdSalary`, `JOB_EXTRAS_IdJobExtras`),
  INDEX `fk_UNION_PERSONAL_INFO_idx` (`PERSONAL_INFO_IdEmployee` ASC) VISIBLE,
  INDEX `fk_UNION_EMPLOYEE_SATISFACTION1_idx` (`EMPLOYEE_SATISFACTION_IdEmployeeSatisfaction` ASC) VISIBLE,
  INDEX `fk_UNION_JOB_DATA1_idx` (`JOB_DATA_IdJobData` ASC) VISIBLE,
  INDEX `fk_UNION_SALARY1_idx` (`SALARY_IdSalary` ASC) VISIBLE,
  INDEX `fk_UNION_JOB_EXTRAS1_idx` (`JOB_EXTRAS_IdJobExtras` ASC) VISIBLE,
  CONSTRAINT `fk_UNION_PERSONAL_INFO`
    FOREIGN KEY (`PERSONAL_INFO_IdEmployee`)
    REFERENCES `abccorporation`.`PERSONAL_INFO` (`IdEmployee`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UNION_EMPLOYEE_SATISFACTION1`
    FOREIGN KEY (`EMPLOYEE_SATISFACTION_IdEmployeeSatisfaction`)
    REFERENCES `abccorporation`.`EMPLOYEE_SATISFACTION` (`IdEmployeeSatisfaction`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UNION_JOB_DATA1`
    FOREIGN KEY (`JOB_DATA_IdJobData`)
    REFERENCES `abccorporation`.`JOB_DATA` (`IdJobData`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UNION_SALARY1`
    FOREIGN KEY (`SALARY_IdSalary`)
    REFERENCES `abccorporation`.`SALARY` (`IdSalary`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_UNION_JOB_EXTRAS1`
    FOREIGN KEY (`JOB_EXTRAS_IdJobExtras`)
    REFERENCES `abccorporation`.`JOB_EXTRAS` (`IdJobExtras`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
