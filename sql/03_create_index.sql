create index idx_adresse_standort on adresse(standort_id);
create index idx_nutzer_adresse on nutzer(adresse_id);

create index idx_buch_genre on buch(genre_id);
create index idx_buch_verlag on buch(verlag_id);

create index idx_buchindividuum_nutzer on buchindividuum(nutzer_id);
create index idx_buchindividuum_buch on buchindividuum(buch_id);

create index idx_buchverfuegbar_individuum on buchverfuegbar(individuum_id);
create index idx_buchverfuegbar_standort on buchverfuegbar(standort_id);

create index idx_ausleihe_individuum on ausleihe(individuum_id);
create index idx_ausleihe_nutzer on ausleihe(nutzer_id);

create index idx_bewertung_individuum on bewertung(individuum_id);
create index idx_bewertung_nutzer on bewertung(nutzer_id);

create index idx_versand_ausleihe on versand(ausleihe_id);
create index idx_versand_firma on versand(firma_id);
create index idx_versand_adresse on versand(adresse_id);

create index idx_abholung_ausleihe on abholung(ausleihe_id);
create index idx_abholung_adresse on abholung(adresse_id);