--1)
CREATE SCHEMA avaliacaocontinua;

--2)
CREATE TABLE avaliacaocontinua.company (
    company_name VARCHAR(100) NOT NULL,
    city VARCHAR(100),
    PRIMARY KEY (company_name)
);

--3)
CREATE TABLE avaliacaocontinua.employee (
    person_name VARCHAR(100) NOT NULL,
    street VARCHAR(100),
    city VARCHAR(100),
    PRIMARY KEY (person_name)
);

--4)
CREATE TABLE avaliacaocontinua.manages (
    person_name VARCHAR(100) NOT NULL,
    manager_name VARCHAR(100),
    PRIMARY KEY (person_name)
);

--5)    
CREATE TABLE avaliacaocontinua.works (
    person_name VARCHAR(100) NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    salary FLOAT,
    PRIMARY KEY (person_name)
);

--6)
ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT FK_works_employee
FOREIGN KEY (person_name) REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;

--7)
ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT FK_works_company
FOREIGN KEY (company_name) REFERENCES avaliacaocontinua.company(company_name)
ON UPDATE CASCADE
ON DELETE CASCADE;

-- 8)
ALTER TABLE avaliacaocontinua.manages
ADD CONSTRAINT FK_manages_employee
FOREIGN KEY (person_name) REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;