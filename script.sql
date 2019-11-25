create database student_examination_sys;

use student_examination_sys;

CREATE TABLE student (
  id VARCHAR(3) NOT NULL,
  name VARCHAR(32) NULL,
  age INT NULL,
  sex VARCHAR(6) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE subject (
  id VARCHAR(4) NOT NULL,
  subject VARCHAR(32) NULL,
  teacher VARCHAR(32) NULL,
  description VARCHAR(64) NULL,
  PRIMARY KEY (id)
);

CREATE TABLE score (
  id BIGINT NOT NULL,
  student_id VARCHAR(3) NULL,
  subject_id VARCHAR(32) NULL,
  score INT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (student_id) REFERENCES student(id),
  FOREIGN KEY (subject_id) REFERENCES subject(id)
);
