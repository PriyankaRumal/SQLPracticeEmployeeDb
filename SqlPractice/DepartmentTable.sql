CREATE TABLE DepartmentTable(
	DepartmentId INT PRIMARY KEY,
	DepartmentName VARCHAR(50) NOT NULL,
	ManagerId int FOREIGN KEY(ManagerId) REFERENCES Managers(ManagerID),
)

select *from DepartmentTable
drop table DepartmentTable

INSERT INTO DepartmentTable(DepartmentID, DepartmentName,ManagerId)
VALUES
  (1, 'Engineering',2),
  (2, 'Operations',1),
  (3, 'Sales',2),
  (4,'Management',3)

truncate table DepartmentTable