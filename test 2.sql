create database test2;
use test2;
create table users( 
name varchar(255) not null,
last_name varchar(255),
user_id varchar (255) primary key,
age int );
alter table users drop primary key ;
alter table users add primary key(user_id);
create table orders (
order_id varchar(255) primary key,
name varchar (255),
user_id varchar(255),
foreign key (user_id) references users(user_id),
primary key (order_id,name)
);
alter table orders add primary key(order_id,name)

