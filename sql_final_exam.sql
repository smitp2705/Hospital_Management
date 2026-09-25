create database hospital_manegment;
use hospital_manegment;
create table patients (
    patient_id int primary key,
    name varchar(100),
    dob date,
    gender varchar(10),
    phone_number varchar(15),
    email varchar(100),
    address varchar(200),
    registration_date date
);
insert into patients values
(1,'amit shah','1995-02-10','male','9876543210','amit@gmail.com','ahmedabad','2024-01-05'),
(2,'riya patel','1998-06-15','female','9876543211','riya@gmail.com','surat','2024-01-10'),
(3,'rahul mehta','1992-03-22','male','9876543212','rahul@gmail.com','vadodara','2024-02-01'),
(4,'sneha joshi','2000-11-12','female','9876543213','sneha@gmail.com','rajkot','2024-02-15'),
(5,'karan verma','1990-09-09','male','9876543214','karan@gmail.com','delhi','2024-03-01'),
(6,'neha singh','1996-05-18','female','9876543215','neha@gmail.com','mumbai','2024-03-10'),
(7,'rohit kumar','1988-12-25','male','9876543216','rohit@gmail.com','pune','2024-03-15'),
(8,'anjali desai','1999-08-08','female','9876543217','anjali@gmail.com','ahmedabad','2024-04-01'),
(9,'vikas jain','1993-01-14','male','9876543218','vikas@gmail.com','indore','2024-04-05'),
(10,'pooja sharma','1997-07-07','female','9876543219','pooja@gmail.com','jaipur','2024-04-10'),
(11,'manish patel','1985-04-04','male','9876543220','manish@gmail.com','surat','2024-04-15'),
(12,'nisha mehta','1991-06-06','female','9876543221','nisha@gmail.com','baroda','2024-04-20'),
(13,'arjun rana','1994-09-09','male','9876543222','arjun@gmail.com','chandigarh','2024-04-22'),
(14,'kavita joshi','1996-10-10','female','9876543223','kavita@gmail.com','udaipur','2024-04-25'),
(15,'suresh yadav','1987-11-11','male','9876543224','suresh@gmail.com','patna','2024-04-28'),
(16,'divya kapoor','1999-02-02','female','9876543225','divya@gmail.com','delhi','2024-05-01'),
(17,'mohit aggarwal','1992-12-12','male','9876543226','mohit@gmail.com','noida','2024-05-03'),
(18,'isha malhotra','1998-03-03','female','9876543227','isha@gmail.com','gurgaon','2024-05-05'),
(19,'aakash roy','1990-05-05','male','9876543228','aakash@gmail.com','kolkata','2024-05-08'),
(20,'preeti sinha','1995-07-07','female','9876543229','preeti@gmail.com','ranchi','2024-05-10');


create table doctors (
    doctor_id int primary key,
    name varchar(100),
    specialization varchar(100),
    phone_number varchar(15),
    email varchar(100),
    available_days varchar(50),
    consultation_fee int
);
insert into doctors values
(1,'dr. sharma','cardiology','9000000001','sharma@hosp.com','mon-fri',1500),
(2,'dr. patel','neurology','9000000002','patel@hosp.com','mon-thu',1800),
(3,'dr. mehta','orthopedic','9000000003','mehta@hosp.com','tue-fri',1200),
(4,'dr. verma','dermatology','9000000004','verma@hosp.com','mon-wed',1000),
(5,'dr. singh','pediatrics','9000000005','singh@hosp.com','mon-sat',900),
(6,'dr. khan','ent','9000000006','khan@hosp.com','tue-sat',800),
(7,'dr. joshi','general','9000000007','joshi@hosp.com','mon-fri',700),
(8,'dr. iyer','cardiology','9000000008','iyer@hosp.com','wed-fri',1600),
(9,'dr. rao','neurology','9000000009','rao@hosp.com','mon-fri',2000),
(10,'dr. das','orthopedic','9000000010','das@hosp.com','tue-fri',1300),
(11,'dr. malhotra','dermatology','9000000011','malhotra@hosp.com','mon-sat',1100),
(12,'dr. nair','pediatrics','9000000012','nair@hosp.com','mon-fri',950),
(13,'dr. chawla','ent','9000000013','chawla@hosp.com','wed-sat',850),
(14,'dr. bansal','general','9000000014','bansal@hosp.com','mon-fri',750),
(15,'dr. roy','cardiology','9000000015','roy@hosp.com','mon-thu',1700),
(16,'dr. gupta','neurology','9000000016','gupta@hosp.com','tue-fri',1900),
(17,'dr. kapoor','orthopedic','9000000017','kapoor@hosp.com','mon-fri',1400),
(18,'dr. sethi','dermatology','9000000018','sethi@hosp.com','wed-fri',1050),
(19,'dr. arora','pediatrics','9000000019','arora@hosp.com','mon-sat',920),
(20,'dr. jain','general','9000000020','jain@hosp.com','mon-fri',780);

alter table doctors
add years_of_experience int;

update doctors set years_of_experience = 18 where doctor_id = 1;
update doctors set years_of_experience = 12 where doctor_id = 2;
update doctors set years_of_experience = 8  where doctor_id = 3;
update doctors set years_of_experience = 5  where doctor_id = 4;
update doctors set years_of_experience = 20 where doctor_id = 5;
update doctors set years_of_experience = 15 where doctor_id = 6;
update doctors set years_of_experience = 7  where doctor_id = 7;
update doctors set years_of_experience = 22 where doctor_id = 8;
update doctors set years_of_experience = 10 where doctor_id = 9;
update doctors set years_of_experience = 6  where doctor_id = 10;
create table appointments (
    appointment_id int primary key,
    patient_id int,
    doctor_id int,
    appointment_date date,
    status varchar(20),
    foreign key (patient_id) references patients(patient_id),
    foreign key (doctor_id) references doctors(doctor_id)
);

insert into appointments values
(1,1,1,'2024-05-01','completed'),
(2,2,2,'2024-05-02','scheduled'),
(3,3,3,'2024-05-03','completed'),
(4,4,4,'2024-05-04','cancelled'),
(5,5,5,'2024-05-05','completed'),
(6,6,6,'2024-05-06','scheduled'),
(7,7,7,'2024-05-07','completed'),
(8,8,8,'2024-05-08','scheduled'),
(9,9,9,'2024-05-09','completed'),
(10,10,10,'2024-05-10','completed'),
(11,11,11,'2024-05-11','scheduled'),
(12,12,12,'2024-05-12','completed'),
(13,13,13,'2024-05-13','cancelled'),
(14,14,14,'2024-05-14','completed'),
(15,15,15,'2024-05-15','scheduled'),
(16,16,16,'2024-05-16','completed'),
(17,17,17,'2024-05-17','completed'),
(18,18,18,'2024-05-18','scheduled'),
(19,19,19,'2024-05-19','completed'),
(20,20,20,'2024-05-20','completed');


create table medical_records (
    record_id int primary key,
    patient_id int,
    doctor_id int,
    diagnosis varchar(200),
    prescription varchar(200),
    treatment_date date,
    foreign key (patient_id) references patients(patient_id),
    foreign key (doctor_id) references doctors(doctor_id)
);


insert into medical_records values
(1,1,1,'heart pain','ecg + medicine','2024-05-01'),
(2,2,2,'migraine','pain killers','2024-05-02'),
(3,3,3,'fracture','plaster','2024-05-03'),
(4,4,4,'skin allergy','cream','2024-05-04'),
(5,5,5,'fever','syrup','2024-05-05'),
(6,6,6,'ear infection','drops','2024-05-06'),
(7,7,7,'cold','tablets','2024-05-07'),
(8,8,8,'chest pain','tests','2024-05-08'),
(9,9,9,'seizure','medication','2024-05-09'),
(10,10,10,'joint pain','physio','2024-05-10'),
(11,11,11,'acne','ointment','2024-05-11'),
(12,12,12,'flu','syrup','2024-05-12'),
(13,13,13,'throat pain','antibiotics','2024-05-13'),
(14,14,14,'weakness','vitamins','2024-05-14'),
(15,15,15,'heart issue','angiography','2024-05-15'),
(16,16,16,'headache','mri','2024-05-16'),
(17,17,17,'bone pain','x-ray','2024-05-17'),
(18,18,18,'rashes','medication','2024-05-18'),
(19,19,19,'cold & fever','syrup','2024-05-19'),
(20,20,20,'general checkup','advice','2024-05-20');

create table billing (
    invoice_id int primary key,
    patient_id int,
    appointment_id int,
    amount int,
    payment_status varchar(20),
    payment_date date,
    foreign key (patient_id) references patients(patient_id),
    foreign key (appointment_id) references appointments(appointment_id)
);

insert into billing values
(1,1,1,1500,'paid','2024-05-01'),
(2,2,2,1800,'pending','2024-05-02'),
(3,3,3,1200,'paid','2024-05-03'),
(4,4,4,1000,'cancelled','2024-05-04'),
(5,5,5,900,'paid','2024-05-05'),
(6,6,6,800,'paid','2024-05-06'),
(7,7,7,700,'paid','2024-05-07'),
(8,8,8,1600,'pending','2024-05-08'),
(9,9,9,2000,'paid','2024-05-09'),
(10,10,10,1300,'paid','2024-05-10'),
(11,11,11,1100,'pending','2024-05-11'),
(12,12,12,950,'paid','2024-05-12'),
(13,13,13,850,'cancelled','2024-05-13'),
(14,14,14,750,'paid','2024-05-14'),
(15,15,15,1700,'pending','2024-05-15'),
(16,16,16,1900,'paid','2024-05-16'),
(17,17,17,1400,'paid','2024-05-17'),
(18,18,18,1050,'pending','2024-05-18'),
(19,19,19,920,'paid','2024-05-19'),
(20,20,20,780,'paid','2024-05-20');


create table departments (
    department_id int primary key,
    department_name varchar(100)
);

insert into departments values
(1,'cardiology'),(2,'neurology'),(3,'orthopedic'),(4,'dermatology'),
(5,'pediatrics'),(6,'ent'),(7,'general'),(8,'radiology'),
(9,'oncology'),(10,'physiotherapy'),
(11,'dental'),(12,'psychiatry'),(13,'urology'),(14,'gastro'),
(15,'nephrology'),(16,'pulmonology'),(17,'endocrinology'),
(18,'ophthalmology'),(19,'rheumatology'),(20,'emergency');


create table doctor_department (
    doctor_id int,
    department_id int,
    foreign key (doctor_id) references doctors(doctor_id),
    foreign key (department_id) references departments(department_id)
);

insert into doctor_department values
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,1),(9,2),(10,3),
(11,4),(12,5),(13,6),(14,7),(15,1),
(16,2),(17,3),(18,4),(19,5),(20,7);

select * from patients;
select * from doctors;
select * from appointments;
select * from medical_records;
select * from billing;
select * from departments;
select * from doctor_department;   

update patients set address = 'indore' where patient_id = 3;
delete from appointments where status = 'cancelled' and appointment_date < date_sub(curdate(), interval 6 month);
select* from patients where registration_date>=date_sub(curdate(),interval 1 year );
create table bill_table as select b.patient_id,b.amount,p.name,p.gender from patients as p join billing as b on b.patient_id=p.patient_id;
select * from bill_table order by amount desc limit 5;
select * from doctors where consultation_fee>1000;
select * from appointments where status="scheduled" and doctor_id=3;
select * from doctors where specialization="cardiology" or specialization="neurology";
select * from doctors order by specialization;
select doctor_id , count(patient_id) from appointments group by doctor_id;
select d.department_name,sum(b.amount) from billing as b join appointments as a on b.appointment_id=a.appointment_id join doctor_department as dm on 
a.doctor_id=dm.doctor_id join departments as d on dm.department_id=d.department_id group by d.department_name;
select sum(amount)  as total_revenue from billing;
select doctor_id, count(*) as visits from appointments group by doctor_id order by visits desc limit 1;
select avg(consultation_fee) as avg_fees from doctors;
select d.name as doctor_name, dep.department_name
from doctors d inner join doctor_department dd on d.doctor_id = dd.doctor_id inner join departments dep on dd.department_id = dep.department_id;
select p.name, a.appointment_date, a.status from patients p left join appointments a on p.patient_id = a.patient_id where a.status = 'completed';
select a.appointment_id, a.appointment_date from billing b right join appointments a on b.appointment_id = a.appointment_id where b.invoice_id is null;
select p.patient_id, p.name, a.appointment_id from patients p left join appointments a on p.patient_id = a.patient_id
union
select p.patient_id, p.name, a.appointment_id from patients p right join appointments a on p.patient_id = a.patient_id;
select doctor_id, count(patient_id) as total_patients from appointments group by doctor_id having count(patient_id) > 50;
select patient_id, sum(amount) as total_spent from billing where payment_status = 'paid' group by patient_id order by total_spent desc limit 1;
select a.* from appointments a where doctor_id in (select doctor_id from doctors where specialization = 'dermatology');
select month(appointment_date), count(patient_id) from appointments group by month(appointment_date);
select record_id, date_format(treatment_date, '%d-%m-%y') as formatted_date from medical_records;
select upper(name) as patient_name from patients;
select trim(name) as doctor_name from doctors;
select name, ifnull(phone_number, 'not available') as phone from patients;
select name, consultation_fee, dense_rank() over (order by consultation_fee desc) as fee_rank from doctors;
select payment_date, amount, sum(amount) over (order by payment_date) as running_total from billing where payment_status = 'paid';
select p.patient_id,p.name,count(m.record_id) as total_records,
case
	when count(m.record_id) > 5 then 'high'
	when count(m.record_id) between 3 and 5 then 'medium'
	else 'low'
end as patient_risk_level from patients p left join medical_records m  on p.patient_id = m.patient_id group by p.patient_id, p.name;
select name,years_of_experience,
case
	when years_of_experience > 15 then 'senior'
    when years_of_experience between 5 and 15 then 'mid-level'
	else 'junior'
end as doctor_category from doctors;