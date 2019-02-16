CREATE DATABASE spring_app_db;

USE spring_app_db;

CREATE USER 'app_user'@'localhost' IDENTIFIED BY 'test123';

GRANT ALL PRIVILEGES ON * . * TO 'app_user'@'localhost';

FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT,
    nome VARCHAR(255) NULL,
    email VARCHAR(255) NULL,
    PRIMARY KEY (id)
)  ENGINE=INNODB;
