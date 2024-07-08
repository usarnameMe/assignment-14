CREATE DATABASE mydb;
USE mydb;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

INSERT INTO users (username, email, password) VALUES 
('john_doe', 'john@example.com', 'password123'),
('gvn_upl', 'gvn@example.com', 'password456');

INSERT INTO categories (name) VALUES 
('Electronics'),
('Books'),
('Clothing');

SELECT * FROM users;
SELECT name FROM categories;

UPDATE users SET email = 'new_john@example.com' WHERE id = 1;
UPDATE categories SET name = 'Literature' WHERE category_id = 2;

DELETE FROM users WHERE id = 2;
DELETE FROM categories WHERE category_id = 3;

SELECT * FROM users;
SELECT * FROM categories;

