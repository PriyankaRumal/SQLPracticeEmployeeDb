Select  *from EmployeeTable

Declare @EmployeeId INT 
Declare @FirstName VARCHAR(100)
Declare @LastName VARCHAR(100)
Declare @Salary DECIMAL(10,2)

---Declaring the cusror
 Declare EmployeeCursor Cursor for select EmployeeId,FirstName,LastName,Salary from EmployeeTable

 ---open the cursor
Open EmployeeCursor

---fetch first row
Fetch next from EmployeeCursor into @EmployeeId,@FirstName,@LastName,@Salary

--to itarate each row
while @@FETCH_STATUS=0
begin
update EmployeeTable Set Salary=Salary+500 where EmployeeId=@EmployeeId

fetch next from  EmployeeCursor into @EmployeeId,@FirstName,@LastName,@Salary
end

close EmployeeCursor
Deallocate EmployeeCursor

 