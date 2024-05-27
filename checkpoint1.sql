create database checkpoint1;
use checkpoint1 ;
create table customer(
customer_id varchar (5) PRIMARY KEY,
customer_name varchar (5) not null 
, customer_tel numeric); 
create table product(
product_id varchar (5) primary key,
product_Name varchar (5) not null ,
price numeric check(price>=0) );
alter table product add category  varchar(5);
create table orders (
customer_id varchar (5),product_id varchar (5),
  FOREIGN KEY (customer_id ) REFERENCES customer(customer_id ),
     FOREIGN KEY (product_id) REFERENCES product (product_id),
  quantity numeric , total_amount numeric) ;
alter table orders add Orderdate date default (current_date);
  