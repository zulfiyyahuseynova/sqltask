CREATE DATABASE BazarStore

USE BazarStore

CREATE TABLE Positions
(
	Id int identity(1,1) PRIMARY KEY,
	Name nvarchar(50)
)

INSERT INTO Positions
VALUES('Cashier'),
	  ('Seller'),
	  ('Sales Manager')

--select * from Positions

CREATE TABLE Branchs
(
	Id int identity(1,1) PRIMARY KEY,
	Name nvarchar(50)
)

INSERT INTO Branchs
VALUES('Bazar Store, Genclik filiali'),
	  ('Bazar Store, Badamdar filiali'),
	  ('Bazar Store, Nesimi filiali'),
	  ('Bazar Store, Yasamal filiali'),
	  ('Bazar Store, Ehmedli filiali'),
	  ('Bazar Store, Nerimanov filiali'),
	  ('Bazar Store, Ecemi filiali')

--select * from Branchs

CREATE TABLE Products
(
	Id int identity(1,1) PRIMARY KEY,
	Name nvarchar(50),
	PurchasePrice decimal(3,2),
	SalePrice decimal(3,2)
)

INSERT INTO Products
VALUES ('Et', 9.10, 9.99)

--select * from Products

CREATE TABLE Workers
(
	Id int identity(1,1) PRIMARY KEY,
	Name nvarchar(50),
	Surname nvarchar(50),
	FatherName nvarchar(50),
	PositionId int references Positions(Id),
	Salary float
)
INSERT INTO Workers
VALUES ('Eli','Eliyev','Veli',1,850),
	   ('Murad','Babayev','Mustafa',2,780),
	   ('Kenan','Hesenov','Kamran',3,1250),
	   ('Ayten','Eliyeva','Azer',1,980),
	   ('Mehemmed','Mustafayev','Memmed',2,1370),
	   ('Guler','Resulova','Fuad',3,880),
	   ('Zulfiyye','Huseynova','Rafiq',1,1150)

--select * from Workers

CREATE TABLE Sales
(
	Id int identity(1,1) PRIMARY KEY,
	SalesId int references Products(Id),
	WorkersId int references Workers(Id),
	SalesDate date,
	BranchsId int references Branchs(Id)
)

INSERT INTO Sales
VALUES(19,11,'2022-02-30',7)

--select * from Sales