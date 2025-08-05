-- Clear existing data
DELETE FROM activity_logs;
DELETE FROM orders;
DELETE FROM parts;

-- Insert 50 parts with variety of brands and models
INSERT INTO parts (categoryId, name, brand, category, price, quantity, alertThreshold, status) VALUES
-- Processors (CPU) - 10 items
('CPU001', 'Intel Core i7-12700K', 'Intel', 'Processor (CPU)', 18000, 10, 3, 'In Stock'),
('CPU002', 'Intel Core i9-12900K', 'Intel', 'Processor (CPU)', 25000, 5, 2, 'In Stock'),
('CPU003', 'Intel Core i5-12600K', 'Intel', 'Processor (CPU)', 12000, 15, 5, 'In Stock'),
('CPU004', 'AMD Ryzen 7 5800X', 'AMD', 'Processor (CPU)', 16000, 8, 3, 'In Stock'),
('CPU005', 'AMD Ryzen 9 5900X', 'AMD', 'Processor (CPU)', 22000, 6, 2, 'In Stock'),
('CPU006', 'AMD Ryzen 5 5600X', 'AMD', 'Processor (CPU)', 10000, 12, 4, 'In Stock'),
('CPU007', 'Intel Core i7-12700KF', 'Intel', 'Processor (CPU)', 17000, 7, 3, 'In Stock'),
('CPU008', 'AMD Ryzen 7 5800X3D', 'AMD', 'Processor (CPU)', 19000, 4, 2, 'In Stock'),
('CPU009', 'Intel Core i3-12100F', 'Intel', 'Processor (CPU)', 8000, 20, 8, 'In Stock'),
('CPU010', 'AMD Ryzen 3 4100', 'AMD', 'Processor (CPU)', 6000, 18, 7, 'In Stock'),

-- Graphics Cards (GPU) - 12 items
('GPU001', 'NVIDIA RTX 3060', 'NVIDIA', 'Graphic Card (GPU)', 28000, 5, 2, 'In Stock'),
('GPU002', 'NVIDIA RTX 3070', 'NVIDIA', 'Graphic Card (GPU)', 35000, 4, 2, 'In Stock'),
('GPU003', 'NVIDIA RTX 3080', 'NVIDIA', 'Graphic Card (GPU)', 45000, 3, 1, 'In Stock'),
('GPU004', 'NVIDIA RTX 3090', 'NVIDIA', 'Graphic Card (GPU)', 65000, 2, 1, 'In Stock'),
('GPU005', 'RTX 4060 Ti Gaming X', 'MSI', 'Graphic Card (GPU)', 32000, 6, 2, 'In Stock'),
('GPU006', 'RTX 4060 Ti Aero', 'Gigabyte', 'Graphic Card (GPU)', 31000, 5, 2, 'In Stock'),
('GPU007', 'RTX 4060 Ti Ice', 'Gigabyte', 'Graphic Card (GPU)', 31500, 4, 2, 'In Stock'),
('GPU008', 'RTX 4070 Gaming OC', 'Gigabyte', 'Graphic Card (GPU)', 38000, 3, 1, 'In Stock'),
('GPU009', 'RTX 4070 Ventus 3X', 'MSI', 'Graphic Card (GPU)', 37500, 4, 2, 'In Stock'),
('GPU010', 'RX 6700 XT Gaming X', 'MSI', 'Graphic Card (GPU)', 28000, 5, 2, 'In Stock'),
('GPU011', 'RX 6800 XT Red Devil', 'PowerColor', 'Graphic Card (GPU)', 42000, 3, 1, 'In Stock'),
('GPU012', 'RX 6900 XT Nitro+', 'Sapphire', 'Graphic Card (GPU)', 48000, 2, 1, 'In Stock'),

-- Memory (RAM) - 10 items
('RAM001', 'Corsair Vengeance 16GB', 'Corsair', 'Memory (RAM)', 3500, 15, 5, 'In Stock'),
('RAM002', 'Corsair Vengeance 32GB', 'Corsair', 'Memory (RAM)', 6500, 10, 3, 'In Stock'),
('RAM003', 'G.Skill Ripjaws V 16GB', 'G.Skill', 'Memory (RAM)', 3200, 12, 4, 'In Stock'),
('RAM004', 'G.Skill Trident Z 32GB', 'G.Skill', 'Memory (RAM)', 6800, 8, 3, 'In Stock'),
('RAM005', 'Kingston Fury Beast 16GB', 'Kingston', 'Memory (RAM)', 3300, 14, 5, 'In Stock'),
('RAM006', 'Kingston Fury Renegade 32GB', 'Kingston', 'Memory (RAM)', 6200, 9, 3, 'In Stock'),
('RAM007', 'Crucial Ballistix 16GB', 'Crucial', 'Memory (RAM)', 3100, 13, 4, 'In Stock'),
('RAM008', 'TeamGroup T-Force 32GB', 'TeamGroup', 'Memory (RAM)', 6000, 7, 3, 'In Stock'),
('RAM009', 'Patriot Viper Steel 16GB', 'Patriot', 'Memory (RAM)', 3000, 11, 4, 'In Stock'),
('RAM010', 'HyperX Fury 32GB', 'HyperX', 'Memory (RAM)', 6400, 6, 2, 'In Stock'),

-- Storage - 10 items
('STORAGE001', 'Samsung 970 EVO 1TB', 'Samsung', 'Storage', 6000, 8, 2, 'In Stock'),
('STORAGE002', 'Samsung 980 PRO 1TB', 'Samsung', 'Storage', 8500, 6, 2, 'In Stock'),
('STORAGE003', 'WD Black SN850 1TB', 'Western Digital', 'Storage', 8200, 7, 2, 'In Stock'),
('STORAGE004', 'WD Blue SN570 1TB', 'Western Digital', 'Storage', 4500, 12, 4, 'In Stock'),
('STORAGE005', 'Crucial P5 1TB', 'Crucial', 'Storage', 5800, 9, 3, 'In Stock'),
('STORAGE006', 'Crucial P3 2TB', 'Crucial', 'Storage', 7500, 5, 2, 'In Stock'),
('STORAGE007', 'Kingston KC2500 1TB', 'Kingston', 'Storage', 6200, 8, 3, 'In Stock'),
('STORAGE008', 'Sabrent Rocket 4.0 1TB', 'Sabrent', 'Storage', 7800, 4, 2, 'In Stock'),
('STORAGE009', 'Seagate Barracuda 2TB', 'Seagate', 'Storage', 3500, 15, 5, 'In Stock'),
('STORAGE010', 'Toshiba P300 3TB', 'Toshiba', 'Storage', 4200, 10, 3, 'In Stock'),

-- Motherboards - 8 items
('MB001', 'ROG STRIX B660-F', 'ASUS', 'Motherboard', 12000, 6, 2, 'In Stock'),
('MB002', 'ROG STRIX Z690-E', 'ASUS', 'Motherboard', 18000, 4, 2, 'In Stock'),
('MB003', 'MEG Z690 ACE', 'MSI', 'Motherboard', 16000, 5, 2, 'In Stock'),
('MB004', 'MPG B660I EDGE', 'MSI', 'Motherboard', 11000, 7, 3, 'In Stock'),
('MB005', 'Z690 AORUS ELITE', 'Gigabyte', 'Motherboard', 14000, 6, 2, 'In Stock'),
('MB006', 'B660M AORUS PRO', 'Gigabyte', 'Motherboard', 9500, 8, 3, 'In Stock'),
('MB007', 'B550 AORUS PRO', 'Gigabyte', 'Motherboard', 9000, 9, 3, 'In Stock'),
('MB008', 'X570 AORUS MASTER', 'Gigabyte', 'Motherboard', 15000, 3, 1, 'In Stock'),

-- Power Supplies - 6 items
('PSU001', 'RM850x 850W', 'Corsair', 'Power Supply', 8500, 8, 3, 'In Stock'),
('PSU002', 'HX1000 1000W', 'Corsair', 'Power Supply', 12000, 5, 2, 'In Stock'),
('PSU003', 'Focus GX-850 850W', 'Seasonic', 'Power Supply', 7800, 7, 3, 'In Stock'),
('PSU004', 'Prime TX-1000 1000W', 'Seasonic', 'Power Supply', 11000, 4, 2, 'In Stock'),
('PSU005', 'EVGA SuperNOVA 750W', 'EVGA', 'Power Supply', 7000, 10, 4, 'In Stock'),
('PSU006', 'be quiet! Straight Power 11', 'be quiet!', 'Power Supply', 9500, 6, 2, 'In Stock'),

-- Cooling Systems - 6 items
('COOL001', 'Noctua NH-D15', 'Noctua', 'Cooling System', 4500, 10, 3, 'In Stock'),
('COOL002', 'Corsair H150i ELITE', 'Corsair', 'Cooling System', 6500, 6, 2, 'In Stock'),
('COOL003', 'NZXT Kraken X73', 'NZXT', 'Cooling System', 5800, 7, 3, 'In Stock'),
('COOL004', 'Arctic Liquid Freezer II', 'Arctic', 'Cooling System', 4200, 9, 3, 'In Stock'),
('COOL005', 'Cooler Master Hyper 212', 'Cooler Master', 'Cooling System', 2500, 15, 5, 'In Stock'),
('COOL006', 'be quiet! Dark Rock Pro 4', 'be quiet!', 'Cooling System', 3800, 8, 3, 'In Stock'),

-- Computer Cases - 4 items
('CASE001', 'NZXT H510', 'NZXT', 'Computer Case', 3500, 12, 4, 'In Stock'),
('CASE002', 'Corsair 4000D', 'Corsair', 'Computer Case', 4000, 10, 3, 'In Stock'),
('CASE003', 'Fractal Design Meshify C', 'Fractal Design', 'Computer Case', 4500, 8, 3, 'In Stock'),
('CASE004', 'Phanteks P400A', 'Phanteks', 'Computer Case', 3800, 9, 3, 'In Stock'),

-- Peripherals - 4 items
('PERI001', 'Logitech G Pro X', 'Logitech', 'Peripheral', 2800, 15, 5, 'In Stock'),
('PERI002', 'Razer DeathAdder V3', 'Razer', 'Peripheral', 2200, 18, 6, 'In Stock'),
('PERI003', 'SteelSeries Arctis 7', 'SteelSeries', 'Peripheral', 3200, 12, 4, 'In Stock'),
('PERI004', 'Corsair K70 RGB', 'Corsair', 'Peripheral', 4500, 8, 3, 'In Stock');

-- Insert activity logs for all parts being added to inventory
INSERT INTO activity_logs (activityId, partName, categoryId, actionType, details, user_id) VALUES
-- CPU Activity Logs
('ACT001', 'Intel Core i7-12700K', 'CPU001', 'Stock Added', 'Added 10 units to inventory', 1),
('ACT002', 'Intel Core i9-12900K', 'CPU002', 'Stock Added', 'Added 5 units to inventory', 1),
('ACT003', 'Intel Core i5-12600K', 'CPU003', 'Stock Added', 'Added 15 units to inventory', 1),
('ACT004', 'AMD Ryzen 7 5800X', 'CPU004', 'Stock Added', 'Added 8 units to inventory', 1),
('ACT005', 'AMD Ryzen 9 5900X', 'CPU005', 'Stock Added', 'Added 6 units to inventory', 1),
('ACT006', 'AMD Ryzen 5 5600X', 'CPU006', 'Stock Added', 'Added 12 units to inventory', 1),
('ACT007', 'Intel Core i7-12700KF', 'CPU007', 'Stock Added', 'Added 7 units to inventory', 1),
('ACT008', 'AMD Ryzen 7 5800X3D', 'CPU008', 'Stock Added', 'Added 4 units to inventory', 1),
('ACT009', 'Intel Core i3-12100F', 'CPU009', 'Stock Added', 'Added 20 units to inventory', 1),
('ACT010', 'AMD Ryzen 3 4100', 'CPU010', 'Stock Added', 'Added 18 units to inventory', 1),

-- GPU Activity Logs
('ACT011', 'NVIDIA RTX 3060', 'GPU001', 'Stock Added', 'Added 5 units to inventory', 1),
('ACT012', 'NVIDIA RTX 3070', 'GPU002', 'Stock Added', 'Added 4 units to inventory', 1),
('ACT013', 'NVIDIA RTX 3080', 'GPU003', 'Stock Added', 'Added 3 units to inventory', 1),
('ACT014', 'NVIDIA RTX 3090', 'GPU004', 'Stock Added', 'Added 2 units to inventory', 1),
('ACT015', 'RTX 4060 Ti Gaming X', 'GPU005', 'Stock Added', 'Added 6 units to inventory', 1),
('ACT016', 'RTX 4060 Ti Aero', 'GPU006', 'Stock Added', 'Added 5 units to inventory', 1),
('ACT017', 'RTX 4060 Ti Ice', 'GPU007', 'Stock Added', 'Added 4 units to inventory', 1),
('ACT018', 'RTX 4070 Gaming OC', 'GPU008', 'Stock Added', 'Added 3 units to inventory', 1),
('ACT019', 'RTX 4070 Ventus 3X', 'GPU009', 'Stock Added', 'Added 4 units to inventory', 1),
('ACT020', 'RX 6700 XT Gaming X', 'GPU010', 'Stock Added', 'Added 5 units to inventory', 1),
('ACT021', 'RX 6800 XT Red Devil', 'GPU011', 'Stock Added', 'Added 3 units to inventory', 1),
('ACT022', 'RX 6900 XT Nitro+', 'GPU012', 'Stock Added', 'Added 2 units to inventory', 1),

-- RAM Activity Logs
('ACT023', 'Corsair Vengeance 16GB', 'RAM001', 'Stock Added', 'Added 15 units to inventory', 1),
('ACT024', 'Corsair Vengeance 32GB', 'RAM002', 'Stock Added', 'Added 10 units to inventory', 1),
('ACT025', 'G.Skill Ripjaws V 16GB', 'RAM003', 'Stock Added', 'Added 12 units to inventory', 1),
('ACT026', 'G.Skill Trident Z 32GB', 'RAM004', 'Stock Added', 'Added 8 units to inventory', 1),
('ACT027', 'Kingston Fury Beast 16GB', 'RAM005', 'Stock Added', 'Added 14 units to inventory', 1),
('ACT028', 'Kingston Fury Renegade 32GB', 'RAM006', 'Stock Added', 'Added 9 units to inventory', 1),
('ACT029', 'Crucial Ballistix 16GB', 'RAM007', 'Stock Added', 'Added 13 units to inventory', 1),
('ACT030', 'TeamGroup T-Force 32GB', 'RAM008', 'Stock Added', 'Added 7 units to inventory', 1),
('ACT031', 'Patriot Viper Steel 16GB', 'RAM009', 'Stock Added', 'Added 11 units to inventory', 1),
('ACT032', 'HyperX Fury 32GB', 'RAM010', 'Stock Added', 'Added 6 units to inventory', 1),

-- Storage Activity Logs
('ACT033', 'Samsung 970 EVO 1TB', 'STORAGE001', 'Stock Added', 'Added 8 units to inventory', 1),
('ACT034', 'Samsung 980 PRO 1TB', 'STORAGE002', 'Stock Added', 'Added 6 units to inventory', 1),
('ACT035', 'WD Black SN850 1TB', 'STORAGE003', 'Stock Added', 'Added 7 units to inventory', 1),
('ACT036', 'WD Blue SN570 1TB', 'STORAGE004', 'Stock Added', 'Added 12 units to inventory', 1),
('ACT037', 'Crucial P5 1TB', 'STORAGE005', 'Stock Added', 'Added 9 units to inventory', 1),
('ACT038', 'Crucial P3 2TB', 'STORAGE006', 'Stock Added', 'Added 5 units to inventory', 1),
('ACT039', 'Kingston KC2500 1TB', 'STORAGE007', 'Stock Added', 'Added 8 units to inventory', 1),
('ACT040', 'Sabrent Rocket 4.0 1TB', 'STORAGE008', 'Stock Added', 'Added 4 units to inventory', 1),
('ACT041', 'Seagate Barracuda 2TB', 'STORAGE009', 'Stock Added', 'Added 15 units to inventory', 1),
('ACT042', 'Toshiba P300 3TB', 'STORAGE010', 'Stock Added', 'Added 10 units to inventory', 1),

-- Motherboard Activity Logs
('ACT043', 'ROG STRIX B660-F', 'MB001', 'Stock Added', 'Added 6 units to inventory', 1),
('ACT044', 'ROG STRIX Z690-E', 'MB002', 'Stock Added', 'Added 4 units to inventory', 1),
('ACT045', 'MEG Z690 ACE', 'MB003', 'Stock Added', 'Added 5 units to inventory', 1),
('ACT046', 'MPG B660I EDGE', 'MB004', 'Stock Added', 'Added 7 units to inventory', 1),
('ACT047', 'Z690 AORUS ELITE', 'MB005', 'Stock Added', 'Added 6 units to inventory', 1),
('ACT048', 'B660M AORUS PRO', 'MB006', 'Stock Added', 'Added 8 units to inventory', 1),
('ACT049', 'B550 AORUS PRO', 'MB007', 'Stock Added', 'Added 9 units to inventory', 1),
('ACT050', 'X570 AORUS MASTER', 'MB008', 'Stock Added', 'Added 3 units to inventory', 1),

-- Power Supply Activity Logs
('ACT051', 'RM850x 850W', 'PSU001', 'Stock Added', 'Added 8 units to inventory', 1),
('ACT052', 'HX1000 1000W', 'PSU002', 'Stock Added', 'Added 5 units to inventory', 1),
('ACT053', 'Focus GX-850 850W', 'PSU003', 'Stock Added', 'Added 7 units to inventory', 1),
('ACT054', 'Prime TX-1000 1000W', 'PSU004', 'Stock Added', 'Added 4 units to inventory', 1),
('ACT055', 'EVGA SuperNOVA 750W', 'PSU005', 'Stock Added', 'Added 10 units to inventory', 1),
('ACT056', 'be quiet! Straight Power 11', 'PSU006', 'Stock Added', 'Added 6 units to inventory', 1),

-- Cooling System Activity Logs
('ACT057', 'Noctua NH-D15', 'COOL001', 'Stock Added', 'Added 10 units to inventory', 1),
('ACT058', 'Corsair H150i ELITE', 'COOL002', 'Stock Added', 'Added 6 units to inventory', 1),
('ACT059', 'NZXT Kraken X73', 'COOL003', 'Stock Added', 'Added 7 units to inventory', 1),
('ACT060', 'Arctic Liquid Freezer II', 'COOL004', 'Stock Added', 'Added 9 units to inventory', 1),
('ACT061', 'Cooler Master Hyper 212', 'COOL005', 'Stock Added', 'Added 15 units to inventory', 1),
('ACT062', 'be quiet! Dark Rock Pro 4', 'COOL006', 'Stock Added', 'Added 8 units to inventory', 1),

-- Computer Case Activity Logs
('ACT063', 'NZXT H510', 'CASE001', 'Stock Added', 'Added 12 units to inventory', 1),
('ACT064', 'Corsair 4000D', 'CASE002', 'Stock Added', 'Added 10 units to inventory', 1),
('ACT065', 'Fractal Design Meshify C', 'CASE003', 'Stock Added', 'Added 8 units to inventory', 1),
('ACT066', 'Phanteks P400A', 'CASE004', 'Stock Added', 'Added 9 units to inventory', 1),

-- Peripheral Activity Logs
('ACT067', 'Logitech G Pro X', 'PERI001', 'Stock Added', 'Added 15 units to inventory', 1),
('ACT068', 'Razer DeathAdder V3', 'PERI002', 'Stock Added', 'Added 18 units to inventory', 1),
('ACT069', 'SteelSeries Arctis 7', 'PERI003', 'Stock Added', 'Added 12 units to inventory', 1),
('ACT070', 'Corsair K70 RGB', 'PERI004', 'Stock Added', 'Added 8 units to inventory', 1);

-- Insert sample orders
INSERT INTO orders (orderId, categoryId, partName, date, quantity, status) VALUES
('ORD001', 'CPU001', 'Intel Core i7-12700K', '2025-07-28', 2, 'Completed'),
('ORD002', 'GPU001', 'NVIDIA RTX 3060', '2025-07-28', 1, 'Pending');

-- Insert activity logs for sample orders
INSERT INTO activity_logs (activityId, partName, categoryId, actionType, details, user_id, orderId) VALUES
('ACT071', 'Intel Core i7-12700K', 'CPU001', 'Order Created', 'Order ORD001 created', 1, 'ORD001'),
('ACT072', 'NVIDIA RTX 3060', 'GPU001', 'Order Created', 'Order ORD002 created', 1, 'ORD002'); 