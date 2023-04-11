Create procedure spOrderStatus
@OrderId int,
@Status VARCHAR(100)
as
begin
	begin try
		begin transaction 
			 begin try
					 if Exists (select * from OrderTable where OrderId=@OrderId )
						  begin
								Update OrderTable set Status=@Status where OrderId=@OrderId ;
								insert into OrderLogs(OrderId,LogDate,time,logmessage) values
								(@OrderId,GETDATE(),'01:22:46','Status Updated to:'+@Status) ;
						  end
			 end try
			 begin catch
					print 'OrderNotFound'
			 end catch
		commit transaction
	end try
    begin catch 
		Select ERROR_PROCEDURE() as ERRORPROCEDURE
		rollback transaction
		insert into OrderLogs(LogDate,logmessage)values 
		(GetDate(),'Order Failed')
	end catch
end


----query---
select *from EmployeeTable

select count(*) from EmployeeTable
select * from  EmployeeTable order by desc LIMIT 1

SELECT * FROM (
  SELECT * FROM EmployeeTable ORDER BY id DESC LIMIT 3
) as r ORDER BY id