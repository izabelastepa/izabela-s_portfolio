--Adding column "Kategoria" to tables
ALTER TABLE `allegro-20172020.Kategorie.Bilety`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Bilety_kupony`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Biuro_reklama`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Design_antyki`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Dom_ogrod`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Dziecko`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Filmy`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Fotografia`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Gadzety`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Gry`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Instrumenty`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Kody_doladowania`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Kolekcje`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Komputery`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Konsole_automaty`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Ksiazki_komiksy`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Kursy_online`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Motoryzacja`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Muzyka`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Odziez_obuwie_dodatki`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Ogloszenia_uslugi`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Pozostale`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Produkty_inwestycyjne`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Przemysl`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.RTV_AGD`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Rekodzielo`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Sport_turystyka`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Sprzet_estradowy_studyjny`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Supermarket`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Sztuka`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Telefony_akcesoria`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Uroda`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Zdrowie`
ADD COLUMN Kategoria STRING;
ALTER TABLE `allegro-20172020.Kategorie.Zywe_zwierzeta`
ADD COLUMN Kategoria STRING

--Setting default value
ALTER TABLE `allegro-20172020.Kategorie.Bilety`
ALTER COLUMN Kategoria SET DEFAULT'Bilety';
ALTER TABLE `allegro-20172020.Kategorie.Bilety_kupony`
ALTER COLUMN Kategoria SET DEFAULT'Bilety i kupony';
ALTER TABLE `allegro-20172020.Kategorie.Biuro_reklama`
ALTER COLUMN Kategoria SET DEFAULT'Biuro i reklama';
ALTER TABLE `allegro-20172020.Kategorie.Design_antyki`
ALTER COLUMN Kategoria SET DEFAULT'Desgin i antyki';
ALTER TABLE `allegro-20172020.Kategorie.Dom_ogrod`
ALTER COLUMN Kategoria SET DEFAULT'Dom i ogród';
ALTER TABLE `allegro-20172020.Kategorie.Dziecko`
ALTER COLUMN Kategoria SET DEFAULT'Dziecko';
ALTER TABLE `allegro-20172020.Kategorie.Filmy`
ALTER COLUMN Kategoria SET DEFAULT'Filmy';
ALTER TABLE `allegro-20172020.Kategorie.Fotografia`
ALTER COLUMN Kategoria SET DEFAULT'Fotografia';
ALTER TABLE `allegro-20172020.Kategorie.Gadzety`
ALTER COLUMN Kategoria SET DEFAULT'Gadżety';
ALTER TABLE `allegro-20172020.Kategorie.Gry`
ALTER COLUMN Kategoria SET DEFAULT'Gry';
ALTER TABLE `allegro-20172020.Kategorie.Instrumenty`
ALTER COLUMN Kategoria SET DEFAULT'Instrumenty';
ALTER TABLE `allegro-20172020.Kategorie.Kody_doladowania`
ALTER COLUMN Kategoria SET DEFAULT'Kody i doładowania';
ALTER TABLE `allegro-20172020.Kategorie.Kolekcje`
ALTER COLUMN Kategoria SET DEFAULT'Kolekcje';
ALTER TABLE `allegro-20172020.Kategorie.Komputery`
ALTER COLUMN Kategoria SET DEFAULT'Komputery';
ALTER TABLE `allegro-20172020.Kategorie.Konsole_automaty`
ALTER COLUMN Kategoria SET DEFAULT'Konsole i automaty';
ALTER TABLE `allegro-20172020.Kategorie.Ksiazki_komiksy`
ALTER COLUMN Kategoria SET DEFAULT'Książki i komiksy';
ALTER TABLE `allegro-20172020.Kategorie.Kursy_online`
ALTER COLUMN Kategoria SET DEFAULT'Kursy online';
ALTER TABLE `allegro-20172020.Kategorie.Motoryzacja`
ALTER COLUMN Kategoria SET DEFAULT'Motoryzacja';
ALTER TABLE `allegro-20172020.Kategorie.Muzyka`
ALTER COLUMN Kategoria SET DEFAULT'Muzyka';
ALTER TABLE `allegro-20172020.Kategorie.Odziez_obuwie_dodatki`
ALTER COLUMN Kategoria SET DEFAULT'Odzież, obuwie i dodatki';
ALTER TABLE `allegro-20172020.Kategorie.Ogloszenia_uslugi`
ALTER COLUMN Kategoria SET DEFAULT'Ogłoszenia i usługi';
ALTER TABLE `allegro-20172020.Kategorie.Pozostale`
ALTER COLUMN Kategoria SET DEFAULT'Pozostałe';
ALTER TABLE `allegro-20172020.Kategorie.Produkty_inwestycyjne`
ALTER COLUMN Kategoria SET DEFAULT'Produkty inwestycyjne';
ALTER TABLE `allegro-20172020.Kategorie.Przemysl`
ALTER COLUMN Kategoria SET DEFAULT'Przemysł';
ALTER TABLE `allegro-20172020.Kategorie.RTV_AGD`
ALTER COLUMN Kategoria SET DEFAULT'RTV, AGD';
ALTER TABLE `allegro-20172020.Kategorie.Rekodzielo`
ALTER COLUMN Kategoria SET DEFAULT'Rękodzieło';
ALTER TABLE `allegro-20172020.Kategorie.Sport_turystyka`
ALTER COLUMN Kategoria SET DEFAULT'Sport i turystyka';
ALTER TABLE `allegro-20172020.Kategorie.Sprzet_estradowy_studyjny`
ALTER COLUMN Kategoria SET DEFAULT'Sprzęt estradowy i studyjny';
ALTER TABLE `allegro-20172020.Kategorie.Supermarket`
ALTER COLUMN Kategoria SET DEFAULT'Supermarket';
ALTER TABLE `allegro-20172020.Kategorie.Sztuka`
ALTER COLUMN Kategoria SET DEFAULT'Sztuka';
ALTER TABLE `allegro-20172020.Kategorie.Telefony_akcesoria`
ALTER COLUMN Kategoria SET DEFAULT'Telefony i akcesoria';
ALTER TABLE `allegro-20172020.Kategorie.Uroda`
ALTER COLUMN Kategoria SET DEFAULT'Uroda';
ALTER TABLE `allegro-20172020.Kategorie.Zdrowie`
ALTER COLUMN Kategoria SET DEFAULT'Zdrowie';
ALTER TABLE `allegro-20172020.Kategorie.Zywe_zwierzeta`
ALTER COLUMN Kategoria SET DEFAULT'Żywe zwierzęta'

--Updating existing rows with the default value
UPDATE `allegro-20172020.Kategorie.Bilety`
SET Kategoria='Bilety' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Bilety_kupony`
SET Kategoria='Bilety i kupony' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Biuro_reklama`
SET Kategoria='Biuro i reklama' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Design_antyki`
SET Kategoria='Desgin i antyki' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Dom_ogrod`
SET Kategoria='Dom i ogród' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Dziecko`
SET Kategoria='Dziecko' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Filmy`
SET Kategoria='Filmy' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Fotografia`
SET Kategoria='Fotografia' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Gadzety`
SET Kategoria='Gadżety' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Gry`
SET Kategoria='Gry' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Instrumenty`
SET Kategoria='Instrumenty' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Kody_doladowania`
SET Kategoria='Kody i doładowania' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Kolekcje`
SET Kategoria='Kolekcje' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Komputery`
SET Kategoria='Komputery' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Konsole_automaty`
SET Kategoria='Konsole i automaty' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Ksiazki_komiksy`
SET Kategoria='Książki i komiksy' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Kursy_online`
SET Kategoria='Kursy online' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Motoryzacja`
SET Kategoria='Motoryzacja' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Muzyka`
SET Kategoria='Muzyka' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Odziez_obuwie_dodatki`
SET Kategoria='Odzież, obuwie i dodatki' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Ogloszenia_uslugi`
SET Kategoria='Ogłoszenia i usługi' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Pozostale`
SET Kategoria='Pozostałe' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Produkty_inwestycyjne`
SET Kategoria='Produkty inwestycyjne' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Przemysl`
SET Kategoria='Przemysł' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.RTV_AGD`
SET Kategoria='RTV, AGD' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Rekodzielo`
SET Kategoria='Rękodzieło' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Sport_turystyka`
SET Kategoria='Sport i turystyka' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Sprzet_estradowy_studyjny`
SET Kategoria='Sprzęt estradowy i studyjny' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Supermarket`
SET Kategoria='Supermarket' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Sztuka`
SET Kategoria='Sztuka' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Telefony_akcesoria`
SET Kategoria='Telefony i akcesoria' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Uroda`
SET Kategoria='Uroda' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Zdrowie`
SET Kategoria='Zdrowie' WHERE TRUE;
UPDATE `allegro-20172020.Kategorie.Zywe_zwierzeta`
SET Kategoria='Żywe zwierzęta' WHERE TRUE

--Combining tables
CREATE TABLE combined AS
SELECT * FROM `allegro-20172020.Kategorie.Bilety`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Bilety_kupony`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Biuro_reklama`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Design_antyki`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Dom_ogrod`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Dziecko`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Filmy`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Fotografia`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Gadzety`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Gry`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Instrumenty`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Kody_doladowania`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Kolekcje`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Komputery`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Konsole_automaty`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Ksiazki_komiksy`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Kursy_online`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Motoryzacja`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Muzyka`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Odziez_obuwie_dodatki`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Ogloszenia_uslugi`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Pozostale`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Produkty_inwestycyjne`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Przemysl`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.RTV_AGD`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Rekodzielo`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Sport_turystyka`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Sprzet_estradowy_studyjny`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Supermarket`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Sztuka`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Telefony_akcesoria`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Uroda`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Zdrowie`
UNION ALL
SELECT * FROM `allegro-20172020.Kategorie.Zywe_zwierzeta`

--Rounding up Wartosc column
UPDATE `allegro-20172020.Kategorie.Combined`
SET Wartosc = ROUND(Wartosc, 2)
WHERE 1=1

--Changing columns names
ALTER TABLE `allegro-20172020.Kategorie.Combined`
RENAME COLUMN Dzien TO Date,
RENAME COLUMN Sztuki TO Units,
RENAME COLUMN Wartosc TO Value,
RENAME COLUMN Koszyki TO Carts,
RENAME COLUMN Kategoria TO Category

--Adding columns
ALTER TABLE `allegro-20172020.Kategorie.Combined`
ADD COLUMN Avg_price FLOAT64;
ALTER TABLE `allegro-20172020.Kategorie.Combined`
ADD COLUMN Avg_cart_value FLOAT64;

--Calculating averages
UPDATE `allegro-20172020.Kategorie.Combined`
SET Avg_price = IF(Units <> 0, Value / Units, 0)
WHERE 1=1;
UPDATE `allegro-20172020.Kategorie.Combined`
SET Avg_cart_value = IF(Carts <> 0, Value / Carts, 0)
WHERE 1=1;

--Rounding up Avg_price and Avg_cart_value columns
UPDATE `allegro-20172020.Kategorie.Combined`
SET Avg_price = ROUND(Avg_price, 2)
WHERE 1=1
UPDATE `allegro-20172020.Kategorie.Combined`
SET Avg_cart_value = ROUND(Avg_cart_value, 2)
WHERE 1=1
