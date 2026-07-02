select * from customers
where FirstName like"A%";

select *from customers
where Email like "%gmail%";

select * from customers
where LastName like "%kar";

select* from customers
where FirstName like"r%";

select* from customers
where email like "%yahoo%";

select * from customers 
where LastName like "P%";

select *from customers
where phone like"%99";

select * from Accounts
where AccountType in("savings","Current");

select * from transactions
where TransactionType in ("withdrwal","deposite");

update transactions
set transactionType ="withdrwal" where transactiontype = "upi";
update transactions
set transactiontype ="Deposite" where transactiontype ="cash";

select * from customers
where CustomerID in (101,102,105);

select * from accounts
where AccountType in ("savings","salary");

select * from Transactions
where transactiontype in ("payment","deposite");

select * from customers
where CustomerID in (103,104);

select * from Accounts
where accountId in (201,202,203);

select* from customers order by LastName asc;
select*from transactions order by TransactionDate desc;
desc transactions;
select *from accounts order by AccountType asc;
select * from transactions order by amount desc;
select* from customers order by dateofbirth asc;
select * from customers order by FirstName asc;

select * from  accounts
order by balance desc
limit 5;

select* from customers limit 3;
select * from transactions limit 5 offset 3;

select * from transactions order by amount desc limit 3;
select * from customers limit 4;
select * from accounts limit 3 offset 2;
select * from transactions order by TransactionDate desc limit 5;

select* from accounts
where AccountType="savings"
order by balance desc;

select*from customers
where FirstName like "s%"
limit 5;

select * from transactions
where TransactionType in ("deposite","withdrwal")
order by TransactionDate desc;



