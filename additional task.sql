create table if not exists Employee(
	id serial primary key,
	name_ varchar(80) not null
);

create table if not exists Department(
	id serial primary key,
	department_name varchar(80) not null
);

create table if not exists Chief(
	id serial prymary key,
	department varchar(80) not null references Department(id),
	employee_id integer not null references Employee(id),
	constraint pk primary key (department, employee_id)
);
	