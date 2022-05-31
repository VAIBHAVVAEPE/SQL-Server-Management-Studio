drop database hospital;

Create database Hospital;
use hospital;
create table Doctor(did int primary key,dname varchar(30), daddress varchar(30),
Qualification char(30));

Create table PatientMaster(Pcode int primary key,pname char(30),paddr char(40),
age int ,gender char(3));

create table AdmittedPatient(pcode int,Entery_Date date,DischargeDate varchar(30),
wardNo int,did int,
constraint fkk foreign key (did) references Doctor (did),
primary key (pcode,Entery_Date),
constraint fkk1 foreign key (pcode) references PatientMaster (pcode));

create table Bill (Billno int primary key ,bill_Amount int ,pcode int,
constraint fkk2 foreign key (pcode )references PatientMaster (pcode));


select * from Doctor;
select * from PatientMaster;
select *from AdmittedPatient;
select * from Bill;
use hospital;

drop table Doctor
--3.	write a query to drop primary key from patientMaster

alter table bill drop constraint fkk2;
alter table admittedPatient drop constraint fkk1;  
alter table PatientMaster drop constraint PK_PatientMaster;

---add foreign key and primary key

alter table PatientMaster add constraint Pcode primary key;


