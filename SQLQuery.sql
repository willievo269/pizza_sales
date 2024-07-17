use pizza_sales

select * from pizzas

-- I. KPIs
-- 1) Total Revenue (How much money did we make this year?)
-- C1
select sum(pizzas.price*order_details.quantity) as total_revenue
from pizzas
join order_details
on pizzas.pizza_id = order_details.pizza_id

--C2
SELECT 
 round(SUM(quantity * price), 2)
FROM order_details o
 JOIN pizzas p 
 ON o.pizza_id = p.pizza_id

-- 2) Average Order Value
select sum(price*quantity)/count(distinct(order_id)) as average_order_value
from order_details AS o
 JOIN pizzas AS p 
 ON o.pizza_id = p.pizza_id

 select *from pizza_types
 select * from pizzas
 select * from order_details
  select * from orders

  --3) Total pizzas sold
  select sum(quantity) from order_details

  --4) Total orders
  SELECT
  COUNT(DISTINCT order_id) AS [Total Orders]
FROM
  order_details

  select count(order_id) from orders

  --5) Average Pizza per Order: Quantity sold/order IDs
  select sum(quantity)/COUNT(DISTINCT order_id) from order_details

  SELECT
  ROUND(SUM(quantity)/COUNT(DISTINCT order_id),2) AS [Average Pizzas Per Order]
FROM
  order_details

--QUESTIONS TO ANSWER
--1) Daily trend for total orders
SELECT 
 FORMAT(date, 'MMMM') AS DayOfWeek
 ,COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY FORMAT(date, 'MMMM')
ORDER BY total_orders DESC

SELECT 
 DATEPART(d, date) AS [Hour]
 ,COUNT(DISTINCT order_id) AS total_orders

FROM orders GROUP BY DATEPART(d, date)
ORDER BY total_orders DESC


--2) Hourly TrendS for Total Orders
SELECT 
    DATEPART(HOUR, time) AS [Hour]
	,COUNT(DISTINCT order_id) AS Total_Orders
FROM orders
GROUP BY DATEPART(HOUR, time)
ORDER BY [Hour]

--3) Percentage of Sales by Pizza Category
--a: calculate total revenue per category
--% sales calculated as (a:/total revenue) * 100

SELECT 
    category,
    ROUND(SUM(quantity * price), 2) AS revenue,
    ROUND(SUM(quantity * price) * 100.0 / 
	(SELECT SUM(quantity * price) FROM pizzas AS p2 
	JOIN order_details AS od2 ON 
	od2.pizza_id = p2.pizza_id), 2) AS percentage_of_sales
FROM 
    pizzas AS p
JOIN 
    pizza_types AS pt ON p.pizza_type_id = pt.pizza_type_id
JOIN 
    order_details AS od ON od.pizza_id = p.pizza_id
	GROUP BY 
    category;

	select *from pizza_types
 select * from pizzas
 select * from order_details
  select * from orders

-- 4) Percentage of Sales by Pizza Size
SELECT 
    size
    ,ROUND(SUM(quantity * price), 2) AS revenue
    ,ROUND(SUM(quantity * price) * 100.0 / (SELECT SUM(quantity * price) FROM pizzas AS p2 JOIN order_details AS od2 ON od2.pizza_id = p2.pizza_id), 2) AS percentage_of_sales
FROM 
    pizzas AS p
JOIN 
    order_details AS od ON od.pizza_id = p.pizza_id
GROUP BY 
    size;

-- 5) Total Pizzas Sold by Pizza Category
SELECT
 category
 ,SUM(quantity) AS quantity_sold
FROM 
    pizzas AS p
JOIN 
    pizza_types AS pt ON p.pizza_type_id = pt.pizza_type_id
JOIN 
    order_details AS od ON od.pizza_id = p.pizza_id
GROUP BY category;

-- 6) Top 5 Best Sellers by Total Pizzas Sold
SELECT top 5
  name
  ,SUM(quantity) AS total_quantity_sold
FROM 
    pizzas AS p
JOIN 
    pizza_types AS pt ON p.pizza_type_id = pt.pizza_type_id
JOIN 
    order_details AS od ON od.pizza_id = p.pizza_id
GROUP BY name
ORDER BY total_quantity_sold DESC;

-- 7) Bottom 5 Best Sellers by Total Pizzas Sold
SELECT top 5
  name
  ,SUM(quantity) AS total_quantity_sold
FROM 
    pizzas AS p
JOIN 
    pizza_types AS pt ON p.pizza_type_id = pt.pizza_type_id
JOIN 
    order_details AS od ON od.pizza_id = p.pizza_id
GROUP BY name
ORDER BY total_quantity_sold ASC;