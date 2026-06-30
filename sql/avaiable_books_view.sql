create view available_books_view as
select 
b.buch_id,
a.titel,
b.zustand,
n.name,
b2.startzeit,
b2.endzeit,
s.name as standort
from buchindividuum b 
join buch a on b.buch_id = a.buch_id
join nutzer n on b.nutzer_id = n.nutzer_id
join adresse a2 on n.adresse_id = a2.adresse_id 
join standort s on a2.standort_id = s.standort_id
join buchverfuegbar b2 on b.individuum_id = b2.individuum_id;



