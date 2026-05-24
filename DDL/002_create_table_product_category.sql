-- CREATE TABEL Product Category

CREATE TABLE Product_Category (
    Product_Category_ID INT PRIMARY KEY AUTO_INCREMENT,
    Category_name VARCHAR(100) NOT NULL UNIQUE
);