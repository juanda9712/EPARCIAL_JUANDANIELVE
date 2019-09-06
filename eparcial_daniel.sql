-- MySQL Script generated by MySQL Workbench
-- Thu Sep  5 18:29:44 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`clientes` (
  `id_clientes` INT NOT NULL AUTO_INCREMENT,
  `razon_social` VARCHAR(45) NULL,
  `nro_documento` VARCHAR(45) NULL,
  `estado` TINYINT NULL,
  PRIMARY KEY (`id_clientes`),
  UNIQUE INDEX `id_clientes_UNIQUE` (`id_clientes` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`categorias` (
  `id_categorias` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  `estado` TINYINT NULL,
  PRIMARY KEY (`id_categorias`),
  UNIQUE INDEX `id_categorias_UNIQUE` (`id_categorias` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`productos` (
  `id_productos` INT NOT NULL AUTO_INCREMENT,
  `codigo` INT NULL,
  `descripcion` VARCHAR(45) NULL,
  `precio_compra` INT NULL,
  `precio_venta` INT NULL,
  `stock` INT NULL,
  `estado` TINYINT NULL,
  UNIQUE INDEX `id_productos_UNIQUE` (`id_productos` ASC) VISIBLE,
  PRIMARY KEY (`id_productos`),
  CONSTRAINT `fk_id_categorias`
    FOREIGN KEY (`id_productos`)
    REFERENCES `mydb`.`categorias` (`id_categorias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;