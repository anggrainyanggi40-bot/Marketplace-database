-- CREATE TABLE ORDERS
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Order_status ENUM('pending', 'completed', 'cancelled') NOT NULL,
    Order_date DATE NOT NULL,

    CONSTRAINT fk_orders_user
        FOREIGN KEY (User_ID)
        REFERENCES Users(User_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
