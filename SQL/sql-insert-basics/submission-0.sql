CREATE TYPE account_type AS ENUM ('checking', 'savings', 'cd', 'money_market');

CREATE TABLE bank_accounts (
    id INTEGER PRIMARY KEY,
    account_type account_type,
    balance INTEGER
);
-- Do not modify above this line --

insert into bank_accounts values(1,'checking',1000);

insert into bank_accounts values(2,'savings',2000);

insert into bank_accounts values(3,'cd',3000);

insert into bank_accounts values(4,'money_market',4000);


-- Do not modify below this line --
SELECT * FROM bank_accounts;
