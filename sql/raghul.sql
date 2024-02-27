show databases;
create database ai_raghul_;
use ai_raghul_;
create table raghul_data(s_no int not null primary key, name varchar(20)not null, phone_no long,age int,location varchar(250));
show tables;
insert into raghul_data(s_no,name,phone_no,age,location) values (1,'Arun',8525880306,21,'keeranur');
insert into raghul_data(s_no,name,phone_no,age,location) values (2,'raghul',9876543210,23,'kattur');
insert into raghul_data(s_no,name,phone_no,age,location) values (3,'abdul',9876543211,21,'trichy');
select *from raghul_data;
