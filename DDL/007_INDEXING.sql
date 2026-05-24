-- INDEXING TABLE USERS
-- Untuk login / pencarian email
CREATE UNIQUE INDEX idx_users_email
ON users(Email);

-- Untuk pencarian nomor hp
CREATE UNIQUE INDEX idx_users_phone
ON users(Phone_number);

-- INDEXING TABLE PRODUCT
-- Untuk relasi seller
CREATE INDEX idx_product_seller
ON Product(Seller_id);

-- Untuk relasi kategori
CREATE INDEX idx_product_category
ON Product(Product_Category_ID);

-- Untuk search nama produk
CREATE INDEX idx_product_name
ON Product(Product_name);

-- Untuk filter harga
CREATE INDEX idx_product_price
ON Product(Price);

-- INDEXING TABLE ORDERS
-- Untuk melihat order berdasarkan user
CREATE INDEX idx_orders_user
ON Orders(User_ID);

-- Untuk filter status order
CREATE INDEX idx_orders_status
ON Orders(Order_status);

-- Untuk laporan berdasarkan tanggal
CREATE INDEX idx_orders_date
ON Orders(Order_date);

-- INDEXING TABLE ORDER ITEM
-- Untuk relasi order
CREATE INDEX idx_orderitem_order
ON Order_Item(Order_ID);

-- Untuk relasi product
CREATE INDEX idx_orderitem_product
ON Order_Item(Produk_ID);

-- INDEXING TABLE PAYMENT
-- Untuk relasi payment dengan order
CREATE INDEX idx_payment_order
ON Payment(Order_ID);

-- Untuk filter metode pembayaran
CREATE INDEX idx_payment_method
ON Payment(Payment_method);

-- Untuk filter status pembayaran
CREATE INDEX idx_payment_status
ON Payment(Payment_status);

-- Untuk laporan pembayaran berdasarkan tanggal
CREATE INDEX idx_payment_date
ON Payment(Payment_date);