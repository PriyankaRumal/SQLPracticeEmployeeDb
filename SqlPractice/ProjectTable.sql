CREATE TABLE Projects(
ProjectId INT IDENTITY(1,1) PRIMARY KEY,
ProjectName VARCHAR(50),
ProjectTech VARCHAR(100),
EmployeeId INT FOREIGN KEY(EmployeeId) REFERENCES  EmployeeTable(EmployeeId),
ManagerID INT FOREIGN KEY(ManagerID) REFERENCES Managers(ManagerID)
)

SELECT *FROM Projects

Insert into Projects(ProjectName,ProjectTech,EmployeeId,ManagerID) 
VALUES ('E-commerce website', 'Java, Spring, Hibernate',1,1),
		('Mobile app development', 'React Native, Firebase',9,4),
		('Data analytics', 'Python, Pandas, NumPy',13,2),
		('Blockchain development', 'Ethereum, Solidity',15,2),
		('Cloud migration', 'AWS, Azure, Google Cloud',23,4);
		