CREATE TABLE dbhomework.Person(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255),
    phoneNumber varchar(50),
    emailAdress varchar(100),
    adressId int,
      FOREIGN KEY (adressId) REFERENCES Adress(id), 
      PRIMARY KEY (id)
    );

CREATE TABLE dbhomework.Adress(
	id int NOT NULL AUTO_INCREMENT,
	street varchar(255),
    city varchar(50),
    state varchar(100),
    postalCode varchar(100),
    country varchar(100),
      PRIMARY KEY (id)
    );
    
CREATE TABLE dbhomework.Student(
	studentNumber int NOT NULL,
	averageMark double(100,3),
	id int,
    supervisorId int,
      FOREIGN KEY (supervisorId) REFERENCES Professor(staffNumber), 
      FOREIGN KEY (id) REFERENCES Person(id),
      PRIMARY KEY (id,studentNumber)
    );
   
CREATE INDEX idx_staffNumber ON dbhomework.Professor(staffNumber);
    
CREATE TABLE dbhomework.Professor(
	staffNumber int NOT NULL,
	salary int,
    id int ,
    yearsOfService int,
    numberOfClasses int,
      FOREIGN KEY (id) REFERENCES Person(id), 
      PRIMARY KEY (id,staffNumber)
    );
    