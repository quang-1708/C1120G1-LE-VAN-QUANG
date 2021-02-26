drop database if exists bai_2_bai_tap;
create database bai_2_bai_tap;
use bai_2_bai_tap;
create table customer(
ma_kh varchar(255) primary key,
full_name varchar(255),
address varchar(255),
email varchar(255),
phone int
);
create table accounts(
ma_tk varchar(255) primary key,
so_tk int,
kieu_tk varchar(255),
ngay date,
blance int,
ma_kh varchar(255),
foreign key(ma_kh) references customer(ma_kh)
);
create table transactions(
ma_gia0_dich varchar(255) primary key,
so_tk int,
ngay date,
amount int,
description varchar(255),
ma_tk varchar(255),
foreign key(ma_tk) references accounts(ma_tk)
);