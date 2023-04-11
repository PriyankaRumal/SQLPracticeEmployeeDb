CREATE TABLE salaries (
  salaryid INT PRIMARY KEY,
  EmployeeId INT NOT NULL,
  salaryamount DECIMAL(10,2) NOT NULL,
  salarystart_date DATE NOT NULL,
  salaryend_date DATE,
  FOREIGN KEY (EmployeeId) REFERENCES EmployeeTable (EmployeeId)
);