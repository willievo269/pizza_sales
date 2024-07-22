# SQL & POWER BI PROJECT: PIZZA SALES ANALYSIS



![](https://media.licdn.com/dms/image/D5612AQHKbjDnZ0Na8A/article-cover_image-shrink_720_1280/0/1694736293921?e=2147483647&v=beta&t=rz3dde0PSX9wgKHOxcPe7zGkpjTQxPicgnvXpNMUKd8)
---
This project analyzes a year's worth of pizza outlet sales data stored in 4 CSV files using Microsoft SQL Server 2022 and Power BI. It uses joins and subqueries to uncover insights to help the outlet increase sales.

**_Disclaimer_**: _All datasets and reports do not represent any company, institution or country, but just a dummy dataset to demonstrate capabilities of Power BI._

## Table of Content
- [Project Overview](#project-overview)
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

