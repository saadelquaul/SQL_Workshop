create database SaleOrderQuiz;
use SaleOrderQuiz;

create table customer (
	CustomerID INT NOT null auto_increment primary key,
	FirstName  VARCHAR(50) NOT null,
	LastName  VARCHAR(50) NOT null,
	Address  VARCHAR(50) NOT null,
	City  VARCHAR(50) NOT null,
	PostCode  CHAR(4) null,
	PhoneNumber  CHAR(12) null
);

create table Inventory (
	InventoryID  TINYINT NOT NULL auto_increment primary key,
	InventoryName  VARCHAR(50) NOT null,
	InventoryDescription  VARCHAR(255) null
);

create table Employee (
	EmployeeID  TINYINT NOT NULL auto_increment primary key,
	EmployeeFirstName  VARCHAR(50) NOT null,
	EmployeeLastName  VARCHAR(50) NOT null,
	EmployeeExtension  CHAR(4) NULL

);

create table Sale (
	SaleID  TINYINT NOT NULL primary key,
	CustomerID  INT NOT NULL,
	InventoryID  TINYINT NOT NULL,
	EmployeeID  TINYINT NOT NULL,
	SaleDate  DATE NOT null,
	SaleQuantity  INT NOT null,
	SaleUnitPrice decimal NOT null,
	foreign key (CustomerID) references customer(CustomerID),
	foreign key (InventoryID) references Inventory(InventoryID),
	foreign key (EmployeeID) references Employee(EmployeeID)
	
);

