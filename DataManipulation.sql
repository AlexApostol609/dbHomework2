INSERT INTO dbhomework.Adress (street, city, state, postalCode, country)
VALUES ('123 Main St', 'New York', 'NY', '10001', 'USA');

INSERT INTO dbhomework.Adress (street, city, state, postalCode, country)
VALUES ('Str Valea Gardului', 'Ploiesti', 'PH', '106400', 'RO');

INSERT INTO dbhomework.Person (name, phoneNumber, emailAdress, adressId) 
VALUES ('Cristian Alin', '07223095733131', 'alex@example.com', 1);

INSERT INTO dbhomework.Person (name, phoneNumber, emailAdress, adressId) 
VALUES ('Ariciu Costi', '07212333131', 'costel@gmail.com', 2);

INSERT INTO dbhomework.Student (studentNumber, averageMark, supervisorId, id) 
VALUES (213425, 9.32, 234123, 1);

INSERT INTO dbhomework.Student (studentNumber, averageMark, supervisorId, id) 
VALUES (456, 9.32, 234123, 1);

INSERT INTO dbhomework.Professor (staffNumber, salary, id, yearsOfService, numberOfClasses)
VALUES (234123, 5000, 2, 4, 4);

INSERT INTO dbhomework.Professor (staffNumber, salary, id, yearsOfService, numberOfClasses)
VALUES (2002, 5000, 2, 4, 4);

SELECT * FROM dbhomework.Student WHERE averageMark > 9;

SELECT * FROM dbhomework.Professor WHERE salary < 6000;

UPDATE dbhomework.Professor SET salary = 70000 WHERE staffNumber = 234123;

UPDATE dbhomework.Person SET phoneNumber = 072313213 WHERE id = 1;

DELETE FROM dbhomework.Student WHERE studentNumber = 456;

DELETE FROM dbhomework.Professor WHERE staffNumber = 2002;

SELECT *
FROM dbhomework.Student s
INNER JOIN dbhomework.Professor p ON s.supervisorId = p.staffNumber;

SELECT p.name , p.phoneNumber, a.street , a.city, a.country
FROM dbhomework.Person p
RIGHT OUTER JOIN dbhomework.Adress a ON p.adressId = a.id;
