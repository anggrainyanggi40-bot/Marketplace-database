-- Hitung total user 
SELECT COUNT(*) AS total_user
FROM users;

-- Hitung total produk yang tersedia
SELECT COUNT(*)
FROM product
WHERE Stock > 0;

-- Hitung jumlah Produk per kategori
SELECT pc.Category_name, 
	   SUM(p.Stock) AS total_product 
FROM product_category pc 
JOIN product p 
ON p.Product_Category_ID =pc.Product_Category_ID
GROUP BY pc.Category_name;

-- Hitung rata-rata harga produk per kategori
SELECT pc.Category_name, 
	   ROUND(AVG(p.Price),0) AS rata_rata_harga
FROM product_category pc 
JOIN product p 
ON p.Product_Category_ID =pc.Product_Category_ID
GROUP BY pc.Category_name;

-- Tampilkan kategori yang memiliki lebih dari 3 produk
SELECT pc.Category_name, 
	   SUM(p.Stock) AS total_product
FROM product_category pc 
JOIN product p 
ON p.Product_Category_ID = pc.Product_Category_ID
GROUP BY pc.Category_name
HAVING SUM(p.Stock) > 3;

