-- MySQL Script generated by MySQL Workbench
-- Tue Aug  8 21:13:50 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering


-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema backend
-- -----------------------------------------------------

-- CAMBIE SCHEMA POR DATABASE PARA USAR MARIADB EN CONSOLA

DROP DATABASE IF EXISTS `backend` ;

-- -----------------------------------------------------
-- Schema backend
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS `backend` DEFAULT CHARACTER SET latin1 ;
USE `backend` ;

-- -----------------------------------------------------
-- Table `backend`.`persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `backend`.`persona` ;

CREATE TABLE IF NOT EXISTS `backend`.`persona` (
  `dni` INT(11) NOT NULL,
  `nombre` VARCHAR(30) NOT NULL,
  `apellido` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`dni`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `backend`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `backend`.`usuario` ;

CREATE TABLE IF NOT EXISTS `backend`.`usuario` (
  `mail` VARCHAR(40) NOT NULL,
  `nickname` VARCHAR(20) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `dni_persona` INT(11) NOT NULL,
  PRIMARY KEY (`mail`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE INDEX `ingreso_ibfk_1_idx` ON `backend`.`usuario` (`dni_persona` ASC) VISIBLE;


