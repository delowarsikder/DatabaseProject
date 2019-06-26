DROP TABLE worker;
DROP TABLE job;
DROP TABLE relief;
DROP TABLE donation;
DROP TABLE victim;
DROP TABLE goods;
DROP TABLE donor;
DROP TABLE area;

--01.table for area information
CREATE TABLE area (
	area_id NUMBER ( 10 ),
	area_name VARCHAR ( 10 ),
	population NUMBER ( 10 ),
	location VARCHAR ( 10 ),
	constraint pk_area_id primary key ( area_id ));
--02.table for donor information
CREATE TABLE donor (
	donor_id NUMBER ( 10 ),
	first_Name VARCHAR ( 10 ),
	last_Name VARCHAR ( 10 ),
	address VARCHAR ( 20 ),
	constraint pk_donor_id primary key ( donor_id ));

--03.table for goods information
CREATE TABLE goods (
	goods_id NUMBER ( 10 ),
	goods_name VARCHAR ( 10 ),
	stock_quantity NUMBER ( 10, 2 ),
constraint pk_goods_id primary key ( goods_id ));

--04.table for victim information
CREATE TABLE victim (
	victim_id NUMBER ( 10 ),
	first_Name VARCHAR ( 10 ),
	last_Name VARCHAR ( 10 ),
	victim_area NUMBER ( 10 ),
	constraint pk_victim_id primary key ( victim_id ),
	constraint fk_victim_area foreign key ( victim_area ) references area ( area_id ) ON DELETE cascade 
);

-- 05.table for donation information
CREATE TABLE donation (
	donation_id NUMBER ( 10 ),
	donate_date DATE,
	donate_quantity NUMBER ( 6, 2 ) check(donate_quantity>0),
	goods_id NUMBER ( 10 ),
	owner_id NUMBER ( 10 ),
	constraint pk_donation_id primary key ( donation_id ),
	constraint fk_goods_id foreign key ( goods_id ) references goods ( goods_id ) ON DELETE cascade,
	constraint fk_owner_id foreign key ( owner_id ) references donor ( donor_id ) ON DELETE cascade 
);

--06.table for relief information
CREATE TABLE relief (
	relief_id VARCHAR ( 10 ),
	relief_date DATE,
	goods_quantity NUMBER ( 10,2 ),
	victim_owner NUMBER ( 10 ),
	product_id number,
	constraint pk_relief_id primary key ( relief_id ),
	constraint fk_product_id foreign key ( product_id ) references goods ( goods_id ) ON DELETE cascade,
	constraint fk_victim_owner foreign key ( victim_owner ) references victim ( victim_id ) ON DELETE cascade 
);

--07.table for job(volunteer) information
CREATE TABLE job (
	job_id NUMBER ( 10 ),
	job_title VARCHAR ( 20 ),
constraint pk_job_id primary key ( job_id ));

--08.table for Emergency Worker(volunteer) information
CREATE TABLE worker (
	worker_id NUMBER ( 10 ) not null,
	first_Name VARCHAR ( 10 ),
	last_Name VARCHAR ( 10 ),
	address VARCHAR ( 20 ),
	password VARCHAR ( 10 ),
	join_date DATE,
	area_id NUMBER ( 10 ),
	volunteer_id NUMBER ( 10 ),
	constraint pk_worker_id primary key ( worker_id ),
	constraint fk_area_id foreign key ( area_id ) references area ( area_id ) ON DELETE cascade,
constraint fk_volunteer_id foreign key ( volunteer_id ) references job ( job_id ) ON DELETE cascade 
);