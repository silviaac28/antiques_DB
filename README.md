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

