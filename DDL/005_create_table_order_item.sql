-- CREATE TABLE ORDER ITEM 
CREATE TABLE Order_Item (
    Order_item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT NOT NULL,
    Produk_ID INT NOT NULL,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    Price DECIMAL(10,2) NOT NULL CHECK (Price >= 0),

    CONSTRAINT fk_orderitem_order
        FOREIGN KEY (Order_ID)
        REFERENCES Orders(Order_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_orderitem_product
        FOREIGN KEY (Produk_ID)
        REFERENCES Product(Product_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);