CREATE TABLE IF NOT EXISTS abonne (
  id_abonne int(3) NOT NULL AUTO_INCREMENT,
  prenom varchar(15) NOT NULL,
  PRIMARY KEY (id_abonne)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS emprunt (
  id_emprunt int(3) NOT NULL AUTO_INCREMENT,
  id_livre int(3) DEFAULT NULL,
  id_abonne int(3) DEFAULT NULL,
  date_sortie date NOT NULL,
  date_rendu date DEFAULT NULL,
  PRIMARY KEY (id_emprunt),
  KEY id_livre (id_livre),
  KEY id_abonne (id_abonne)
) ENGINE=InnoDB DEFAULT CHARSET=latin1  ;


CREATE TABLE IF NOT EXISTS livre (
  id_livre int(3) NOT NULL AUTO_INCREMENT,
  auteur varchar(25) NOT NULL,
  titre varchar(30) NOT NULL,
  PRIMARY KEY (id_livre)
) ENGINE=InnoDB DEFAULT CHARSET=latin1  ;