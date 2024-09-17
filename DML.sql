-- Insertar roles
INSERT INTO Role (role_name) VALUES ('Seller');
INSERT INTO Role (role_name) VALUES ('Buyer');
INSERT INTO Role (role_name) VALUES ('Admin');


-- Insertar usuarios
INSERT INTO User (name, email, password, role_id) VALUES ('Alice Johnson', 'alice.johnson@example.com', 'password123', 2);
INSERT INTO User (name, email, password, role_id) VALUES ('Bob Smith', 'bob.smith@example.com', 'password123', 1);
INSERT INTO User (name, email, password, role_id) VALUES ('Carol Williams', 'carol.williams@example.com', 'password123', 2);
INSERT INTO User (name, email, password, role_id) VALUES ('David Brown', 'david.brown@example.com', 'password123', 1);
INSERT INTO User (name, email, password, role_id) VALUES ('Eve Davis', 'eve.davis@example.com', 'password123', 2);


-- Insertar categorías
INSERT INTO Category (category_name) VALUES ('Furniture');
INSERT INTO Category (category_name) VALUES ('Art');
INSERT INTO Category (category_name) VALUES ('Jewelry');

-- Insertar antigüedades
INSERT INTO Antique (seller_id, category_id, description, condit, price, status) VALUES (2, 1, 'Vintage wooden chair', 'Good', 150.00, 'for sale');
INSERT INTO Antique (seller_id, category_id, description, condit, price, status) VALUES (4, 2, 'Antique oil painting', 'Excellent', 1200.00, 'for sale');
INSERT INTO Antique (seller_id, category_id, description, condit, price, status) VALUES (5, 3, 'Gold ring with emerald', 'Fair', 450.00, 'for sale');
INSERT INTO Antique (seller_id, category_id, description, condit, price, status) VALUES (3, 1, 'Antique writing desk', 'Restored', 700.00, 'for sale');
INSERT INTO Antique (seller_id, category_id, description, condit, price, status) VALUES (2, 2, 'Rare sculpture', 'Good', 850.00, 'sold');
INSERT INTO Antique (seller_id, category_id, description, condit, price, status) VALUES (1, 3, 'Silver necklace', 'New', 300.00, 'retired');
INSERT INTO Antique (seller_id, category_id, description, condit, price, status) VALUES (4, 1, 'Vintage lamp', 'Fair', 180.00, 'for sale');
INSERT INTO Antique (seller_id, category_id, description, condit, price, status) VALUES (5, 2, 'Antique vase', 'Good', 350.00, 'for sale');
INSERT INTO Antique (seller_id, category_id, description, condit, price, status) VALUES (3, 3, 'Diamond bracelet', 'Excellent', 2000.00, 'sold');
INSERT INTO Antique (seller_id, category_id, description, condit, price, status) VALUES (2, 1, 'Old grandfather clock', 'Excellent', 1200.00, 'retired');


-- Insertar fotos de antigüedades
INSERT INTO Antique_Photo (antique_id, photo_url) VALUES (1, 'http://example.com/photos/antique1.jpg');
INSERT INTO Antique_Photo (antique_id, photo_url) VALUES (2, 'http://example.com/photos/antique2.jpg');
INSERT INTO Antique_Photo (antique_id, photo_url) VALUES (3, 'http://example.com/photos/antique3.jpg');
INSERT INTO Antique_Photo (antique_id, photo_url) VALUES (4, 'http://example.com/photos/antique4.jpg');
INSERT INTO Antique_Photo (antique_id, photo_url) VALUES (5, 'http://example.com/photos/antique5.jpg');
INSERT INTO Antique_Photo (antique_id, photo_url) VALUES (6, 'http://example.com/photos/antique6.jpg');
INSERT INTO Antique_Photo (antique_id, photo_url) VALUES (7, 'http://example.com/photos/antique7.jpg');
INSERT INTO Antique_Photo (antique_id, photo_url) VALUES (8, 'http://example.com/photos/antique8.jpg');
INSERT INTO Antique_Photo (antique_id, photo_url) VALUES (9, 'http://example.com/photos/antique9.jpg');
INSERT INTO Antique_Photo (antique_id, photo_url) VALUES (10, 'http://example.com/photos/antique10.jpg');

-- Insertar transacciones
INSERT INTO Transaction (buyer_id, seller_id, antique_id, payment_status, delivery_status, amount_paid, payment_method) VALUES (2, 2, 2, 'completed', 'delivered', 1200.00, 'PayPal');
INSERT INTO Transaction (buyer_id, seller_id, antique_id, payment_status, delivery_status, amount_paid, payment_method) VALUES (3, 2, 5, 'completed', 'shipped', 850.00, 'Bank Transfer');
INSERT INTO Transaction (buyer_id, seller_id, antique_id, payment_status, delivery_status, amount_paid, payment_method) VALUES (4, 4, 7, 'pending', 'pending', 180.00, 'Credit Card');
INSERT INTO Transaction (buyer_id, seller_id, antique_id, payment_status, delivery_status, amount_paid, payment_method) VALUES (5, 5, 8, 'completed', 'shipped', 350.00, 'PayPal');
INSERT INTO Transaction (buyer_id, seller_id, antique_id, payment_status, delivery_status, amount_paid, payment_method) VALUES (6, 2, 1, 'completed', 'delivered', 150.00, 'Credit Card');
