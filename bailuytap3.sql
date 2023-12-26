--baitap1--
select name
from students
where marks > 75
order by right (name,3),
id
--baitap2--
select user_id, 
concat( upper(left(name,1)) , lower( right(name, length(name)-1 ))) as name
from users
--baitap3--
SELECT manufacturer,
'$' || ROUND(sum( total_sales)/1000000,0) || ' ' || 'million' AS sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY 
sum( total_sales) DESC,
manufacturer 
--baitap4--
SELECT  product_id,
round( AVG(stars),2) as avg_stars,
EXTRACT( month from submit_date ) as mth
FROM reviews
GROUP BY EXTRACT( month from submit_date ),product_id
ORDER BY EXTRACT( month from submit_date ), product_id
--baitap5--
