--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL AUTO_INCREMENT,
  `nombreRol` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idRol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL AUTO_INCREMENT,
  `nombreUsr` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `idRol` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idUsuarios`),
  KEY `fkIdRol_idx` (`idRol`),
  CONSTRAINT `fkIdRol` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `usuarios` VALUES (1,'admin','123',1,1);
INSERT INTO `roles` VALUES (1,'administrador'),(2,'operador'),(3,'invitado');
