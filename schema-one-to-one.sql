create table person(
	person_id varchar(255) not null,
	fullname varchar(255) not null,
	username varchar(255) not null,
	email varchar(255) not null,
	password varchar(255) not null,
	firstname varchar(255) not null,
	lastname varchar(255) not null,
	person_details_id varchar(255) not null unique,

	constraint pk_person_id primary key(person_id),
	constraint fk_person_person_details_id foreign key(person_details_id)
	references person_details(person_details_id)
);

create table person_details(
	person_details_id varchar(255) not null,
	address varchar(255) not null,
	zipcode varchar(255) not null,
	age varchar(255) not null,
	birthday datetime not null,
	url_web varchar(255) null,
	url_github varchar(255) null,
	url_linkedin varchar(255) null,
	url_facebook varchar(255) null,
	url_twitter varchar(255) null,

	constraint pk_peson_details_id primary key(person_details_id)
);

