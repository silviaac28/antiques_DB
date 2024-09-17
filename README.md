# antiques_DB

SELECT 
    a.antique_id AS 'ID',
    a.description AS 'Name',
    c.category_name AS 'Category',
    a.price AS 'Price',
    a.condit AS 'Condition'
FROM 
    Antique a
JOIN 
    Category c ON a.category_id = c.category_id
WHERE 
    a.status = 'for sale';



| **ID** | **Name**                | **Category** | **Price** | **Condition** |
|--------|-------------------------|--------------|-----------|---------------|
| 1      | Vintage wooden chair    | Jewelry       | $150.00   | Good          |
| 4      | Antique writing desk    | Jewelry       | $700.00   | Restored      |
| 7      | Vintage lamp            | Jewelry       | $180.00   | Fair          |
| 8      | Antique vase            | Jewelry       | $350.00   | Good          |


----------

SELECT 
    a.antique_id AS 'ID',
    a.description AS 'Name',
    c.category_name AS 'Category',
    a.price AS 'Price',
    a.condit AS 'Condition'
FROM 
    Antique a
JOIN 
    Category c ON a.category_id = c.category_id
WHERE 
    c.category_name = 'Furniture' 
    AND a.price BETWEEN 500 AND 2000;



## Available Antique for Sale

| **ID** | **Name**            | **Category** | **Price** | **Condition** |
|--------|---------------------|--------------|-----------|---------------|
| 5      | Rare sculpture      | Furniture     | $850.00   | Good          |

---------

SELECT 
    t.transaction_id AS 'Transaction ID',
    a.description AS 'Antique',
    t.transaction_date AS 'Date',
    t.amount_paid AS 'Price',
    CONCAT(s.name, ' (Seller)') AS 'Seller',
    CONCAT(b.name, ' (Buyer)') AS 'Buyer'
FROM 
    Transaction t
JOIN 
    Antique a ON t.antique_id = a.antique_id
JOIN 
    User s ON t.seller_id = s.user_id
JOIN 
    User b ON t.buyer_id = b.user_id
WHERE 
    t.seller_id = 2; 


## Transaction History

| **Transaction ID** | **Antique**              | **Date**               | **Price** | **Seller**                   | **Buyer**                   |
|--------------------|--------------------------|------------------------|-----------|------------------------------|-----------------------------|
| 9                  | Old grandfather clock    | 2024-09-17 18:01:26    | $1200.00  | Alice Johnson (Seller)      | Alice Johnson (Buyer)      |
| 10                 | Rare sculpture           | 2024-09-17 18:01:29    | $850.00   | Alice Johnson (Seller)      | Eve Davis (Buyer)          |
| 14                 | Vintage wooden chair     | 2024-09-17 18:02:31    | $150.00   | Alice Johnson (Seller)      | David Brown (Buyer)       |

--------------------
