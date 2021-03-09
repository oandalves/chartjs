-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema chartjs
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema chartjs
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `chartjs` DEFAULT CHARACTER SET utf8 ;
USE `chartjs` ;

-- -----------------------------------------------------
-- Table `chartjs`.`vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chartjs`.`vendedor` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `chartjs`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `chartjs`.`venda` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `venda` INT NOT NULL,
  `vendedor_id` INT NOT NULL,
  PRIMARY KEY (`id`, `vendedor_id`),
  INDEX `fk_venda_vendedor_idx` (`vendedor_id` ASC),
  CONSTRAINT `fk_venda_vendedor`
    FOREIGN KEY (`vendedor_id`)
    REFERENCES `chartjs`.`vendedor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
