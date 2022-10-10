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


-- inseriton des donnees 
INSERT INTO course(title,credit,quota,staffno) VALUES ('Math',4,6,1),('Géo',5,9,10),('Histoire',2,1,5),('Français',2,3,2);
INSERT INTO staff(name, region) VALUES ('Urbain','Goma'),('Dany','Bukavu'), ('Gloire','Goma'),('Annette','Sankuru'), ('Esther', 'Kindu');