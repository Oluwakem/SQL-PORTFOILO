----CREATE BANK DATABASE
CREATE DATABASE APEX_BANK
GO
USE APEX_BANK

----CREATE TABLES AND INSERT VALUES INTO THE TABLE
----BRANCH TABLE
CREATE table Branch (
Branch_name varchar (25) primary key not null,--My primary key as identifier
Branch_city varchar (25),
Assets bigint
)

INSERT into Branch Values
('Gwarinpa', 'Abuja', 9000000),
('Lekki', 'Lagos', 7500000),
('Bodija', 'Ibadan', 6500000)


----ACCOUNT TABLE
CREATE table Account (
Account_number varchar (10) primary key not null, --My primary key as identifier
Branch_name varchar (25) foreign key references branch (branch_name),
balance bigint
)

INSERT into account values ('A-200', 'Bodija', 100000),
('A-100', 'Lekki', 150000),('A-050', 'Gwarinpa', 200000),
('A-300', 'Bodija', 30000),('A-250', 'Gwarinpa', 85000),
('A-150', 'Lekki', 75000),('A-350', 'Bodija', 65000), ('A-400', 'Lekki', 90000),('A-450', 'Bodija', 15000),('A-320', 'Gwarinpa', 60000),('A-420', 'Lekki', 50000),('A-380', 'Bodija', 25000),('A-120', 'Gwarinpa', 35000),('A-180', 'Lekki', 45000),('A-240', 'Bodija', 55000),('A-080', 'Lekki', 40000),('A-140', 'Gwarinpa', 10000)
insert into account values ('A-070', 'Bodija', 200000)
insert into account values ('A-500', 'Gwarinpa', 400000)
insert into account values ('A-510', 'Bodija', 240000)
insert into account values ('A-470', 'Lekki', 350000)
insert into account values ('A-600', 'Bodija',290000)
insert into account values ('A-340', 'Lekki', 100000)
insert into account values ('A-110', 'Gwarinpa', 500000)
insert into account values ('A-530', 'Lekki', 250000)
insert into account values ('A-170', 'Gwarinpa', 350000)
insert into account values ('A-190', 'Bodija', 400000)
insert into account values ('A-330', 'Gwarinpa', 300000)
insert into account values ('A-540', 'Lekki', 410000)
insert into account values ('A-610', 'Lekki', 350000)
insert into account values ('A-560', 'Bodija',200000)
insert into account values ('A-580', 'Gwarinpa', 700000)
insert into account values ('A-270', 'Bodija', 150000)
insert into account values ('A-090', 'Lekki', 350000)
insert into account values ('A-550', 'Gwarinpa', 350000)
insert into account values ('A-160', 'Lekki', 350000)


----DEPOSITOR TABLE
CREATE table Depositor (
Depositor_id varchar (7) primary key,
Customer_name varchar(25),
Branch_name varchar(25),
Account_number varchar(10)
)

INSERT into depositor values ('D-020','Aminu Abubaka','Gwarinpa', 'A-250'), ('D-040', 'Bimbo Adenuga','Lekki', 'A-420'),('D-060', 'Tunde Arowolo','Lekki', 'A-100'),('D-080', 'Fatima Abdul', 'Gwarinpa','A-500'),
 ('D-140', 'Dele Babalola', 'Lekki', 'A-150'), ('D-100', 'Adio Fela', 'Bodija', 'A-270'), ('D-120', 'Mariam Salawu','Gwarinpa', 'A-050'),
 ('D-640','Felix Combs', 'Gwarinpa', 'A-090'),('D-160','Adeshola Adetayo','Lekki', 'A-470'),('D-180','Banjuma Gaddo','Gwarinpa', 'A-110'),
 ('D-220','Aishat Lawal','Gwanrinpa', 'A-140'),('D-260','Amina Balarebe', 'Gwarinpa', 'A-330'),('D-200','Danlami Gowon','Gwarinpa', 'A-580'),
 ('D-280','Husenat Dunjama','Gwarinpa', 'A-170'),('D-240','Remilekun Adebayo','Lekki', 'A-160'),('D-300','Bidemi Bodunde','Lekki', 'A-610'),
('D-320','Gold Lawal','Lekki', 'A-340'),('D-340', 'Matthew Aleshinloye','Lekki', 'A-530'), ('D-360','Issac Peters','Lekki', 'A-540'),
 ('D-380','Brandy Green', 'Lekki', 'A-080' ),('D-400', 'Joyce Baker', 'Lekki','A-180'),('D-420', 'Billy Brown','Bodija', 'A-560'),
 ('D-440','Sam Adegoke', 'Bodija',' A-600'),('D-460','Idris Hassan','Bodija', 'A-450'), ('D-480','Ifeoma Edu', 'Bodija', 'A-510'),
('D-500','Seyi Awolowo', 'Bodija', 'A-190' ),('D-520', 'Chika Chuks', 'Bodija',  'A-300'),('D-540', 'Amarachi Ezeogo', 'Bodija', 'A-070'),
 ('D-560', 'Dunsin Ariyo','Bodija', 'A-200'), ('D-580', 'Rashid Jamal', 'Gwarinpa', 'A-550'),('D-600','Toba Coker', 'Bodija', 'A-380'),
 ('D-620','Jamie Andrews', 'Bodija', 'A-350'),('D-720', 'Ife Kuti','Bodija', 'A-240'), ('D-700', 'Hikmat Kareem', 'Gwarinpa', 'A-120'),
 ('D-680','Bayo Omotosho', 'Lekki', 'A-400'), ('D-660', 'Aishat Bello', 'Gwarinpa', 'A-320')


----CUSTOMER TABLE
CREATE table Customer (
Customer_id int identity (10,20),--My primary key as identifier 
Customer_name varchar (30) not null,
Gender char(1) check (gender in ('M', 'F')),
Phone bigint,
Email varchar (30),
Account_number varchar(10) foreign key references account (account_number),
customer_street varchar(50),
Customer_city varchar (10),
constraint pk_id primary key (customer_id, customer_name),
constraint ck_email check (email like'%@%')
)

insert into customer values( 'Aishat Bello', 'F', +23489700000, 'aishatbello@yahoo.com', 'A-320', 'No, 8, kubwa street', 'Abuja')
insert into customer values ('Bayo Omotosho', 'M',+23496754900, 'bayoomotosho@gmail.com', 'A-400', 'Plot 2, lekki Penninsula', 'Lagos')
insert into customer values ('Hikmat Kareem', 'F',+23488699999, 'hikmatkareem@gmail.com', 'A-120','france Road Gari-market', 'Kano')
insert into customer values ('Ife Kuti', 'M',     +23464444444, 'ifekuti@gmail.com', 'A-240', 'Lagos bye-pass, challenge', 'Ibadan')
insert into customer values ('Aminu Abubaka', 'M',+23495437869, 'aminuabubaka@gmail.com', 'A-250', '1st Avenue, Gwarinpa', 'Abuja')
insert into customer values ('Bimbo Adenuga', 'F',+23498434865, 'bimboadenugaa@gmail.com', 'A-420', '2nd Bus-stop ikeja road', 'Lagos')
insert into customer values ('Tunde Arowolo', 'M',+23495434845, 'tundearowolowo@gmail.com', 'A-100', 'Lagos express road', 'Ibadan')
insert into customer values ('Fatima Abdul', 'F', +23496234895, 'fatimaabdul@gmail.com', 'A-500', 'Doma avanue lafia raod', 'Lafia')
insert into customer values ('Dele Babalola', 'M',+23466234845, 'delebabalola@gmail.com', 'A-150', 'opposite balogun market', 'Ikeja')
insert into customer values ('Adio Fela', 'M',    +23478970975, 'adiofela@gmail.com', 'A-270', 'Adedibu street, molete', 'Bodija')
insert into customer values ('Mariam Salawu', 'F',  +23478175976, 'mariamsalawu@gmail.com', 'A-050', 'Utako road', 'Abuja')
insert into customer values ('Felix Combs', 'M',    +23474956975, 'felixcombs@gmail.com', 'A-090', '3rd Avenue Gwarinpa', 'Abuja')
insert into customer values ('Adeshola Adetayo', 'M', +23478356775, 'adesholaadetayo@gmail.com', 'A-470', 'Allen Avenue', 'Lagos')
insert  into customer values ('Banjuma Gaddo', 'M', +23456970975, 'banjumagaddo@gmail.com', 'A-110', 'Ganna street, Maitama', 'Abuja')
insert  into customer values ('Aishat Lawal', 'F', +23466980975, 'aishatlawal@gmail.com', 'A-140', 'Plot 1, Aminu Kano Crescent Wuse 2', 'Abuja')
insert into customer values ('Amina Balarebe', 'F',+23488699956, 'aminabalarebe@gmail.com', 'A-330','Mohammed Gado Nasco Road, 2nd Gate, Kubwa', 'Abuja')
insert into customer values ('Danlami Gowon', 'M', +23478975768, 'danlamigowon@gmail.com', 'A-580', 'Plot MF, 56A Mpape District, Cadastral Zone 08-04', 'Abuja')
insert into customer values ('Husenat Dunjama', 'F', +23488678456, 'husenatdunjama@gmail.com', 'A-170', 'Plot B4, Kilometer 5, Abuja-Kaduna Expressway Zuba', 'Abuja')
insert into customer values ('Remilekun Adebayo', 'M', +23478956975, 'remilekunadebayo@gmail.com', 'A-160', '52A, Adeniran Ogunsanya Street, Surulere', 'Lagos')
insert into customer values ('Bidemi Bodunde', 'F', +23488694956, 'bidemibodunde@gmail.com', 'A-610', '30, Awolowo Way, Ikeja',' Lagos')
insert into customer values ('Gold Lawal', 'F', +23478975567, 'goldlawal@yahoo.com', 'A-340', 'Market Road Badagry', 'Lagos')
insert into customer values ('Matthew Aleshinloye', 'M', +23456977375, 'matthewaleshinloye@yahoo.com', 'A-530', 'Ajose Adeogun, Victoria Island', 'Lagos')
insert into customer values ('Issac Peters', 'M', +23478975976, 'issacpeters@yahoo.com','A-540', 'No 5, Lagos-Ikorodu Road', 'Lagos')
insert into customer values ('Brandy Green', 'F',  +23428699956, 'brandygreen@yahoo.com', 'A-080', 'No 4, Iju Road, Agege', 'Lagos')
insert into customer values ('Joyce Baker', 'F',   +23448975768, 'joycebaker@yahoo.com', 'A-180', 'No 5, CMD Road, Shangisha, Magodo', 'Lagos')
insert into customer values ('Billy Brown','M',  +23478956868, 'billybrown@gmail.com', 'A-560', 'No 4, Osuntokun Avenue, Old, Bodija', 'Ibadan')
insert into customer values ('Sam Adegoke','M', +23467899951, 'samadegoke@yahoo.com', 'A-600', 'Opp Palms Mall, Ringroad', 'Ibadan')
insert into customer values ('Idris Hassan', 'M', +23467822954, 'idrishassan@yahoo.com', 'A-450', 'No 62, Lagos bye-pass Challenge', 'Ibadan')
insert into customer values ('Ifeoma Edu', 'F', +23467842956, 'ifeomaedu@yahoo.com', 'A-510', 'No 16, Oyo Road, Mokola', 'Ibadan')
insert into customer values ('Seyi Awolowo', 'M', +23448891951, 'seyiawolowo@yahoo.com', 'A-190', 'No 3, Ezenei Avenue', 'Asaba')
insert into customer values ('Chika Chuks', 'F', +23448891361, 'chikachuk@gmail.com', 'A-300', 'No 41 Imo Lane, Off Uzuakoli Road', 'Umuahia')
insert into customer values( 'Amarachi Ezeogo', 'F',+23446500001, 'amarachiezeogo@yahoo.com', 'A-070', 'No 4, Oluyole road', 'Ibadan')
insert into customer values ('Dunsin Ariyo', 'M',  +23436756900, 'dunsinariyo@gmail.com', 'A-200', 'No 4, lekki road', 'Lagos')
insert into customer values ('Rashid Jamal', 'M',+23488696829, 'rashidjamal@gmail.com', 'A-550','france Road Gari-market', 'Kano')
insert into customer values ('Toba Coker', 'M',   +23456542467, 'tobacoker@gmail.com', 'A-380', 'Lagos bye-pass, challenge', 'Ibadan')
insert into customer values ('Jamie Andrews', 'M',+23467836869, 'jamieandrews@gmail.com', 'A-350', 'Opp Gastab filling station New Garage', 'Ibadan')


---EMPLOYEE TABLE
CREATE table Employee (
Emp_id varchar (6) primary key,
Employee_name varchar (40),
Gender char(1) check (gender in ('M', 'F')),
Designation varchar (40),
Branch_name varchar (25) references branch (branch_name),
Salary bigint,
Start_date  date
)

INSERT employee values ('E001', 'Lukman Lawal','M', 'Branch Manager', 'Gwarinpa',600000, '2014-03-01'),('E002', 'John Adamson','M', 'Data Processing Officer', 'Lekki',50000, '2020-05-20'),
('E003', 'Kemi Faduke','F','Head of Operations', 'Bodija', 500000, '2016-03-30'),('E004', 'Segun Adebayo','M','Fraud Detection Manager', 'Lekki', 400000, '2021-06-24'),('E005', 'Fatima Kuti','F','ATM Officer','Gwarinpa', 180000, '2020-02-21'), 
('E006', 'Ahmed Seriki','M','Internal Auditor','Gwarinpa', 200000, '2018-10-23'),('E007', 'Atinuke Fasola','F','Internal Auditor', 'Lekki', 200000, '2017-08-05'),
('E008', 'Salawu Atiku', 'M', 'Graduate Trainee','Gwarinpa', 130000, '2022-12-05'),('E009', 'Funke Adeyemo', 'F','Branch Manager', 'Bodija', 600000, '2012-12-06'),
('E010', 'Bayo Adegoke', 'M','Data Processing Officer', 'Bodija', 250000, '2021-09-18'),('E011', 'Susan King', 'F','Bank Marketing Representative','Lekki', 250000, '2022-09-05'),
('E012', 'Daniel Anderson','M','Bank Teller','Bodija', 200000, '2019-03-07'),('E013', 'Sola Akintayo','M', 'Loan Collector', 'Bodija',120000, '2019-01-26'),
('E014', 'Amarachi Eze','F', 'Bank Teller', 'Bodija', 200000, '2019-04-11'),('E015', 'Hikmat Fali','F','Bank Teller', 'Gwarinpa', 200000, '2022-03-25'),
('E016', 'Aminu Jamil', 'M','Bank Marketing Representative', 'Gwarinpa', 250000, '2019-01-06'),('E017', 'Peter Thomas','M','Graduate Trainee', 'Bodija', 130000, '2022-12-05'),
('E018', 'Zainab Balogun','F', 'Investor Relation Manager','Gwarinpa', 250000, '2015-05-27'),('E019', 'Falade Faniyi','M','Internal Auditor', 'Bodija', 180000,'2015-04-27' ),
('E020', 'Fayose Tobi', 'M', 'Investor Relation Manager', 'Lekki', 250000,'2020-06-04'),('E021', 'Damilola Oke', 'M', 'ATM Officer', 'Bodija', 180000, '2019-05-09'), ('E022', 'Morinsola Adams', 'F', 'Bank Teller', 'Bodija', 150000, '2021-07-08'),
('E023', 'Deborah Adeniyi', 'M', 'Customer Care Representative', 'Bodija', 250000,'2019-01-06'),('E024', 'Tobe Chibuzo', 'M', 'Internal Auditor', 'Bodija', 150000, '2015-04-27'),('E025', 'Busari BabaTunde', 'M', 'Head of Operations', 'Bodija', 500000,'2013-03-04'),
('E026', 'Oyeshola Oloyode', 'F', 'Bank Marketing Representative', 'Bodija', 250000, '2020-06-04'),('E027', 'Adeola Bakare', 'F', 'Loan Collector', 'Lekki', 200000, '2023-01-12'),
('E028', 'Temitayo Lebile', 'M' , 'Investor Relation Manager', 'Bodija', 250000,'2015-05-27'),('E029', 'Bimbo Salami', 'F', 'Graduate Trainee', 'Lekki', 130000, '2022-12-05'),
('E030', 'Adizat Abubakar', 'F', 'Loan Collector', 'Gwarinpa', 200000,'2019-03-25'),('E031', 'Hussenat Kareem', 'F', 'Data Processing Officer', 'Gwarinpa', 150000, '2021-07-08'),
('E032', 'Folasade Olla', 'F', 'ATM Officer', 'Lekki', 200000,'2014-02-04'),('E033', 'Mary Ooja', 'F', 'Customer care Representative', 'Gwarinpa', 250000, '2020-03-06'), 
('E034', 'Ayodeji Adelodun', 'M', 'Internal Auditor', 'Gwarinpa', 200000, '2016-02-01'),('E035','Ibrahim Suleman', 'M', 'Bank Teller', 'Gwarinpa', 200000,'2019-01-06'),
('E036', 'Ahmed Sule', 'M', 'Bank Teller', 'Gwarinpa', 200000, '2013-09-04'),('E037', 'Sharon Benson', 'F', 'Investor Relation Manager', 'Lekki', 200000, '2015-07-20'),
('E038', 'Motunrayo Obi', 'F', 'Bank Teller', 'Lekki', 200000, '2019-01-06'),('E039', 'Paul Matthews', 'M', 'Head of Operations', 'Gwarinpa', 500000,'2012-09-14' ),
('E040', 'Pamela Stephen', 'F', 'Branch Manager', 'Lekki', 600000,'2011-05-12'),('E041', 'Ayomide Adebambo', 'M', 'Bank Teller', 'Lekki', 200000, '2012-05-12'),('E042', 'Banke Ajao', 'F', 'Customer Care Representative', 'Lekki', 250000, '2016-02-27'),
('E043', 'Aishat Kazeem', 'F', 'Fraud Detection Manager', 'Gwarinpa', 400000, '2019-03-06')

---LOAN TABLE
CREATE table Loan (
Loan_number varchar (10) primary key,
Branch_name  varchar (30),
Amount bigint
)

 INSERT into loan values ('L001', 'Gwarinpa', 1000000),('L002', 'Bodija', 700000),('L003', 'Gwarinpa', 200000),
('L004', 'Lekki', 500000),('L005', 'Gwarinpa', 600000),('L006', 'Lekki', 500000),('L007', 'Bodija', 300000),
('L008', 'Gwarinpa', 2000000),('L009', 'Lekki', 1000000),('L010', 'Gwarinpa', 500000)


---BORROWER TABLE
CREATE table borrower (
Borrower_id varchar (7) primary key,
Loan_number varchar (10),
Customer_name varchar (25),
Gender char(1) check  (gender in ('M','F')),
Branch_name varchar (30)

INSERT into borrower values ('B001','L001', 'Danlami Gowon','M', 'Gwarinpa'),('B002','L002', 'Sam Adegoke','M', 'Bodija'),('B003','L003', 'Banjuma Gaddo','M', 'Gwarinpa'),
('B004','L004', 'Issac Peters','M', 'Lekki'),('B005','L005', 'Fatima Abdul','F', 'Gwarinpa'),('B006','L006', 'Felix Combs', 'M', 'Gwarinpa'),
('B007','L007','Amarachi Ezeogo', 'F','Bodija'),('B008','L008','Danlami Gowon', 'M','Gwarinpa'),('B009','L009','Adeshola Adetayo', 'M','Lekki'),
('B010','L010','Rashid Jamal','M', 'Gwarinpa')
)

SELECT * FROM Branch
SELECT * FROM Account
SELECT * FROM borrower
SELECT * FROM Customer
SELECT * FROM Depositor
SELECT * FROM Employee
SELECT * FROM [dbo].[Loan]

----RETRIEVE ALL DATA FROM LOAN AND BOROOWER TABLE
SELECT * from loan join borrower on borrower.Loan_number = loan.Loan_number

-----RETRIEVE ALL DATA FROM ACCOUNT,CUSTOMER AND BRANCH TABLE
SELECT * from account join branch on account.branch_name = branch.branch_name join customer on branch.Branch_name= customer.Customer_name; ----(joining the three tables)

-----RETRIEVE ALL DATA FROM ACCOUNT AND CUSTOMER TABLE
SELECT * from customer join account on customer.Account_number = account.account_number

-----SELECT ACCOUNT NUMBER, BALANCE, ASSETS AND BRANCH_CITY FROM BRANCH AND ACCOUNT TABLE
SELECT account_number, balance, branch_city, assets from account join branch on account.branch_name = branch.Branch_name
SELECT a.account_number, a.branch_name, a.balance, b.branch_city, b.assets from account a join branch b on a.branch_name = b.branch_name
----RETRIEVE DATA FROM CUSTOMER TABLE AND ACCOUNT TABLE
SELECT * from customer join account on customer.Account_number = account.account_number join branch on account.branch_name = branch.branch_name

---RETRIEVE CUSTOMER DETAILS, BALANCE AND ASSESTS IN EACH BRANCH
SELECT c.customer_id, c.account_number, c.customer_name,  a.balance, b.branch_name, b.assets from customer c join  account a on c.account_number
= a.account_number join branch b on a.branch_name = b.branch_name

---RETRIEVE ACCOUNT NUMER, BRANCH NAME AND CITY, BALANCE AND ASSSETS OF CUSTOMERS
SELECT a.account_number, a.branch_name, a.balance, b.branch_city, b.assets from account a join branch b on a.branch_name = b.branch_name

----CUSTOMERS WHO ARE DEPOSITORS AND BORROWERS
SELECT d.customer_name, d.branch_name, d.account_number, b.loan_number, b.gender from depositor d inner join
 borrower b on b.Customer_name =  d.Customer_name

----RETRIEVE ALL DETAILS IN DEPOSITORS AND CUSTOMER TABLE
SELECT * from depositor left join customer on depositor.customer_name = customer.Customer_name
SELECT * from depositor  right outer join customer  on depositor.customer_name = customer.Customer_name

----THE AMOUNT OF LOAN OF EACH BORROWER
SELECT * from loan inner join borrower on borrower.Loan_number = loan.Loan_number

---AGGREGATES
---AVG SALLARY OF EMPLOYEES
SELECT 'Average Salary' = avg (salary) from employee

---EMPLOYEE WITH THE LOWEST AND HIGHEST SALARY
SELECT min(salary) as MinimumSalary,max(salary) as MaximumSalary from employee

----NUMBER OF ALL EMPLOYEES IN THE BANK
SELECT count (*) 'Staff' from employee

----TOTAL ASSET IN THE BANK
SELECT sum(assets) as 'TotalAssets' from branch

---RETRIEVE ACCOUNT NUMBER AND BALANCE > 40000 FROM ACCOUNT IN GWARINPA BRANCH
SELECT account_number, balance from account
WHERE balance > 40000 and branch_name = 'Gwarinpa'

SELECT Emp_id,[Employee_name], datepart(yy, start_date)AS Start_Date, sum(salary) as TotalSalary,
lag(sum(salary), 1) over (order by datepart(yy, start_date)) as Next_Total from employee
GROUP BY Emp_id,[Employee_name], Start_Date

SELECT * from [dbo].[Employee]
---RETRIEVE CUSTOMER INFORMATION IN A COLUMN
SELECT customer_name + ' ' + Gender + ' ' + account_number as 'Customer Information' from customer

---LEAST PAID EMPLOYEES AT GWARINPA AND LEKKI BRANCH
SELECT emp_id, employee_name, designation,[Branch_name],salary, first_value(designation)
OVER (order by salary) as least_Paid_Designation from employee 
where branch_name= 'Gwarinpa' or branch_name= 'Lekki'

----Highest paid employee and least paid employee
SELECT min(salary) as least_paid_employee,max(salary) as highest_paid_employee
 from employee
 





---RETRIEVE EMAIL ADDRESS OF CUSTOMERS
SELECT choose (3, customer_name, gender, email) as Email from customer


----NAME OF CUSTOMER,EMAIL,ACCOUNT NUMBER,ADDRESS AND BRANCH THAT BORROWED LOANS
SELECT C.[Account_number],B.[Customer_name],C.[Email],C.[customer_street],C.[Customer_city],B.[Branch_name]
from [dbo].[Customer] as C
INNER JOIN [dbo].[borrower] AS B
ON C.[Customer_name] = B.[Customer_name]

---CUSTOMERS WHO ARE BORROWERS IN GWARINPA BRANCH
SELECT [Branch_name],[Borrower_id],[Loan_number],[Customer_name]
FROM [dbo].[borrower]
WHERE [Branch_name] = 'Gwarinpa'

----CITIES WHERE CUSTOMERS STAY
SELECT DISTINCT([Customer_city])
FROM [dbo].[Customer]

SELECT COUNT(DISTINCT([Customer_city])) AS NO_OF_CITIES
FROM [dbo].[Customer]

---BODIJA IS A STREET IN IBADAN CITY, SO CHANGE BODIJA TO IBADAN
UPDATE [dbo].[Customer]
SET [Customer_city] = 'Ibadan'
where [Customer_city] = 'Bodija'

----which city has the highest customers
SELECT COUNT([Customer_name])AS Customer_count,([Customer_city])
FROM [dbo].[Customer]
GROUP BY [Customer_city]
order by customer_count desc

---Cities where borrowers live
SELECT B.[Customer_name],B.[Branch_name],C.[Customer_city]
FROM [dbo].[Customer] AS C
INNER JOIN [dbo].[borrower] AS B
ON C.[Customer_name] = B.[Customer_name]

----cities with the highest borrowers
SELECT B.[Branch_name],C.[Customer_city],COUNT(C.[Customer_city])as City_count
FROM [dbo].[Customer] AS C
INNER JOIN [dbo].[borrower] AS B
ON C.[Customer_name] = B.[Customer_name]
group by C.[Customer_city],B.[Branch_name]
ORDER BY City_count desc

--Number of employees in each branch
SELECT [Branch_name], COUNT([Emp_id]) AS No_of_employees
from [dbo].[Employee]
group by [Branch_name]

---customers who are regular depositors
SELECT D.[Depositor_id],C.[Customer_name],C.[Account_number]
FROM [dbo].[Customer] AS C
INNER JOIN [dbo].[Depositor] AS D
ON C.Account_number = D.[Account_number]

--Depositors who borrrowed money
SELECT D.[Depositor_id],B.[Customer_name],B.[Loan_number]
FROM [dbo].[borrower] AS B
INNER JOIN [dbo].[Depositor] AS D
ON B.Customer_name = D.Customer_name

-----Gender distribution Across job designation of employees
SELECT [Designation],[Gender],COUNT(*) as employee_count
FROM [dbo].[Employee]
GROUP BY [Gender],[Designation]
ORDER BY employee_count desc

-----No of male andd female employees in the bank
SELECT [Gender], COUNT(*) AS COUNT
FROM [dbo].[Employee]
GROUP BY [Gender]

---TENURE OF EACH EMPLOYEE
SELECT [Emp_id],[Employee_name],[Designation],[Gender],DATEDIFF(YY,[Start_date],GETDATE())AS TENURE
FROM [dbo].[Employee]
ORDER BY TENURE DESC

---TENURE OF EACH EMPLOYEE
SELECT  [Emp_id],[Employee_name],[Designation],DATEDIFF(YY,[Start_date],GETDATE())AS TENURE
FROM [dbo].[Employee]
ORDER BY TENURE DESC
SELECT * FROM [dbo].[Employee]

----Customer with the highest balance
SELECT MAX(A.[balance]) AS Highest_Balance,MIN(A.[balance]) AS Lowest_Balance
FROM [dbo].[Account] AS A
 