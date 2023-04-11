CREATE TABLE AddressTable(
AddressID INT Identity(1,1) PRIMARY KEY,
PermanantAddress VARCHAR(MAX),
LocalAddress VARCHAR(MAX),
EmployeeId INT CONSTRAINT FK_ADDRESS FOREIGN KEY(EmployeeId) REFERENCES EmployeeTable(EmployeeId)
)

SELECT *FROM AddressTable
SELECT COUNT(PermanantAddress) Col from AddressTable
SELECT COUNT(DISTINCT PermanantAddress ) from AddressTable

INSERT INTO AddressTable(PermanantAddress,LocalAddress,EmployeeId) 
VALUES ('742 Evergreen Terrace, Springfield, USA','123 Main St Apartment 4B Anytown, USA 12345',1),
		('1234 Elm Street, Anytown, USA','1234 Elm Street, Anytown, USA',2),
		('555 West End Avenue, New York, USA','1234 Elm Street, Anytown, USA',3),
		('987 Hillcrest Road, Beverly Hills, USA','987 Hillcrest Road, Beverly Hills, USA',4),
		('987 Hillcrest Road, Beverly Hills, USA','987 Hillcrest Road, Beverly Hills, USA',5),
		('321 Main Street, Smallville, USA','321 Main Street, Smallville, USA',5),
		('456 Oak Lane, Hometown, USA','321 Main Street, Smallville, USA',6),
		('777 South Park Road, Denver, USA','321 Main Street, Smallville, USA',7),
		('888 Vine Street, Hollywood, USA','888 Vine Street, Hollywood, USA',8),
		('321 Main Street, Smallville, USA','777 South Park Road, Denver, USA',9),
		('555 West End Avenue, New York, USA','888 Vine Street, Hollywood, USA',10),
		('999 Maple Avenue, Chicago, USA','999 Maple Avenue, Chicago, USA',11),
		('111 Chestnut Street, Boston, USA','222 Pine Street, San Francisco, USA',12),
		('333 Cedar Lane, Seattle, USA','333 Cedar Lane, Seattle, USA',13),
		('222 Pine Street, San Francisco, USA','111 Chestnut Street, Boston, USA',14),
		('444 Birch Boulevard, Miami, USA','444 Birch Boulevard, Miami, USA',15),
		('555 Cherry Lane, Dallas, USA','666 Magnolia Street, Atlanta, USA',16),
		('666 Magnolia Street, Atlanta, USA','666 Magnolia Street, Atlanta, USA',17);
		