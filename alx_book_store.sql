 -- 1. Create the database
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- 2. Create Authors table
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- 3. Create Books table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price DOUBLE,
    publication_date DATE,
    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- 4. Create Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);

-- 5. Create Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- 6. Create Order_Details table
CREATE TABLE Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE,
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
