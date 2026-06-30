create table standort(
	standort_id BIGSERIAL primary key,
	name varchar(255) not null 
);

create table adresse (
    adresse_id BIGSERIAL PRIMARY KEY,
    strasse VARCHAR(255) NOT NULL,
    plz VARCHAR(10) NOT NULL,
    hausnummer INTEGER NOT NULL,
    constraint check_hausnummer check(hausnummer > 0),
    standort_id BIGINT NOT NULL,
    foreign key(standort_id) references standort(standort_id)
);

create table nutzer(
	nutzer_id BIGSERIAL primary key,
	name varchar(255) not null,
	email varchar(255) not null,
	adresse_id BIGINT not null,
	foreign key(adresse_id) references adresse(adresse_id)
);

create table genre(
	genre_id bigserial primary key,
	name varchar(255) not null 
);

create table verlag(
	verlag_id bigserial primary key,
	name varchar(255) not null 
);

create table autor(
	autor_id bigserial primary key,
	name varchar(255) not null
);

create table buch(
	buch_id bigserial primary key,
	titel varchar(255) not null,
	sprache varchar(255) not null,
	genre_id bigint not null,
	foreign key(genre_id) references genre(genre_id),
	verlag_id bigint not null,
	foreign key(verlag_id) references verlag(verlag_id)
);

create table autorbuch(
    autor_id bigint not null,
    buch_id bigint not null,
    primary key (autor_id, buch_id),
    foreign key(autor_id) references autor(autor_id),
    foreign key(buch_id) references buch(buch_id)
);

create table buchindividuum(
	individuum_id bigserial primary key,
	zustand varchar(255) not null,
	nutzer_id bigint not null,
	foreign key(nutzer_id) references nutzer(nutzer_id),
	buch_id bigint not null,
	foreign key(buch_id) references buch(buch_id)
);

create table buchverfuegbar(
	verfuegbarkeit_id bigserial primary key,
	startzeit timestamp not null,
	endzeit timestamp not null,
	constraint check_date_buchverfuegbar check(endzeit > startzeit),
	post bool not null,
	individuum_id bigint not null,
	foreign key(individuum_id) references buchindividuum(individuum_id),
	standort_id bigint not null,
	foreign key(standort_id) references standort(standort_id)
);

create table ausleihe(
	ausleihe_id bigserial primary key,
	startausleihe timestamp not null,
	endausleihe timestamp not null,
	constraint check_date_ausleihe check(endausleihe > startausleihe ),
	individuum_id bigint not null,
	foreign key(individuum_id) references buchindividuum(individuum_id),
	nutzer_id bigint not null,
	foreign key(nutzer_id) references nutzer(nutzer_id),
	verfuegbarkeit_id bigint not null unique,
	foreign key(verfuegbarkeit_id) references buchverfuegbar(verfuegbarkeit_id)
);

create table bewertung(
	bewertung_id bigserial primary key,
	bewertung text not null,
	rating int not null,
	constraint check_rating check(rating between 1 and 10),
	datum timestamp not null,
	ausleihe_id bigint not null unique,
	foreign key(ausleihe_id) references ausleihe(ausleihe_id),
	individuum_id bigint not null,
	foreign key(individuum_id) references buchindividuum(individuum_id),
	nutzer_id bigint not null,
	foreign key(nutzer_id) references nutzer(nutzer_id)
);

create table versandfirma(
	firma_id bigserial primary key,
	name varchar(255) not null,
	versandkosten numeric(10,2) not null,
	constraint check_versandkosten check(versandkosten >=0)
);

create table versand(
	versand_id bigserial primary key,
	portobezahlt bool not null,
	sendungsnummer varchar(255) not null,
	ausleihe_id bigint not null,
	foreign key(ausleihe_id) references ausleihe(ausleihe_id),
	firma_id bigint not null,
	foreign key(firma_id) references versandfirma(firma_id),
	adresse_id bigint not null,
	foreign key(adresse_id) references adresse(adresse_id)
);

create table abholung(
	abholung_id bigserial primary key,
	abholzeitpunkt timestamp not null,
	ausleihe_id bigint not null,
	foreign key(ausleihe_id) references ausleihe(ausleihe_id),
	adresse_id bigint not null,
	foreign key(adresse_id) references adresse(adresse_id)
);














