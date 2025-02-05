	CREATE TABLE Person (
      ID number PRIMARY KEY,
      name varchar2(20) NOT NULL,
      address varchar2(200)
      )
      
      CREATE table Employee (
        Id_personne number PRIMARY key,
        CONSTRAINT fk_emp FOREIGN KEY (Id_personne) REFERENCES Person(ID)
        )
        
        CREATE TABLE Service (
          id number PRIMARY KEY,
          car_kms number CHECK (car_kms>0),
          hours_spent number CHECK (hours_spent = NULL OR hours_spent>0),
          date_adm date,
          date_finish date,
          employee number,
          car number,
          CONSTRAINT fk_ser FOREIGN KEY (employee) REFERENCES Employee(Id_personne)
          )
          
         ALTER TABLE Service ADD CONSTRAINT ck_car_kms CHECK (car_kms NOT NULL);
         aLTER TABLE Service ADD CONSTRAINT ck_date_adm CHECK (date_adm NOT NULL)
         aLTER TABLE Service ADD CONSTRAINT ck_employee CHECK (employee NOT NULL)
          aLTER TABLE Service ADD CONSTRAINT ck_car CHECK (car NOT NULL)
          
          ALTER TABLE Service DROP CONSTRAINT ck_car