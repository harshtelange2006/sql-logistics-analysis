# Supply Chain Late Delivery Analysis

## Business Problem
Where are late deliveries concentrated, and how are they associated with
sales and profit?
Late deliveries can hurt customer experience and business performance.
The objective of this analysis is to identify which shipping modes, regions,
markets, and product categories have the highest volume and rate of late
deliveries.

## Dataset
Used the DataCo Supply Chain dataset containing order, sales, product,
and category information.

## Tools
- MySQL
- SQL
- DataCo Supply Chain Dataset (kaggle)

## Approach
1. Joined data across 4 tables: orders, sales, product, and categories.
2. Calculated total orders, late orders, and late-delivery rates.
3. Analyzed late deliveries by shipping mode, region, category, and market.
4. Compared late and on-time orders based on sales and profit.
5. Converted findings into business recommendations.

## Key Findings

### Shipping Mode
- Standard Class has the highest number of late orders of 41k approx.
- First Class has the highest late-delivery rate 95.3%.

### Region
- Central America has the highest number of late orders of 5.1k approx.
- Central Africa has the highest late-delivery rate 58.0%.

### Market
- LATAM has the highest number of late orders of 28k approx.
- Europe has the highest late-delivery rate 55.2%.

### Profit Impact
- Late orders generated 0.4% lower sales than on-time orders.
- Late orders generated 3.8% lower profit than on-time orders.


## Business Recommendations
- Audit First Class delivery performance and carrier-level performance.
- Prioritize Standard Class and Europe because they contribute the largest
  volume of late orders.
- Investigate carrier and route performance in LATAM and Central Africa,
  where late-delivery rates are highest.

## Author
Harsh Telange 
linkedin.com/in/harsh-telange2006
