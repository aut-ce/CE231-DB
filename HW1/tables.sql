/*
 * In The Name of God
 * =======================================
 * [] File Name : tables.sql
 *
 * [] Creation Date : 11-10-2019
 *
 * [] Created By : Parham Alvani (parham.alvani@gmail.com)
 * =======================================
*/
/*
 * Copyright (c) 2019 Parham Alvani.
*/
drop table if exists drivers;
create table drivers ( id int primary key auto_increment, first_name text not null, last_name text not null, status int default 0, phone text not null);

drop table if exists passengers;
create table passengers ( id int primary key auto_increment, first_name text not null, last_name text not null, phone text not null);
