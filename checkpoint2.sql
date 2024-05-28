use checkpoint1;
select * from customer ;
INSERT INTO customer
VALUES ("c01","ali",71321009);
INSERT INTO customer
VALUES ("c02","asma",77345823);
select * from product ;
INSERT INTO product
VALUES ("p01","s20","3299","phone");
INSERT INTO product
VALUES ("p02","asus","4599","pc");
select * from orders ;
insert into orders values("c01","p02",2,9198,null);
insert into orders values("c02","p01",1,3255,"2020-05-08");
SET SQL_SAFE_UPDATES = 0;
delete from orders where Orderdate=null;
update product set  price="4800" where product_id="p01";
update customer set customer_name="samir" where customer_id="c01"



