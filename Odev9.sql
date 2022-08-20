--1.city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT C.city,Y.country
FROM city C INNER JOIN country Y ON C.country_id = Y.country_id;

--2.customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT P.payment_id,C.first_name,C.last_name
FROM customer C INNER JOIN payment P ON C.customer_id = P.customer_id;

--3.customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT R.rental_id,C.first_name,C.last_name
FROM customer C INNER JOIN rental R ON C.customer_id = R.customer_id;

