CREATE SCHEMA IF NOT EXISTS COPA;
USE COPA;

CREATE TABLE IF NOT EXISTS GRUPOS (
  ID INT NOT NULL AUTO_INCREMENT,
  NOME ENUM('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H') NOT NULL,
  PRIMARY KEY (ID)
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS TIMES (
  ID INT NOT NULL,
  NOME VARCHAR(50) NOT NULL,
  ABREVIACAO CHAR(3) NOT NULL,
  Score DECIMAL(10,1) NOT NULL,
  FK_ID_GRUPOS INT NOT NULL,
  CONSTRAINT FK_TIMES_GRUPOS
    FOREIGN KEY (FK_ID_GRUPOS)
    REFERENCES COPA.GRUPOS(ID)
)
ENGINE = InnoDB;



CREATE UNIQUE INDEX NOME_TIME_UNIQUE ON COPA.TIMES (ABREVIACAO);
CREATE INDEX FK_TIMES_GRUPOS_IDX ON COPA.TIMES (FK_ID_GRUPOS);