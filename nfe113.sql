create database "NFE113"
;

create table personne
(
	id serial not null
		constraint pk_personne
			primary key,
	isadmin boolean not null,
	nom varchar(255) not null,
	prenom varchar(255) not null,
	login varchar(255) not null
		constraint unique_login
			unique,
	pwd varchar(255) not null
)
;

create table typesalle
(
	id serial not null
		constraint pk_typesalle
			primary key,
	nom varchar(1024) not null
)
;

create table salle
(
	id serial not null
		constraint pk_salle
			primary key,
	typesalleid integer not null
		constraint fk_salle_correspon_typesall
			references typesalle
				on update restrict on delete restrict,
	numero varchar(1024) not null,
	capacite integer not null
)
;

create table reserve
(
	id serial not null
		constraint reserve_id_pk
			primary key,
	salleid integer not null
		constraint fk_reserve_reserve_salle
			references salle
				on update restrict on delete restrict,
	duree integer not null,
	datedebut timestamp not null,
	datefin timestamp not null,
	code varchar(255) not null,
	status integer not null
)
;

create unique index salle_numero_uindex
	on salle (numero)
;

create table personnereserve
(
	id serial not null
		constraint personnereserve_pkey
			primary key,
	personneid integer not null
		constraint personnereserve_personne_id_fk
			references personne,
	reserveid integer not null
		constraint personnereserve_reserve_id_fk
			references reserve
)
;

