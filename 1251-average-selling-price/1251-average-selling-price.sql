SELECT 
    product_id, 
    ifnull(ROUND(SUM(price) / SUM(units), 2), 0) AS average_price

FROM (
        SELECT 
            p.product_id AS product_id, 
            units, 
            price * units AS price
        
        FROM Prices p 
        
        LEFT JOIN UnitsSold u
             ON p.product_id = u.product_id 
             AND purchase_date BETWEEN start_date AND end_date
    ) AS product_sales

GROUP BY product_id;

