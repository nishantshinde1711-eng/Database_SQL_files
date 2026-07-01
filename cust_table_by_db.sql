use swiftBank;

create table customers(customer_id int primary key,
                       FirstName varchar(50),
                       LastName varchar(50),
                       Email varchar(50),
                       phone varchar(50),
                       AccounCreationDate date);
desc customers;
create table Account(AccountId int primary key,
                      customer_id int,
                      accounttype varchar(20),
                      balance decimal(10,2),
                      foreign key (customer_id)references customers(customer_id) );
                      desc Account;
create table transaction( TransactionId int primary key,
                           AccountId int,
                           TransactionDate date,
                           Amount Decimal(10,2),
                           TransactionType varchar(20),
                           foreign key (AccountId)references Account (AccountId));
desc transaction;
create table branch(branchid int primary key,
                    branchname varchar(100),
                    branchaddress varchar(200),
                    branchphone varchar(15));
desc branch;

create  table Accountbranch(accountid int,
							branchid int,
                            assignmendate date,
                            foreign key(accountid) references account(accountid),
                            foreign key(branchid) references branch(branchid));
        desc Accountbranch;


create table loan(loanid int primary key,
                   customer_id int,
                   loanamount decimal(10,2),
                   interestrate decimal(10,2),
                   satrtdate date,
                   enddate date,
                   foreign key (customer_id) references customers(customer_id));
desc loan;
                   
                            
                    

