
CREATE TABLE IF NOT EXISTS gym(
	id serial not null primary key,
	name varchar(50) not null,
	adress varchar(100) not null,
	established_year integer not null,
	contact_number integer not null,
	website varchar(100) null
);

CREATE TABLE IF NOT EXISTS employees(
	id serial not null primary key,
	name varchar(100) not null,
	age integer not null,
	position varchar(100) not null,
	contact_number integer not null
);

CREATE TABLE IF NOT EXISTS gym_employees(
	id serial not null primary key,
	gym_id integer not null,
	employees_id integer not null,
	foreign key (gym_id) references gym(id),
	foreign key (employees_id) references employees(id)
);

CREATE TABLE IF NOT EXISTS facilities(
	id serial not null primary key,
	name varchar(100) not null,
	additional_cost boolean not null,
	facility_status varchar(50) not null
);

CREATE TABLE IF NOT EXISTS gym_facilities(
	id serial not null primary key,
	gym_id integer not null,
	facilities_id integer not null,
	foreign key (gym_id) references gym(id),
	foreign key (facilities_id) references facilities(id)
);

CREATE TABLE IF NOT EXISTS products(
	id serial not null primary key,
	name varchar(50) not null
);

CREATE TABLE IF NOT EXISTS gym_products(
	id serial not null primary key,
	gym_id integer not null,
	products_id integer not null,
	foreign key (gym_id) references gym(id),
	foreign key (products_id) references products(id)
);

CREATE TABLE IF NOT EXISTS equipment(
	id serial not null primary key,
	name varchar(100) not null,
	category varchar(50),
	condition varchar(50)
);

CREATE TABLE IF NOT EXISTS gym_equipment(
	id serial not null primary key,
	gym_id integer not null,
	equipment_id integer not null,
	foreign key (gym_id) references gym(id),
	foreign key (equipment_id) references equipment(id)
);

CREATE TABLE IF NOT EXISTS trainer(
	id serial not null primary key,
	name varchar(50) not null,
	age smallint not null,
	phone integer not null,
	experience_years smallint not null
);

CREATE TABLE IF NOT EXISTS gym_trainer(
	id serial not null primary key,
	gym_id integer not null,
	trainer_id integer not null,
	foreign key (gym_id) references gym(id),
	foreign key (trainer_id) references trainer(id)
);

CREATE TABLE IF NOT EXISTS class(
	id serial not null primary key,
	name varchar(100) not null,
	duration varchar(50) not null,
	schedule varchar(100) not null,
	trainer_id integer not null,
	foreign key (trainer_id) references trainer(id)
);

CREATE TABLE IF NOT EXISTS gym_class(
	id serial not null primary key,
	gym_id integer not null,
	class_id integer not null,
	foreign key (gym_id) references gym(id),
	foreign key (class_id) references class(id)
);

CREATE TABLE IF NOT EXISTS members(
	id serial not null primary key, 
	name varchar(100) not null,
	age integer not null,
	join_year integer not null,
	phone integer not null
);

CREATE TABLE IF NOT EXISTS members_goals(
	id serial not null primary key,
	goal_type varchar(100) not null,
	progress varchar(100) not null,
	members_id integer not null unique,
	foreign key (members_id) references members(id)
);

CREATE TABLE IF NOT EXISTS gym_members(
	id serial not null primary key,
	gym_id integer not null,
	members_id integer not null,
	foreign key (gym_id) references gym(id),
	foreign key (members_id) references members(id)
);

CREATE TABLE IF NOT EXISTS member_class(
	id serial not null primary key,
	members_id integer not null,
	class_id integer not null,
	foreign key (members_id) references members(id),
	foreign key (class_id) references class(id)
);

CREATE TABLE IF NOT EXISTS subscription(
	id serial not null primary key,
	subscription_type varchar(100) not null,
	start_date date not null,
	end_date date not null,
	status boolean not null,
	gym_id integer not null,
	members_id integer not null,
	foreign key (gym_id) references gym(id),
	foreign key (members_id) references members(id)
);

CREATE TABLE IF NOT EXISTS feedback(
	id serial not null primary key,
	rating smallint not null,
	feedback_date date not null,
	members_id integer not null unique,
	gym_id integer not null unique,
	class_id integer not null unique,
	trainer_id integer not null unique,
	foreign key (members_id) references members(id),
	foreign key (gym_id) references gym(id),
	foreign key (class_id) references class(id),
	foreign key (trainer_id) references trainer(id)
);