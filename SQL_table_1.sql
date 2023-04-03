-- #1

--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.



create table employee(
	id serial primary key,
	employees_name varchar (50) unique not null
	
);

select * from employee;	

insert	into employee(employees_name)
values (1),
	   (2),
	   (3),
	   (4),
	   (5),
	   (6),
	   (7),
	   (8),
	   (9),
	   (10),
	   (11),
	   (12),
	   (13),
	   (14),
	   (15),
	   (16),
	   (17),
	   (18),
	   (19),
	   (20),
	   (21),
	   (22),
	   (23),
	   (24),
	   (25),
	   (26),
	   (27),
	   (28),
	   (29),
	   (30),
	   (31),
	   (32),
	   (33),
	   (34),
	   (35),
	   (36),
	   (37),
	   (38),
	   (39),
	   (40),
	   (41),
	   (42),
	   (43),
	   (44),
	   (45),
	   (46),
	   (47),
	   (48),
	   (49),
	   (50),
	   (51),
	   (52),
	   (53),
	   (54),
	   (55),
	   (56),
	   (57),
	   (58),
	   (59),
	   (60),
	   (61),
	   (62),
	   (63),
	   (64),
	   (65),
	   (66),
	   (67),
	   (68),
	   (69),
	   (70);

select * from employee;


#2

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
  
create table salary2(
	id serial primary key,
	monthly_salary int not null
	);
insert into salary2(monthly_salary)
values  (1000),
	    (1100),
	    (1200),
	    (1300),
	    (1400),
	    (1500),
	    (1600),
	    (1700),
	    (1800),
	    (1900),
	    (2000),
	    (2100),
	    (2200),
	    (2300),
	    (2400),
	    (2500);

select * from salary2




--#3

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary2_id int not null,
	foreign key (employee_id)
		references employee(id),
	foreign key (salary2_id) 
		references salary2(id)
);

select * from employee_salary

insert into employee_salary(employee_id, salary2_id)
values	(1,1),
		(2,2),
		(3,3),
		(4,4),
		(5,5),
		(6,6),
		(7,7),
		(8,8),
		(9,9),
		(10,10),
		(11,10),
		(12,9),
		(13,8),
		(14,7),
		(15,6),
		(16,5),
		(17,4),
		(18,3),
		(19,2),
		(20,1),
		(21,1),
		(22,2),
		(23,3),
		(24,4),
		(25,5),
		(26,6),
		(27,7),
		(28,8),
		(29,9),
		(30,10),
		(31,10),
		(32,9),
		(33,8),
		(34,7),
		(35,6),
		(36,5),
		(37,4),
		(38,3),
		(39,2),
		(40,1);
	
select * from employee_salary



--#4

-- Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
-- Поменять тип столба role_name с int на varchar(30)
-- Наполнить таблицу roles 20 строками:


create table roles2(
id serial primary key,
role_name varchar(30) not null unique
);

insert into roles2(role_name)
values  ('Junior Python developer'),   
		('Middle Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
		
select * from roles2
 

--#5

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:
	   
		
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id) 
		references roles2(id)
);

select * from roles_employee








	   
	   
	   
	   
	   