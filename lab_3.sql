use bankingdb;
select * from Customers;

select FirstName, lastname,email,phone from customers;

select *from Accounts 
where AccountType = "Savings";

select * from  accounts
where balance > 25000;

select * from accounts 
where balance between 5000 and 20000;

select * from customers
where CustomerID In (101,102,103);

Select* from Customers
where FirstName like 'r%';

-- Retrieve all current account records.
select* from Accounts
where AccountType = "current";

-- Find accounts with balance less than 15000.
select * from accounts
where balance > 15000;

-- Display transactions between 1000 and 10000
select* from Transactions
where Amount between 1000 and 10000;

-- Retrieve customer records for CustomerID 104 and 105
select *from  customers
where CustomerID in (104,105);

-- Display customers whose last name starts with S.
select *from Customers
where lastName like 's%';

select* from Customers order by FirstName asc;
select * from accounts order by balance desc;
select distinct accounttype from accounts;
select * from accounts order by balance desc
limit 3;
select*from transactions
limit 4 offset 1;

-- Display customers sorted by LastName.
select * from customers order by LastName ;

-- Retrieve top 5 transactions with highest amount
select* from transactions order by Amount desc limit 5;

-- Display unique transaction types
select distinct transactiontype from transactions;

-- Skip the first 3 transaction records and display the next 4 records
select*from transactions limit 4 offset 3;

select *from customers
where phone is null;

select * from customers
where email is not null;

select * from customers
where email is null;

select * from accounts 
where balance is not null;

select AccountID,
        balance ,
case 
when balance >= 50000 then "premium Account"
when balance >= 25000 then "Standard Account"
else "basic Account"end as "AccountCategory" from accounts;
desc accounts;

select transactionId,
   amount,
   case 
   when amount >= 3000 then "High Transactions"
   when amount >= 300 then "Medium Transactions"
   else "Low Transactions" end as "Transaction Category" from transactions;
   

