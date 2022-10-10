CREATE DATABASE gouniv ;

-- create users
CREATE TABLE staff, staff_no SERIAL PRIMARY KEY, name VARCHAR ;
CREATE USER Assistant ;
CREATE USER Admin ;
CREATE USER Doyer ;

-- create admin user
ALTER USER Admin PASSWORD 'admin' ;
ALTER DATABASE gouniv OWNER TO Admin;

-- create tables 
CREATE TABLE staff(
    staffNO SERIAL PRIMARY KEY,
    name VARCHAR(50),
    region VARCHAR(30)
);CREATE TABLE student(
    studentId SERIAL PRIMARY KEY,
    name VARCHAR,
    registerred boolean,
    region VARCHAR,
    staffNO INT REFERENCES staff( staffNO)
);CREATE TABLE course(
    courseCode SERIAL PRIMARY KEY,
    title VARCHAR,
    credit INT,
    quota INT,
    staffNO INT REFERENCES staff(staffNO)
);CREATE TABLE enrollement(
    studentID INT REFERENCES student(studentID),
    courseCode INT REFERENCES course(courseCode),
    dateEnrolled DATE,
    finalGrade VARCHAR,
    PRIMARY KEY(studentID,courseCode)
);CREATE TABLE assignment(
    assignmentNO INT,
    studentID INT REFERENCES student(studentID),
    courseCode INT REFERENCES course(courseCode),
    grade INT,
    PRIMARY KEY(assignmentNO, studentID, courseCode)
);


-- inseriton des donnees 
INSERT INTO course(title,credit,quota,staffno) VALUES ('Math',4,6,1),('Géo',5,9,10),('Histoire',2,1,5),('Français',2,3,2);
INSERT INTO staff(name, region) VALUES ('Urbain','Goma'),('Dany','Bukavu'), ('Gloire','Goma'),('Annette','Sankuru'), ('Esther', 'Kindu');

