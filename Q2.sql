-- Identify the most common pizza quantity ordered
SELECT 
    quantity, COUNT(order_details_id) AS Quantity_Count
FROM
    order_details
GROUP BY quantity;
