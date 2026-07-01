create database SwiftBank;
use SwiftBank;
show databases;
create table customer( CustomerID int primary key,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
phone varchar(15),
AccountCreationDate date);
describe customer;

create table Accounts(AccountID int primary key,CustomerID int, Accounttype varchar(20), balance decimal(10, 2), foreign key(customerId) references customer(customerId));
desc Accounts;

create table Transactions(TransactionId int primary key, AccountID int, TransactionsDate date, Amount decimal(10, 2), TransactionType varchar(20), foreign key(AccountID) references Accounts(AccountID));
desc Transactions;

create table Branches(BranchID int primary key, BranchName varchar(100), BranchAddress varchar(200), BranchPhone varchar(15));

desc Branches;

create table AccountBranches(AccountId int, BranchID int, AssignmenDate Date, foreign key(AccountId), references Accounts(AccountId), foreign key(BranchID) references Branches(BranchID));

desc AccountBranches; 
 