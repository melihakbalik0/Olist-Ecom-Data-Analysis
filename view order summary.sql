/* ANALYTICAL ABSTRACTION & AUTOMATION
   Objective: Creating a unified "Order Summary" View to simplify data access.
   Benefit: Encapsulates complex joins and pre-calculates business metrics like delivery time.
*/

CREATE OR REPLACE VIEW VW_Order_Summary AS
SELECT 
    -- Order Metadata
    o.order_id, 
    o.order_status, 
    o.order_purchase_timestamp,
    
    -- Customer Identity
    c.customer_unique_id, 
    c.customer_city,
    
    -- Product & Category Context
    oi.product_id, 
    p.product_category_name,
    
    -- Financial Transaction Details
    pay.payment_value, 
    pay.payment_type,
    
    -- Business Logic: Calculating Delivery Lead Time (Actual vs. Purchase)
    DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp) AS Delivery_Time

FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
JOIN Order_Payments pay ON o.order_id = pay.order_id;

--  Testing the View integrity
SELECT * FROM VW_Order_Summary LIMIT 10;