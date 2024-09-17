CREATE TABLE Role (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL
);

CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES Role(role_id)
);

CREATE TABLE User_Activity (
    activity_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    action VARCHAR(255) NOT NULL,
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Access_Log (
    access_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE Antique (
    antique_id INT AUTO_INCREMENT PRIMARY KEY,
    seller_id INT,
    category_id INT,
    description TEXT,
    condit VARCHAR(100),
    price DECIMAL(10, 2),
    status ENUM('for sale', 'sold', 'retired') DEFAULT 'for sale',
    FOREIGN KEY (seller_id) REFERENCES User(user_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE Antique_Photo (
    photo_id INT AUTO_INCREMENT PRIMARY KEY,
    antique_id INT,
    photo_url VARCHAR(255) NOT NULL,
    FOREIGN KEY (antique_id) REFERENCES Antique(antique_id)
);

CREATE TABLE Transaction (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    buyer_id INT,
    seller_id INT,
    antique_id INT,
    transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    payment_status ENUM('pending', 'completed') DEFAULT 'pending',
    delivery_status ENUM('pending', 'shipped', 'delivered') DEFAULT 'pending',
    amount_paid DECIMAL(10, 2),
    payment_method VARCHAR(100),
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (buyer_id) REFERENCES User(user_id),
    FOREIGN KEY (seller_id) REFERENCES User(user_id),
    FOREIGN KEY (antique_id) REFERENCES Antique(antique_id)
);
