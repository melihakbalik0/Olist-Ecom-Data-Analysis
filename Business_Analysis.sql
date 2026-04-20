	/* STRATEGIC BUSINESS INSIGHTS & ANALYTICS
	   Translating raw data into actionable business intelligence.
	   Focus Areas: Revenue performance, logistics efficiency, and financial trends.
	*/

	-- ANALYSIS 1: Revenue Leaders (Top 10 Products by Total Sales)
	/* Goal: Identify the main revenue drivers to prioritize inventory and marketing. */
	SELECT 
		product_id, 
		product_category_name, 
		SUM(payment_value) AS total_revenue,
		COUNT(order_id) AS total_sales
	FROM VW_Order_Summary
	GROUP BY product_id, product_category_name
	ORDER BY total_revenue DESC 
	LIMIT 10;


	-- ANALYSIS 2: Underperforming Products (Bottom 10 by Revenue)
	/* Goal: Identify "dead stock" that occupies warehouse space without generating profit. */
	SELECT 
		product_id, 
		product_category_name, 
		SUM(payment_value) AS total_revenue
	FROM VW_Order_Summary
	GROUP BY product_id, product_category_name
	ORDER BY total_revenue ASC 
	LIMIT 10;


	-- ANALYSIS 3: Logistics Bottleneck Analysis (Slowest 10 Cities)
	/* Goal: Detect regional delivery delays to optimize supply chain routes. 
	   Criteria: Cities with more than 10 orders to ensure statistical relevance. */
	SELECT 
		customer_city, 
		ROUND(AVG(Delivery_Time), 1) AS avg_delivery_days,
		COUNT(order_id) AS total_orders
	FROM VW_Order_Summary
	WHERE Delivery_Time IS NOT NULL
	GROUP BY customer_city
	HAVING total_orders > 10
	ORDER BY avg_delivery_days DESC 
	LIMIT 10;


	-- ANALYSIS 4: Payment Method Preferences (Financial Stream)
	/* Goal: Understand customer behavior regarding credit card usage vs. local methods.
	   Insight: Critical for cash flow management and payment gateway negotiation. */
	SELECT 
		payment_type, 
		COUNT(order_id) AS transaction_count,
		ROUND(SUM(payment_value), 2) AS total_payment_value,
		ROUND(AVG(payment_value), 2) AS avg_order_value
	FROM VW_Order_Summary
	GROUP BY payment_type
	ORDER BY total_payment_value DESC;



	-- RFM Analysis 

	SELECT 
		customer_unique_id,
		
		-- RECENCY: Difference between the last overall order date in the DB and customer's last order
		DATEDIFF(
			(SELECT MAX(order_purchase_timestamp) FROM VW_Order_Summary), 
			MAX(order_purchase_timestamp)
		) AS Recency_Days,
		
		-- FREQUENCY: Count of distinct orders to identify loyal buyers
		COUNT(DISTINCT order_id) AS Frequency,
		
		-- MONETARY: Total revenue contributed by the customer
		ROUND(SUM(payment_value), 2) AS Monetary_Value

	FROM VW_Order_Summary
	GROUP BY customer_unique_id

	-- Ordering by Monetary to see the most valuable customers at the top
	ORDER BY Monetary_Value DESC
	LIMIT 1000;