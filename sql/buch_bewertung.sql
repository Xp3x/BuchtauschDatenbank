create view buch_bewertung as 
select 
b.bewertung,
n.name as bewerter,
b3.titel,
n2.name as besitzer
from bewertung b
join nutzer n on b.nutzer_id = n.nutzer_id
join buchindividuum b2 on b.individuum_id = b2.individuum_id 
join buch b3 on b2.buch_id = b3.buch_id
join nutzer n2 on b2.nutzer_id = n2.nutzer_id;


