Select * from EmployeeTable
Select *from DepartmentTable

------------Creating View-----------
create  alter view vW_forEmployees
as
select FirstName,LastName,ManagerId from EmployeeTable as A
inner join  DepartmentTable as B
on B.DepartmentId=A.DepartmentId

select * from vW_forEmployees


-------------Function -----------
--1.Scalare Function
--1.1.WithoutParameter
	Create Function fn_WithoutParameter()
	returns varchar(50)
	as
	begin
	return 'welcome to function'
	end

	select dbo.fn_WithoutParameter() as output1;

--1.2.WithParameter
	create function fn_WithParameter(@n int)
	returns int
	as
	begin
	return (@n*@n)
	end

	select dbo.fn_WithParameter(5)

--To Drop A Function--
	drop function dbo.fn_WithParameter

--2.Inline Table Valued functions
--2.1.withNoParameter

	Create function fn_InlineEg1()
	returns table
	as
	return (select *from EmployeeTable)

	select * from dbo.fn_InlineEg1()

--2.2.withParameter

	create function fn_Inline2(@Salary Decimal)
	returns table
	as
	return (Select *from EmployeeTable where Salary=@Salary)

	Select * from dbo.fn_Inline2(50000.00)

--3.Multi Statement table valued function
	create function fn_GetEmploy(@jobTitle varchar(50))
	returns @mytable table(Emp_Id int, FirstN varchar(100),Job varchar(50))
	as
	begin
	insert into @mytable
	select EmployeeId,FirstName,JobTitle from EmployeeTable where JobTitle=@jobTitle
	return
	end

	select dbo.fn_GetEmploy('Software Engineer')

----Get Monthly Salary--
	Declare @AnnualSalary Decimal(10,2);
	Set @AnnualSalary=400000
	Select FirstName,@AnnualSalary/12 from EmployeeTable 

----Query to fetch last record from the table
	Select Top 3 *from EmployeeTable

	Select Top 1 *from  EmployeeTable Order BY EmployeeId DESC

	SELECT *FROM EmployeeTable b1
	WHERE 3 > (
			 SELECT COUNT(*) FROM EmployeeTable b2
			 WHERE b2.EmployeeId > b1.EmployeeId
)

-- Display Even rows in Employee table
  Select * from EmployeeTable where EmployeeId%2=0

-- Display Odd rows in Employee table
 SELECT * FROM EmployeeTable where EmployeeId % 2 <> 0;


 ---------------SQL OPERATOR---------------------

Select * from EmployeeTable

 --1.Distinct(gives a distinct values)
	Select distinct Salary From EmployeeTable

--2.Where(To Apply A Condtion)
	Select FirstName From EmployeeTable where Salary>50000

--3.And(True+True=True)
	Select FirstName,Salary from EmployeeTable where Salary>20000 and Salary<50000

--4(True+False=true)
	Select FirstName,Salary from EmployeeTable where Salary>20000  or  Salary>10000

--5.Between(To check in range)
	Select FirstName,HireDate from EmployeeTable where HireDate Between '2022-01-01' and '2022-02-15'

--6.In(To Avoid Mutiple Or Operator)
	Select FirstName,Salary from EmployeeTable where Salary In (20000,10000)

--7.Like Operator(To check string values)
---7.1.To Find FirstLetter
 Select FirstName from EmployeeTable Where FirstName Like 'j%'

---7.2.To Find LastLetter
 Select FirstName from EmployeeTable Where FirstName Like '%e'

---7.3.To  Find Letter first char is J or A
  Select FirstName from EmployeeTable Where FirstName Like 'J%A'

---7.4.Second Letter is o
 Select FirstName from EmployeeTable Where FirstName Like '_o%'

---7.5.To Find First char in Range from J or A 
  Select FirstName from EmployeeTable Where FirstName Like '[JA]%'

---7.6.in Rang A TO E
 Select FirstName from EmployeeTable Where FirstName Like '[A-E]%'

---7.7.not in the rang A To E
 Select FirstName from EmployeeTable Where FirstName Like '[^A-E]%'

---7.8.NOt Like Operator
 Select FirstName from EmployeeTable Where FirstName not Like 'j%'


 --------------SQL SUB QUERY----------------------------

 ------This are the nested queries within another Sql query----
	Select * from EmployeeTable

---1.Exectutes the inner query first then outer query will exceute
	Select * from EmployeeTable
	where EmployeeId in
	(select EmployeeId From EmployeeTable where Salary >80000)

---2.another example
	Select * from EmployeeTable 
	where EmployeeId in
	(Select EmployeeId from EmployeeTable where JobTitle='Manager')

---3.Update query
	Update EmployeeTable Set Salary=Salary+1000
	where EmployeeId in
	(Select EmployeeId from EmployeeTable where JobTitle='Manager')
	Select * from EmployeeTable where JobTitle='Manager'

---4.Delete Query
	delete from EmployeeTable 
	Where EmployeeId in
	(Select EmployeeId from EmployeeTable where Salary<10000)

query optimization
CTE and Query Optimization