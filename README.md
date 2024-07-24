# SQL & POWER BI PROJECT: PIZZA SALES ANALYSIS



![](https://media.licdn.com/dms/image/D5612AQHKbjDnZ0Na8A/article-cover_image-shrink_720_1280/0/1694736293921?e=2147483647&v=beta&t=rz3dde0PSX9wgKHOxcPe7zGkpjTQxPicgnvXpNMUKd8)
---
This project analyzes a year's worth of pizza outlet sales data stored in 4 CSV files using Microsoft SQL Server 2022 and Power BI. It uses joins and subqueries to uncover insights to help the outlet increase sales.

**_Disclaimer_**: _All datasets and reports do not represent any company, institution or country, but just a dummy dataset to demonstrate capabilities of Power BI._

## Table of Content
- Project Overview
- CSV Files
- Questions
- Answers

## CSV Files
- [order_details.csv](https://github.com/user-attachments/files/16329671/order_details.csv)
- [orders.csv](https://github.com/user-attachments/files/16329674/orders.csv)
- [pizza_types.csv](https://github.com/user-attachments/files/16329678/pizza_types.csv)
- [pizzas.csv](https://github.com/user-attachments/files/16329680/pizzas.csv)

## Database Schema
The database consists of the following tables:

**1. Pizza**
- pizza_id: Unique identifier for each pizza
- type: Type of pizza
- size: Size of the pizza
- price: Price of the pizza

**2. Pizza Type**
- pizza_type_id: Unique identifier for each pizza type
- name: Name of the pizza type
- category: Category of the pizza (e.g., vegetarian, non-vegetarian)
- ingredients: Ingredients of the pizza type
  
**3. Orders**
- order_id: Unique identifier for each order
- order_date: Date when the order was placed
- order_time: Time when the order was placed

**4. Order Details**
- order_details_id: Unique identifier for each order detail
- order_id: Unique identifier for each order (foreign key)
- pizza_id: Unique identifier for each pizza (foreign key)
- quantity: Quantity of the pizza ordered

## Problem Statements
### KPIs 
1. Total Revenue (How much money did we make this year?)
2. Average Order Value
3. Total Pizzas Sold
4. Total Orders
5. Average Pizzas per Order

### QUESTIONS TO ANSWER
1. Daily Trends for Total Orders
2. Hourly Trend for Total Orders
3. Percentage of Sales by Pizza Category
4. Percentage of Sales by Pizza Size
5. Total Pizzas Sold by Pizza Category
6. Top 5 Best Sellers by Total Pizzas Sold
7. Bottom 5 Worst Sellers by Total Pizzas Sold

## Results
### KPIs
1. The total revenue for the year was $817,860.

2. The average order value was $38.31.

3. A total of 50,000 pizzas were sold.

4. A total of 21,000 orders were placed.

5. The average number of pizzas per order was 2.

ANSWER TO QUESTIONS
1. The busiest days were Thursday (3239 orders), Friday (3538 orders), and Saturday (3158 orders). The highest sales were recorded on Friday.

2. Customers typically placed the most orders between 12pm to 1pm and 5pm to 7pm.

3. Classic pizza had the highest percentage of sales (26.91%), followed by Supreme (25.46%), Chicken (23.96%), and Veggie (23.68%).

4. Large pizzas had the highest sales (45.89%), followed by medium (30.49%), and then small (21.77%). XL and XXL pizzas only accounted for 1.72% and 0.12% of sales, respectively.

5. Classic Pizza sold the most (14,888 pizzas), followed by Supreme (11,987 pizzas), Veggie (11,649 pizzas), and Chicken (11,050 pizzas).

6. The top 5 best sellers were the Classic Deluxe (2453 pizzas), Barbecue Chicken (2432 pizzas), Hawaiian (2422 pizzas), Peperoni (2418 pizzas), and Thai Chicken (2371 pizzas).

7. The bottom 5 worst sellers were Brie Carre (490 pizzas), Mediterranean (934 pizzas), Calabrese (937 pizzas), Spinach Supreme (950 pizzas), and Soppressata (961 pizzas).

