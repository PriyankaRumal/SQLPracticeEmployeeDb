CREATE TABLE Managers (
  ManagerID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  PhoneNumber VARCHAR(20),
  HireDate Date,
  Salary Decimal(10,2),
);

alter table Managers add DepartmentId int Foreign key(DepartmentId) references DepartmentTable(DepartmentId)
select *from Managers
drop table Managers
INSERT INTO Managers (ManagerID, FirstName, LastName, Email, PhoneNumber, HireDate, Salary)
VALUES
  ( 1,'John', 'Doe', 'johndoe@example.com', '555-1234', '2022-01-01', 100000.00),
  (2,'Jane', 'Smith', 'janesmith@example.com', '555-5678', '2022-01-01', 90000.00),
  (3,'Alice', 'Redo', 'janesmith@example.com', '555-5678', '2022-01-01', 90000.00),
  (4,'Jane', 'gedk', 'janesmith@example.com', '555-5678', '2022-01-01', 90000.00);

  Update Managers set DepartmentId=2
  where ManagerID=4

  Select m.ManagerID ,m.FirstName,m.LastName,D.DepartmentName  from Managers m inner join DepartmentTable D on D.DepartmentId=m.ManagerID

  Select m.FirstName,m.LastName,D.DepartmentName from Managers m left join DepartmentTable D on  D.DepartmentId=m.ManagerID