CREATE TABLE EmployeeTable(
EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
FirstName VARCHAR(100),
LastName VARCHAR(100),
Email VARCHAR(150),
PhoneNumber VARCHAR(20),
HireDate DATE NOT NULL,
Salary DECIMAL(10,2),
JobTitle VARCHAR(50),
DepartmentId int FOREIGN KEY(DepartmentId) REFERENCES DepartmentTable(DepartmentId),
);

---Its giving only those employee name which are exist in both table
select e.FirstName,a.PermanantAddress from EmployeeTable e inner join AddressTable a on a.EmployeeId=e.EmployeeId

--Its giving all emplyee name from left table if they are not present in AddressTable its showing themn null
select e.FirstName,a.PermanantAddress from EmployeeTable e Left join AddressTable a on a.EmployeeId=e.EmployeeId

--its giving all the adress of employee and fullname of that employess
select e.FirstName,a.PermanantAddress from EmployeeTable e Right join AddressTable a on a.EmployeeId=e.EmployeeId

--its displaying all employess fullname and setting null to address column where employee address in not present
select e.FirstName,a.PermanantAddress from EmployeeTable e full outer join AddressTable a on a.EmployeeId=e.EmployeeId

--it gives m*n colums cartesian product i.e. 23*17
select e.FirstName,a.PermanantAddress from EmployeeTable e cross join AddressTable a


EXEC spGetAllEmployee


select *from EmployeeTable
drop table EmployeeTable
INSERT INTO EmployeeTable ( FirstName, LastName, Email, PhoneNumber, HireDate, Salary, JobTitle, DepartmentId)
VALUES
  ( 'John', 'Doe', 'johndoe@gmail.com', '9168446199', '2022-01-01', 50000.00, 'Software Engineer', 1),
  ( 'Jane', 'Doe', 'janedoe@gmail.com', '4541332120', '2022-02-01', 60000.00, 'Senior Software Engineer', 1),
  ('Bob', 'Smith', 'bobsmith@gmail.com', '1523698412', '2022-03-01', 70000.00, 'Database Administrator', 2),
  ('Alice', 'Johnson', 'alicejohnson@gmail.com', '6565656565', '2022-04-01', 80000.00, 'Manager', 3),
   ('Donald	', 'Waterfield', 'Donald@gmail.com', '6565656565', '2022-04-12', 50000.00, 'Java Develpor', 4),
    ('Mickey', 'Baasha', 'Mickey@gmail.com', '6565656565', '2022-04-05', 40000.00, 'junior Software Er', 2),
  ('Jiji', 'Sharma', 'Jiji@gmail.com', '6565656565', '2022-04-07', 20000.00, 'Manager', 3),
  ( 'Peter', 'Lee', 'peterlee@example.com', '555-5555', '2022-05-01', 55000.00, 'Software Engineer', 1),
  ( 'David', 'Kim', 'davidkim@example.com', '555-6666', '2022-06-01', 65000.00, 'Senior Software Engineer', 1),
  ( 'Emily', 'Chen', 'emilychen@example.com', '555-7777', '2022-07-01', 75000.00, 'Database Administrator', 2),
  ('Karen', 'Wong', 'karenwong@example.com', '555-8888', '2022-08-01', 85000.00, 'Manager', 3),
  ('Michael', 'Smith', 'michaelsmith@example.com', '555-9999', '2022-09-01', 60000.00, 'Java Develpor', 4),
  ( 'Sarah', 'Johnson', 'sarahjohnson@example.com', '555-0000', '2022-10-01', 70000.00, 'Senior Software Engineer', 1),
  ( 'James', 'Chen', 'jameschen@example.com', '555-1111', '2022-11-01', 55000.00, 'Software Engineer', 1),
  ( 'Jessica', 'Lee', 'jessicalee@example.com', '555-2222', '2022-12-01', 65000.00, 'Senior Software Engineer', 1),
  ( 'Kevin', 'Wong', 'kevinwong@example.com', '555-3333', '2023-01-01', 75000.00, 'Database Administrator', 2),
  ( 'Linda', 'Kim', 'lindakim@example.com', '555-4444', '2023-02-01', 85000.00, 'Manager', 2),
  ( 'George', 'Brown', 'georgebrown@example.com', '555-5555', '2023-03-01', 60000.00, 'Software Engineer', 1),
  ('Mia', 'Miller', 'miamiller@example.com', '555-6666', '2023-04-01', 70000.00, 'Senior Software Engineer', 1),
  ('Jack', 'Smith', 'jacksmith@example.com', '555-7777', '2023-05-01', 80000.00, 'Database Administrator', 2),
  ( 'Sophie', 'Johnson', 'sophiejohnson@example.com', '555-8888', '2023-06-01', 90000.00, 'Manager', 2),
  ( 'Edward', 'Davis', 'edwarddavis@example.com', '555-9999', '2023-07-01', 65000.00, 'Software Engineer', 1),
  ( 'Olivia', 'Wilson', 'oliviawilson@example.com', '555-0000', '2023-08-01', 75000.00, 'Senior Software Engineer', 1);


  INSERT INTO EmployeeTable ( FirstName, LastName, Email, PhoneNumber,HireDate, Salary, JobTitle, DepartmentId)
VALUES('priyanka','Rumal','priyanka@123','123456784','2023-04-01',50000.00,'Software Engineer', 1)

delete from EmployeeTable where EmployeeId=25