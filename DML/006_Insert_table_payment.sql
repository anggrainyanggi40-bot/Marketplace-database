-- INSERT TABLE PAYMENT
INSERT INTO Payment
(Payment_ID, Order_ID, Payment_method, Payment_date, Amount, Payment_status)
VALUES
(601, 401, 'Bank Transfer', '2026-05-01', 50000, 'paid'),
(602, 402, 'E-Wallet', '2026-05-02', 30000, 'pending'),
(603, 403, 'Credit Card', '2026-05-03', 150000, 'paid'),
(604, 404, 'Bank Transfer', '2026-05-04', 75000, 'paid'),
(605, 405, 'E-Wallet', '2026-05-05', 80000, 'failed'),
(606, 406, 'Credit Card', '2026-05-06', 90000, 'paid'),
(607, 407, 'Bank Transfer', '2026-05-07', 250000, 'pending'),
(608, 408, 'E-Wallet', '2026-05-08', 35000, 'paid'),
(609, 409, 'Credit Card', '2026-05-09', 135000, 'paid'),
(610, 410, 'Bank Transfer', '2026-05-10', 25000, 'pending'),
(611, 411, 'E-Wallet', '2026-05-11', 65000, 'paid'),
(612, 412, 'Credit Card', '2026-05-12', 85000, 'paid'),
(613, 413, 'Bank Transfer', '2026-05-13', 120000, 'failed'),
(614, 414, 'E-Wallet', '2026-05-14', 110000, 'paid'),
(615, 415, 'Credit Card', '2026-05-15', 180000, 'pending');