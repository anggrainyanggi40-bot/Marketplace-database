-- TAMPILKAN SELURUH PRODUCK DARI TABEL
SELECT * FROM product;

-- Tampilkan Nama dan Harga Product
SELECT Product_name,Price 
FROM product;

-- Tampilkan product hargnya antara 5000 sampai 200000
SELECT * 
FROM product
WHERE price BETWEEN 50000 AND 200000;

-- Tampilkan product yang stok = 0 atau price>500000
SELECT *
FROM Product
WHERE Stock = 0
OR Price > 500000; 

-- Tampilkan 5 produk dengan harga tertinggi 
SELECT * 
FROM product
ORDER BY price DESC
LIMIT 5;