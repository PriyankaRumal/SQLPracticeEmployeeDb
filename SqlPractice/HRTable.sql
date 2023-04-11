CREATE TABLE HRTable(
HRId INT IDENTITY(1,1) PRIMARY KEY,
FirstName Varchar(50),
LastName Varchar(50),
MobileNumber VARCHAR(20),
Email VARCHAR(100),
Password Varchar(200),
StartDate DATE
--EndDate DATE DEFAULT 'Active'
)

drop table HRTable
select * from HRTable 

INSERT INTO HRTable(FirstName, LastName, MobileNumber, Email, Password, StartDate)
VALUES ('Priyanka', 'Rumal', '9685235412', 'Priyanka@gmail.com', 'Priyanka@123', '2020-02-01');

INSERT INTO HRTable (FirstName, LastName, MobileNumber, Email, Password, StartDate,EndDate)
VALUES ('Priyanka', 'Rumal', '9685235412', 'Priyanka@gmail.com', 'Priyanka@123', '2020-02-01', 'Active');

INSERT INTO HRTable (FirstName, LastName, MobileNumber, Email, Password, StartDate, EndDate)
VALUES ('Priyanka', 'Rumal', '9685235412', 'Priyanka@gmail.com', 'Priyanka@123', '2020-02-01', 'Active');

INSERT INTO HRTable (FirstName, LastName, MobileNumber, Email, Password, StartDate, EndDate)
VALUES ('Priyanka', 'Rumal', '9685235412', 'Priyanka@gmail.com', 'Priyanka@123', CONVERT(DATE, '2020-02-01', 120), 'Active');
