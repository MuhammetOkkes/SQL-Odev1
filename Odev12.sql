--1.film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*)
FROM film
WHERE length >(SELECT AVG(length) FROM film)

--2.film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(*)
FROM film 
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film)

--3.film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT title,rental_rate,replacement_cost
FROM film
WHERE rental_rate =(select MIN(rental_rate) from film) and replacement_cost =(select min (replacement_cost) from film)

--4.payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT C.first_name,C.last_name,P.customer_id, COUNT (*) AS "Siparis Sayisi" 
FROM payment P INNER JOIN customer C ON P.customer_id = C.customer_id
GROUP BY C.first_name,C.last_name,P.customer_id
ORDER BY COUNT(*) DESC
