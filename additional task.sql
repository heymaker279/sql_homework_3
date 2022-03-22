create table if not exists Employee(
	id serial primary key,
	name_ varchar(80) not null	
);

create table if not exists Department(
	department_name varchar(80) primary key 
);

create table if not exists Chief(
	department varchar(80) not null references Department(department_name),
	employee_id integer not null references Employee(id),
	constraint pk primary key (department, employee_id)
);
	