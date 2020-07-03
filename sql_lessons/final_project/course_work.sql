DROP DATABASE IF EXISTS registry;
CREATE DATABASE registry;
use registry;

DROP TABLE IF EXISTS profarea;
CREATE TABLE profarea (
  profarea_id bigint(20) unsigned NOT NULL AUTO_INCREMENT, 
  name VARCHAR(255) COMMENT 'Профессиональная область',
  PRIMARY KEY (profarea_id),
  UNIQUE KEY profarea_id (profarea_id),
  KEY profarea_name_idx (name)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ;

DROP TABLE IF exists institution;
CREATE TABLE institution (
  inst_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (inst_id),
  UNIQUE KEY name (name)
) ENGINE=InnoDB auto_increment=27 DEFAULT CHARSET=utf8;

DROP TABLE IF exists users;
CREATE TABLE users (
  user_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(128) DEFAULT NULL,
  email varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  PRIMARY KEY (user_id),
  KEY email (email),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

DROP TABLE IF exists profile;
CREATE TABLE profile (
  profile_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  user_id bigint(20) unsigned NOT NULL,
  firstname varchar(50) DEFAULT NULL,
  lastname varchar(50) DEFAULT NULL,
  email varchar(120) DEFAULT NULL,
  PRIMARY KEY (profile_id),
  KEY profile_ibfk_2 (user_id),
  CONSTRAINT profile_ibfk_2 FOREIGN KEY (user_id) REFERENCES users (user_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

DROP TABLE IF exists education;
CREATE TABLE education (
  profile_id bigint(20) unsigned NOT NULL DEFAULT '0',
  inst_id bigint(20) unsigned NOT NULL DEFAULT '0',
  `rank` int(20) DEFAULT NULL,
  `year` int(20) DEFAULT NULL,
  PRIMARY KEY (profile_id,inst_id),
  KEY education_ibfk_2 (inst_id),
  CONSTRAINT education_ibfk_1 FOREIGN KEY (profile_id) REFERENCES profile (profile_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT education_ibfk_2 FOREIGN KEY (inst_id) REFERENCES institution (inst_id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF exists `position`;
CREATE TABLE `position` (
  position_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  profile_id bigint(20) unsigned NOT NULL,
  `rank` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT 'название должности',
  profarea_id bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (position_id),
  KEY position_ibfk_1 (profile_id),
  CONSTRAINT position_ibfk_1 FOREIGN KEY (profile_id) REFERENCES profile (profile_id) ON DELETE CASCADE ON UPDATE cascade, 
  CONSTRAINT position_ibfk_2 FOREIGN KEY (profarea_id) REFERENCES profarea (profarea_id) ON DELETE CASCADE ON UPDATE cascade
) ENGINE=InnoDB AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS study_course;
CREATE TABLE study_course (
  study_id SERIAL primary KEY,
  name varchar(255)
);

DROP TABLE IF EXISTS study_group;
CREATE TABLE study_group (
	group_id BIGINT unsigned not NULL,
	profile_id BIGINT unsigned not NULL,
	name varchar(50),
  	CONSTRAINT group_ibfk_1 FOREIGN KEY (group_id) REFERENCES study_course (study_id) ON DELETE CASCADE ON UPDATE cascade, 
  	CONSTRAINT group_ibfk_2 FOREIGN KEY (profile_id) REFERENCES profile (profile_id) ON DELETE CASCADE ON UPDATE cascade
) ENGINE=InnoDB auto_increment=101 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS registered;  	
CREATE TABLE registered (
  cust_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  profile_id bigint(20) unsigned NOT null,
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (cust_id),
  UNIQUE KEY cust_id (cust_id),
  KEY index_of_profile (profile_id),
  CONSTRAINT index_of_profile FOREIGN KEY (profile_id) REFERENCES profile (profile_id) ON DELETE CASCADE ON UPDATE cascade
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS course_taken; 
CREATE TABLE course_taken (
  course_id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  cust_id bigint(20) unsigned NOT NULL DEFAULT '0',
  study_id bigint(20) unsigned NOT NULL DEFAULT '0',
  created_at datetime DEFAULT CURRENT_TIMESTAMP,
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (course_id),
  UNIQUE KEY course_id (course_id),
  KEY index_of_cust_id (cust_id),
  CONSTRAINT index_of_cust_id FOREIGN KEY (cust_id) REFERENCES registered (cust_id) ON DELETE CASCADE ON UPDATE cascade,
  CONSTRAINT course_taken_ibfl1 FOREIGN KEY (study_id) REFERENCES study_course (study_id) ON DELETE CASCADE ON UPDATE cascade
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

