--1.city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
SELECT C.city,CT.country
FROM city C LEFT JOIN country CT ON C.country_id = CT.country_id;  

--2.customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
SELECT P.payment_id,C.first_name,C.last_name
FROM customer C RIGHT JOIN payment P ON P.customer_id = C.customer_id


--3.customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
SELECT R.rental_id,C.first_name,C.last_name
FROM customer C FULL JOIN rental R ON R.customer_id = C.customer_id

