Beginner Level----------------------------------
q1. who is the senior most employee in job title?
select * From employee
order by title desc
limit 1
q2. which countries have the most invoices?
select count(*) as count,billing_country from invoice
group by billing_country
order by count desc
q3. what are three values of total invoices?
select total from invoice
order by total desc
limit 3
ans4
select sum(total) as invoice_total , billing_city 
from invoice
group by billing_city
order by invoice_total asc
Roughwork
select billing_city , total from invoice
order by billing_city
q5. Best customer spent most money ?
select customer.customer_id,customer.first_name, customer.last_name,SUM(invoice.total) as total
from customer 
Join invoice on customer.customer_id=invoice.customer_id
group by customer.customer_id
order by total desc
limit 1
Moderate level--------------------
q1. return email, fistname, lastname genre of rock music listeners Ordered email
Select distinct email, first_name, last_name from customer
Join invoice on customer.customer_id=invoice.customer_id
Join invoice_line on invoice.invoice_id=invoice_line.invoice_id
where track_id in(
select track_id from track
join genre on track.genre_id=genre.genre_id
where genre.name Like'Rock'
)
order by email ;

q2.artist who wrote most rock music and return artist name and total track count of top 10 rock bands

select * from track

