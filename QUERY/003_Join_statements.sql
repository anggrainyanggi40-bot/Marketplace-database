-- Tampilkan daftar produk beserta nama kategorinya 
SELECT p.product_name, pc.Category_name
FROM product p
JOIN product_category pc 
ON p.Product_Category_ID = pc.Product_Category_ID;

-- Tampilkan semua kategori meskipun belum memiliki produk
SELECT pc.Category_name, p.product_name
FROM product_category pc
LEFT JOIN product p
ON pc.Product_Category_ID = p.Product_Category_ID;

-- Tampilkan semua user meskipun belum pernah membeli produk
SELECT 
    u.Name,
    o.Order_ID
FROM Users u
LEFT JOIN Orders o
ON u.User_ID = o.User_ID;

-- Tampilkan daftar transaksi beserta nama buyer
SELECT 
    o.Order_ID,
    u.Name AS buyer_name,
    o.Order_status,
    o.Order_date
FROM Orders o
JOIN Users u
ON o.User_ID = u.User_ID;

-- Tampilkan daftar produk beserta nama user yang mengupload produk tersebut
SELECT 
    p.Product_name,
    u.Name AS seller_name
FROM Product p
INNER JOIN Users u
ON p.Seller_id = u.User_ID;

