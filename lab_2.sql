Create database BankingDB;
show databases;
use BankingDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);

CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );
    
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) );
    
CREATE TABLE Branches (
	BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE AccountBranches (
    AccountID INT,
    BranchID INT,
    AssignmentDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

Describe customers;
describe accounts;
describe transactions;
describe loans;
describe branches;
describe accountbranches;

alter table customers add dateofbirth date;
alter table customers modify phone varchar(20);

alter table accounts 
add constraint chk_MinBalance
check (Balance >=1000);
drop table accountbranches;
 
 alter table customers
 modify FirstName varchar(50) NOT NULL;
 
 ALTER TABLE customers 
 add constraint uq_Email unique (Email);
 
 insert into customers 
 values(102,'Priya','Patil','priya@gmail.com','9988776655','2025-05-02','2000-09-20');
 insert into customers value(101,'raj','pawar','raj@gmail.com','6677889900','2021-05-03','1999-02-09'),
                             (103,'ashish','chavan','ashi@gmaul.com','9988998899','2022-09-08','2001-02-11'),
                             (104,'rohit','mohite','rhit@gmail.com','20898876887','2021-03-07','2002-03-30'),
                             (105,'mayur','khalate','mayur@gmail.com','28892882828','2021-06-09','2001-04-09');
 
 insert into Accounts
 values(202,102,'curent',4000);
 insert into Accounts
 values (203,101,'savings',2000),
         (204,103,'sallary',302020),
         (205,104,'current',90000),
         (201,105,'savings',90000);
insert into Transactions 
values (301,201,'2021-09-08',200.09,'cash');
insert into Transactions 
values (302,202,'2022-08-07',506.09,'card'),
       (303,203,'2023-06-01',203.01,'upi'),
       (304,204,'2024-06-07',303.00,'cash'),
       (305,205,'2026-09-02',9990.09,'credit card');
       
       
update  customers 
set phone = 9999999999
where CustomerID = 101;

update Customers
set Email='priya.patil@gmail.com' where   CustomerID=102;

update Accounts 
set balance = 30000
where AccountID=201;

delete from Transactions
where TransactionId=301; 
select*from Transactions;

delete from Accounts 
where AccountId=201;

select*from Accounts
where AccountId=201;
 
 desc accounts;
 
 select * from accounts
 where AccountID=201;
 
 select *from customers
 where   CustomerID=101;
 
 select*from customers where   CustomerID=102;
 select*from Transactions;
 
desc Transactions;
