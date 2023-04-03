-- JOIN

create table City(
	id serial,
	title varchar(50)
)

create table Person2(
	id serial,
	person_name varchar(50),
	city_id int
)

select * from City;

insert into City(title)
values ('Berlin'),
	   ('Tokio'),
	   ('Antalya'),
	   ('Paris'),
	   ('Roma')

	   
insert into Person2(person_name, city_id)
values ('Victor', 1),
	   ('Elena', 2),
	   ('Anna', 1),
	   ('Vadim', 3),
	   ('Ivan', 7),
	   ('Irina', 9)

—- inner	   
select person2.person_name, city.title, person2.city_id, city.id from 
Person2 inner join City
on Person2.city_id = City.id;

-- left
select person2.person_name, person2.city_id, city.title, city.id from 
Person2 left join City
on Person2.city_id = City.id;

-- rihght
select person2.person_name, person2.city_id, city.title, city.id from 
Person2 right join City
on Person2.city_id = City.id;

-- full outer
select person2.person_name, person2.city_id, city.title, city.id from 
Person2 full outer join City
on Person2.city_id = City.id;

-- cross
select person2.person_name, person2.city_id, city.title, city.id from 
Person2 cross join City;








	   
	   
	   
	   
	   