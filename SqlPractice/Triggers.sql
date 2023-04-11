Create Table LoggingChanges(
  ChangeId Int Identity primary key,
  EmployeeId INT,
  FirstName VARCHAR(100),
  LastName VARCHAR(100),
  Email VARCHAR(150),
  PhoneNumber VARCHAR(20),
  HireDate DATE NOT NULL,
  Salary DECIMAL(10,2),
  JobTitle VARCHAR(50),
  DepartmentId int,
  Operation char(3) Not Null,
  check(Operation='INS' or Operation='DEL')
)

Create TRIGGER trg_LoggingChange
on
EmployeeTable
After Insert,Delete
as
begin
	Set NOCOUNT ON;
	Insert into LoggingChanges(
		EmployeeId ,
		FirstName,
		LastName,
		Email,
		PhoneNumber,
		HireDate ,
		Salary ,
		JobTitle ,
	    DepartmentId ,
	    Operation
	)
   Select 
		i.EmployeeId,
		FirstName,
		LastName,
		Email,
		PhoneNumber,
	    GETDATE() ,
		Salary ,
		JobTitle ,
		 DepartmentId ,
		'INS'
	 from
		 inserted as i

	Union All

	select
		 d.EmployeeId,
		 FirstName,
		 LastName,
		 Email,
		PhoneNumber,
	    GETDATE() ,
		Salary ,
		JobTitle ,
		 DepartmentId ,
		'DEL'
	 from
		 deleted as d;
end

Select * from LoggingChanges

select definition  from sys.server_sql_modules where object_id=OBJECT_ID('trg_LoggingChange')
select OBJECT_DEFINITION(
  OBJECT_ID('trg_LoggingChange')
) as TriggerDef