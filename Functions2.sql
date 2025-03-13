SELECT * FROM sh.sales;
SELECT COUNT(*) AS total_sales_transactions
FROM sh.sales;
SELECT DISTINCT prod_id  
FROM sh.sales; 
SELECT * FROM SH.SALES WHERE QUANTITY_SOLD >5; 
SELECT AVG(amount_sold) AS avg_sale_amount_per_transaction
FROM sh.sales;
  
SELECT prod_id, COUNT(*) AS transaction_count  
FROM sh.sales  
GROUP BY prod_id  
ORDER BY transaction_count DESC;

SELECT COUNT(DISTINCT cust_id) AS unique_customers  
FROM sh.sales;


SELECT * FROM SH. SALES WHERE TIME_ID >=TRUNC(SYSDATE)-30

SELECT EXTRACT(YEAR FROM time_id) AS sales_year  
FROM sh.sales

SELECT EXTRACT(MONTH FROM time_id) AS sales_month  
FROM sh.sales;

SELECT TO_CHAR(time_id, 'MM') AS sales_month  
FROM sh.sales;

SELECT MIN(time_id) AS first_transaction_date,  MAX(time_id) AS last_transaction_date  
FROM sh.sales;

SELECT * FROM SH.SALES WHERE time_id = TO_DATE('2024-03-01', 'YYYY-MM-DD')
