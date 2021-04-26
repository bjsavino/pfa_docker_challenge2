create database nodedb character set utf8 collate utf8_general_ci;

USE nodedb;

CREATE TABLE modulos (id INT PRIMARY KEY AUTO_INCREMENT, modulo varchar(255) NOT NULL);

INSERT INTO modulos (modulo) VALUES("Docker");
INSERT INTO modulos (modulo) VALUES("Padrões e técnicas avançadas com Git e Github");
INSERT INTO modulos (modulo) VALUES("Integração contínua");
INSERT INTO modulos (modulo) VALUES("Kubernetes");
INSERT INTO modulos (modulo) VALUES("Fundamentos de Arquitetura de Software");
INSERT INTO modulos (modulo) VALUES("Comunicação");


