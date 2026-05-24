-- CREATE TABLE PAYMENT
CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT NOT NULL,
    Payment_method ENUM('Bank Transfer', 'E-Wallet', 'Credit Card') NOT NULL,
    Payment_date DATE NOT NULL,
    Amount DECIMAL(10,2) NOT NULL CHECK (Amount >= 0),
    Payment_status ENUM('paid', 'pending', 'failed') NOT NULL,

    CONSTRAINT fk_payment_order
        FOREIGN KEY (Order_ID)
        REFERENCES Orders(Order_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
); 