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


SELECT 
    SUM(t.amount_paid) AS 'Total Sales'
FROM 
    Transaction t
WHERE 
    t.transaction_date BETWEEN '2024-08-01' AND '2024-09-21'; 




## Total Sales

| **Total Sales** |
|-----------------|
| $2,580.00       |

----------------------


SELECT 
    u.user_id AS 'Customer ID',
    u.name AS 'Customer Name',
    COUNT(t.transaction_id) AS 'Number of Purchases'
FROM 
    Transaction t
JOIN 
    User u ON t.buyer_id = u.user_id
GROUP BY 
    u.user_id, u.name
ORDER BY 
    COUNT(t.transaction_id) DESC;


## Most Active Customers

| **Customer ID** | **Customer Name** | **Number of Purchases** |
|-----------------|--------------------|--------------------------|
| 2               | Alice Johnson      | 1                        |
| 3               | Eve Davis          | 1                        |
| 4               | Bob Smith          | 1                        |
| 5               | Carol Williams     | 1                        |
| 6               | David Brown        | 1                        |



---------------------



SELECT 
    a.antique_id AS 'ID',
    a.description AS 'Name',
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
    t.transaction_date BETWEEN '2024-08-01' AND '2024-09-30'; 




## Sales History

| **ID** | **Name**             | **Date**               | **Price** | **Seller**                | **Buyer**                |
|--------|----------------------|------------------------|-----------|---------------------------|--------------------------|
| 2      | Old grandfather clock| 2024-08-01 18:01:26    | $1200.00  | Alice Johnson (Seller)   | Alice Johnson (Buyer)   |
| 5      | Rare sculpture       | 2024-09-17 18:01:29    | $850.00   | Alice Johnson (Seller)   | Eve Davis (Buyer)       |
| 7      | Vintage lamp         | 2024-09-20 18:01:32    | $180.00   | Bob Smith (Seller)       | Bob Smith (Buyer)       |
| 8      | Antique vase         | 2024-09-17 18:01:35    | $350.00   | Carol Williams (Seller)  | Carol Williams (Buyer)  |

----------



SELECT 
    c.category_name AS 'Category',
    COUNT(a.antique_id) AS 'Number of Items'
FROM 
    Antique a
JOIN 
    Category c ON a.category_id = c.category_id
WHERE 
    a.status = 'for sale'
GROUP BY 
    c.category_name;




## Inventory by Category

| **Category** | **Number of Items** |
|--------------|----------------------|
| Jewelry      | 3                    |
| Furniture    | 1                    |

--------
