CREATE OR ALTER PROCEDURE spGetAllEmployee
AS
BEGIN
SELECT * FROM EmployeeTable
END

---sp with one parameter
Create or alter Procedure spGetEmpById 
@EmpId Int
as
begin Select FirstName from EmployeeTable where EmployeeId=@EmpId
end
Execute or Exec spGetEmpById 1

--To Declare Variable
Declare @firsName varchar(20)
Declare @x int=2

--To set Value to this variable
SET @firsName='priya'

--Tp print the value
Select @firsName as Name
Print @firsName
print 'the name is:'+cast(@firsName as varchar(20))

--To Hide No Of Rows affectecd
SET NOCOUNT ON