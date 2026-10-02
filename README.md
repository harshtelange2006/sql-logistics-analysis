# Supply Chain Delay Analysis (SQL)

## Problem Statement
Late deliveries can impact customer satisfaction, profitability, and market performance.  
The goal of this project is to analyze order and sales data to identify where delays occur most often, which categories and regions are affected, and how late deliveries influence profit and cancellations.

## Business Questions Solved
1. Which shipping mode is late most often?  
2. Which regions have the biggest delay vs promise?  
3. Which product categories are late most?  
4. Do late orders lose profit or get cancelled more?  
5. Which markets have high volume and high delay?  

## Overview
Analyzed order and sales data to identify shipping delays, regional performance issues, product category lateness, and profit/cancellation risks.

## Dataset
- Source: kaggle
- Tables: Orders, Sales, Product, Categories
- Size: ~180k rows across Y tables

## Tools Used
- SQL (MySQL)

## What I Did
- Connected and explored the dataset containing Orders, Sales, Product, and Categories tables.
- Wrote SQL queries to answer 5 business questions:
  - Identified which shipping mode is most late.
  - Analyzed regions with the biggest delivery delays.
  - Found product categories with the highest late deliveries.
  - Compared profit and cancellation rates for late vs on-time orders.
  - Measured markets with both high order volume and high delays.
- Applied SQL techniques:
  - Joins across multiple tables (Orders, Sales, Product, Categories).
  - Aggregations (COUNT, SUM, AVG).
  - CASE statements for conditional logic.
  - Grouping and ordering for ranking results.
- Organized queries with comments for readability.


## Key Findings
- Air shipping mode had the highest delay frequency.
- Region X showed the largest gap between promised vs actual delivery.
- Category Y had the most late deliveries.
- Late orders showed lower average profit and higher cancellation rates.
- Market Z had both high order volume and high delays.

## Files
- `queries.sql` — all SQL queries
- `schema.sql` — (optional) table creation scripts
- `/outputs` — (optional) screenshots or CSVs of query results
- `insights.md` — (optional) short notes on findings

## Notes
Some queries were refined with the help of AI tools, but all results were tested and validated manually.

