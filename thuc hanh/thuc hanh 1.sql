create database bai_2;
use bai_2;
create table contacts(
contact_id INT(11) NOT NULL AUTO_INCREMENT,last_name VARCHAR(30) NOT NULL,first_name VARCHAR(25),
birthday DATE,CONSTRAINT contacts_pk PRIMARY KEY (contact_id));
alter table contacts
 add last_name varchar(40) NOT NULL
    after contact_id;
alter table contacts
drop column last_name;