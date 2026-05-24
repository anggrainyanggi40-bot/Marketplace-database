-- CREATE TABLE PRODUCT 
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_name VARCHAR(150) NOT NULL,
    Detail_product TEXT NOT NULL,
    Seller_id INT NOT NULL,
    Product_Category_ID INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),
    File_size VARCHAR(20) NOT NULL,
    File_url VARCHAR(255) NOT NULL,

    CONSTRAINT fk_product_seller
        FOREIGN KEY (Seller_id)
        REFERENCES Users(User_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_product_category
        FOREIGN KEY (Product_Category_ID)
        REFERENCES Product_Category(Product_Category_ID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);