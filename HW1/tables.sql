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

drop table if exists rides;
create table rides ( id int primary key auto_increment, passenger int references passengers(id), driver int references drivers(id),
        source_lat decimal(10, 8) not null, source_lng decimal(11, 8) not null,
        destination_lat decimal(10, 8) not null, destination_lng decimal(11, 8) not null,
        second_destination_lat decimal(10, 8), second_destination_lng decimal(11, 8));

drop table if exists discounts;
