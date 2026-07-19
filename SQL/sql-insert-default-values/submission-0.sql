CREATE TABLE products (
  id INTEGER PRIMARY KEY,
  name TEXT,
  stock INTEGER DEFAULT 0
);

-- Do not modify above this line --

insert into products(id,name) values(1,'Apple');

insert into products(id,name) values(2,'Banana');

insert into products(id,name) values(3,'Orange');


-- Do not modify below this line --
SELECT * FROM products;
