insert into standort (name) values 
('kiel'),
('hamburg'),
('flensburg'),
('lübeck'),
('bremen'),
('göttingen'),
('hannover'),
('fulda'),
('kassel'),
('berlin');

insert into genre (name) values
('Fantasy'),
('Science Fiction'),
('Thriller'),
('Krimi'),
('Roman'),
('Sachbuch'),
('Biografie'),
('Horror'),
('Historisch'),
('Jugendbuch');

insert into verlag (name) values
('dtv'),
('kyss'),
('carlsen'),
('cbj'),
('loewe'),
('ravensberger'),
('Penguin'),
('Springer'),
('Rowohlt'),
('Hanser'),
('blanvalet'),
('klett-cotta'),
('heyne');

insert into autor (name) values
('sarah j. mass'),
('raven kennedy'),
('elise koven'),
('john flagan'),
('ursula poznanski'),
('stella tack'),
('j. k. rowling'),
('georg r.r. martin'),
('stephen king'),
('j.r.r. tolkien');

insert into buch (titel, sprache, genre_id, verlag_id) values
('throne of glass: die erwählte', 'deutsch', 1, 1),
('crescent city: wenn das dunkle erwacht', 'deutsch',1,1 ),
('the darkest gold: die gefangene', 'deutsch', 1,2),
('air woken', 'deutsch', 1,3),
('die verschwörung von gallicia', 'deutsch', 10, 4),
('die verratenen', 'deutsch', 2, 5),
('erebos', 'deutsch', 10, 5),
('ever and after der schlafene prinz', 'deutsch', 1, 6),
('das lied von eis und feuer: die herren von winterfell', 'deutsch', 1, 11),
('harry potter: der stein der weisen', 'deutsch', 1, 3),
('der herr der ringe: die gefährten', 'deutsch', 1, 12),
('es', 'deustch', 8, 13);


insert into autorbuch (autor_id, buch_id) values
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(5, 7),
(6, 8),
(8, 9),
(7, 10),
(10, 11),
(9, 12);

insert into adresse (strasse, plz, hausnummer, standort_id) values
('Holtenauer Strasse', '24105', 15, 1),      
('Mönckebergstrasse', '20095', 42, 2),       
('Norderstrasse', '24939', 8, 3),            
('Königstrasse', '23552', 21, 4),            
('Ostertorsteinweg', '28203', 33, 5),        
('Weender Landstrasse', '37073', 12, 6),     
('Lister Meile', '30161', 55, 7),            
('Bahnhofstrasse', '36037', 7, 8),           
('Wilhelmshöher Allee', '34117', 101, 9),    
('Unter den Linden', '10117', 25, 10);      

insert into nutzer (name, email, adresse_id) values
('Korin Lohmeyer', 'korin@example.de', 1),
('Angela Merkel', 'angela@example.de', 2),
('Aelin Ashryver', 'aelin@example.de', 3),
('Harry Potter', 'harry@example.de', 4),
('Chester Bennington', 'chester@example.de', 5),
('Albert Einstein', 'albert@example.de', 6),
('Sebastian Sawe', 'sebastian@example.de', 7),
('Barack Obama', 'barack@example.de', 8),
('Laura Phillip', 'laura@example.de', 9),
('Neil Armstrong', 'neil@example.de', 10);

insert into  buchindividuum (zustand, nutzer_id, buch_id) values
('Neu', 1, 10),                
('Sehr gut', 2, 7),            
('Neu', 3, 1),                 
('Gut', 4, 11),              
('Akzeptabel', 5, 12),       
('Sehr gut', 6, 6),            
('Neu', 7, 5),                
('Gut', 8, 9),                 
('Sehr gut', 9, 4),           
('Neu', 10, 2),               
('Gut', 1, 3),               
('Sehr gut', 3, 8),          
('Akzeptabel', 4, 7),        
('Neu', 8, 10),               
('Sehr gut', 9, 11); 

insert into buchverfuegbar (startzeit, endzeit, post, individuum_id, standort_id) values
('2026-06-10 10:00:00', '2026-06-20 18:00:00', true, 1, 1),
('2026-06-12 09:00:00', '2026-06-22 17:00:00', false, 2, 2),
('2026-06-15 12:00:00', '2026-06-25 18:00:00', true, 3, 3),
('2026-06-18 14:00:00', '2026-06-28 16:00:00', false, 4, 4),
('2026-06-20 10:00:00', '2026-06-30 18:00:00', true, 5, 5),
('2026-07-01 09:00:00', '2026-07-10 17:00:00', false, 6, 6),
('2026-07-03 11:00:00', '2026-07-13 18:00:00', true, 7, 7),
('2026-07-05 10:00:00', '2026-07-15 16:00:00', false, 8, 8),
('2026-07-08 13:00:00', '2026-07-18 18:00:00', true, 9, 9),
('2026-07-10 09:00:00', '2026-07-20 17:00:00', false, 10, 10),
('2026-07-22 10:00:00', '2026-08-01 18:00:00', true, 11, 1),
('2026-07-24 09:00:00', '2026-08-03 17:00:00', false, 12, 3),
('2026-07-26 12:00:00', '2026-08-05 18:00:00', true, 13, 4),
('2026-07-28 14:00:00', '2026-08-07 16:00:00', false, 14, 8),
('2026-07-30 10:00:00', '2026-08-09 18:00:00', true, 15, 9);  

insert into ausleihe (startausleihe, endausleihe, individuum_id, nutzer_id, verfuegbarkeit_id)
values
('2026-06-11 10:00:00', '2026-06-18 18:00:00', 1, 2, 1),
('2026-06-13 09:00:00', '2026-06-20 17:00:00', 2, 3, 2),
('2026-06-16 12:00:00', '2026-06-23 18:00:00', 3, 4, 3),
('2026-06-19 14:00:00', '2026-06-26 16:00:00', 4, 5, 4),
('2026-06-21 10:00:00', '2026-06-28 18:00:00', 5, 6, 5),
('2026-07-02 09:00:00', '2026-07-09 17:00:00', 6, 7, 6),
('2026-07-04 11:00:00', '2026-07-11 18:00:00', 7, 8, 7),
('2026-07-06 10:00:00', '2026-07-13 16:00:00', 8, 9, 8),
('2026-07-09 13:00:00', '2026-07-16 18:00:00', 9, 10, 9),
('2026-07-11 09:00:00', '2026-07-18 17:00:00', 10, 1, 10);

insert into bewertung (bewertung, rating, datum, ausleihe_id, individuum_id,nutzer_id)
values
('Tolles Buch, schnelle Übergabe.', 5, '2026-06-19 18:00:00', 1, 1, 2),
('Spannende Geschichte, gerne wieder.', 5, '2026-06-21 17:30:00', 2, 2, 3),
('Buch war in sehr gutem Zustand.', 4, '2026-06-24 18:00:00', 3, 3, 4),
('Hat mir sehr gefallen.', 5, '2026-06-27 16:30:00', 4, 4, 5),
('Ließ sich angenehm lesen.', 4, '2026-06-29 18:00:00', 5, 5, 6),
('Interessante Handlung und netter Kontakt.', 5, '2026-07-10 17:00:00', 6, 6, 7),
('Alles problemlos verlaufen.', 5, '2026-07-12 18:00:00', 7, 7, 8),
('Buch entsprach der Beschreibung.', 4, '2026-07-14 16:00:00', 8, 8, 9),
('Sehr empfehlenswert.', 5, '2026-07-17 18:00:00', 9, 9, 10),
('Freundlicher Austausch und tolles Buch.', 5, '2026-07-19 17:00:00', 10, 10, 1);  

insert into versandfirma (name,versandkosten)
values
('DHL', 4.99),
('Hermes', 4.50),
('DPD', 5.49),
('GLS', 5.29),
('UPS', 6.99),
('FedEx', 8.99),
('Deutsche Post', 2.75),
('Amazon Logistics', 3.99),
('Trans-o-Flex', 7.49),
('GO! Express', 12.99);

insert into versand ( portobezahlt, sendungsnummer, ausleihe_id, firma_id, adresse_id)
values
(true,  'DHL20260001', 1, 1, 2),
(false, 'DPD20260003', 3, 3, 4),
(true,  'UPS20260005', 5, 5, 6),
(true,  'POST20260007', 7, 7, 8),
(false, 'TOF20260009', 9, 9, 10);


insert into abholung ( abholzeitpunkt, ausleihe_id, adresse_id)
values
('2026-06-13 15:00:00', 2, 2),
('2026-06-20 16:00:00', 4, 4),
('2026-07-03 14:00:00', 6, 6),
('2026-07-07 17:00:00', 8, 8),
('2026-07-12 12:00:00', 10, 10);
