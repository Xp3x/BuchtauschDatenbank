create view ausleihe_uebersicht as
select 
a.ausleihe_id,
n.name as ausleiher,
n2.name as besitzer,
b2.titel,
a.startausleihe,
a.endausleihe 
from ausleihe a 
join nutzer n on a.nutzer_id = n.nutzer_id
join buchindividuum b on a.individuum_id = b.individuum_id
join nutzer n2 on b.nutzer_id = n2.nutzer_id
join buch b2 on b.buch_id = b2.buch_id; 