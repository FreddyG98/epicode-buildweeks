CREATE DATABASE VendiCose;

USE VendiCose;

CREATE TABLE Warehouse (
    WarehouseID INT PRIMARY KEY AUTO_INCREMENT
    , WarehouseName VARCHAR(50) NOT NULL 
    , Region VARCHAR(50) NOT NULL 
    , City VARCHAR(50) NOT NULL 
    , Address VARCHAR(75) NOT NULL 
    , Email VARCHAR(100) NOT NULL 
    , PhoneNumber VARCHAR(20) NOT NULL 
);

INSERT INTO Warehouse (WarehouseName, Region, City, Address, Email, PhoneNumber)
VALUES
('VC_Magazzino North', 'Lombardia', 'Milan', 'Via Roma 15', 'north@vcmagazzino.it', '+39 02 1234567')
, ('VC_Magazzino Center', 'Toscana', 'Florence', 'Piazza Duomo 10', 'center@vcmagazzino.it', '+39 055 7654321') 
, ('VC_Magazzino South', 'Campania', 'Naples', 'Corso Umberto I 20', 'south@vcmagazzino.it', '+39 081 9876543');


CREATE TABLE Store (
StoreID INT PRIMARY KEY AUTO_INCREMENT
	, WarehouseID INT 
	, StoreName VARCHAR(50) NOT NULL
	, Region VARCHAR(50) NOT NULL
	, City VARCHAR(50) NOT NULL
	, Address VARCHAR(75) NOT NULL
	, Email VARCHAR(100) NOT NULL
	, PhoneNumber VARCHAR(20) NOT NULL
	, FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID) 
);

INSERT INTO Store (WarehouseID, StoreName, Region, City, Address, Email, PhoneNumber)
VALUES
(1, 'VendiCose Milano Centro', 'Lombardia', 'Milano', 'Via Roma 1', 'milano.centro@vendicose.it', '+39 02 1234567')
, (1, 'VendiCose Milano Nord', 'Lombardia', 'Milano', 'Via Torino 15', 'milano.nord@vendicose.it', '+39 02 2345678')
, (1, 'VendiCose Bergamo', 'Lombardia', 'Bergamo', 'Via Verdi 10', 'bergamo@vendicose.it', '+39 035 3456789')
, (2, 'VendiCose Firenze Centro', 'Toscana', 'Firenze', 'Piazza Duomo 22', 'firenze.centro@vendicose.it', '+39 055 4567890')
, (2, 'VendiCose Pisa', 'Toscana', 'Pisa', 'Via Galileo 8', 'pisa@vendicose.it', '+39 050 5678901')
, (2, 'VendiCose Siena', 'Toscana', 'Siena', 'Via della Torre 18', 'siena@vendicose.it', '+39 0577 6789012')
, (3, 'VendiCose Napoli Centro', 'Campania', 'Napoli', 'Via Toledo 25', 'napoli.centro@vendicose.it', '+39 081 7890123')
, (3, 'VendiCose Salerno', 'Campania', 'Salerno', 'Via Costiera 3', 'salerno@vendicose.it', '+39 089 8901234')
, (3, 'VendiCose Caserta', 'Campania', 'Caserta', 'Via Reggia 9', 'caserta@vendicose.it', '+39 0823 9012345');


CREATE TABLE Category (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY
    , CategoryName VARCHAR(50) NOT NULL
    , SafeStockLevel SMALLINT NOT NULL
);

INSERT INTO Category (CategoryName, SafeStockLevel)
VALUES 
('Pasta, Riso e Cereali', 100)
, ('Latticini e Uova', 80)
, ('Formaggi', 70)
, ('Pane e Pasticceria', 60)
, ('Frutta e Verdura', 120)
, ('Carne e Salumi', 50)
, ('Dolci e Snack', 90)
, ('Bevande e Caffè', 100)
, ('Acqua e Bibite', 150)
, ('Prodotti per la Casa', 40);


CREATE TABLE Product (
	ProductID INT PRIMARY KEY
    , CategoryID INT NOT NULL
    , ProductName VARCHAR(50) NOT NULL
    , UnitPrice DECIMAL(6,2) NOT NULL
	, UnitCost DECIMAL(6,2) NOT NULL
    , FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

INSERT INTO Product (ProductID, CategoryID, ProductName, UnitPrice, UnitCost)
VALUES 
(1, 1, 'Pasta Barilla 500g', 1.50, 1.00),
(2, 2, 'Latte Parzialmente Scremato 1L', 1.20, 0.90),
(3, 3, 'Mozzarella Galbani 200g', 2.50, 1.80),
(4, 4, 'Pane Integrale 500g', 2.00, 1.40),
(5, 5, 'Mela Golden 1kg', 2.80, 2.00),
(6, 6, 'Carne Macinata 500g', 5.50, 4.20),
(7, 7, 'Cioccolato Fondente Perugina 100g', 1.80, 1.20),
(8, 8, 'Caffè Lavazza 250g', 3.50, 2.70),
(9, 9, 'Acqua Naturale San Benedetto 1.5L', 0.50, 0.30),
(10, 10, 'Detersivo Dash 1.2L', 5.00, 3.50),
(11, 1, 'Riso Scotti Arborio 1kg', 3.00, 2.20),
(12, 2, 'Yogurt Muller 125g', 0.90, 0.60),
(13, 3, 'Grana Padano 200g', 4.00, 3.00),
(14, 4, 'Croissant Mulino Bianco 300g', 2.50, 2.00),
(15, 5, 'Banana 1kg', 1.70, 1.20),
(16, 6, 'Petto di Pollo 500g', 6.00, 4.50),
(17, 7, 'Torrone Vergani 150g', 3.50, 2.70),
(18, 8, 'Tè Lipton Classico 20 bustine', 1.80, 1.30),
(19, 9, 'Bibita Fanta 1.5L', 1.50, 1.00),
(20, 10, 'Shampoo Garnier Ultra Dolce 300ml', 3.20, 2.50),
(21, 1, 'Passata di Pomodoro Mutti 700g', 2.00, 1.50),
(22, 2, 'Burro Lurpak 250g', 3.20, 2.50),
(23, 3, 'Gorgonzola DOP 300g', 4.20, 3.30),
(24, 4, 'Pane al Latte 400g', 1.80, 1.30),
(25, 5, 'Uva Bianca 1kg', 3.00, 2.50),
(26, 6, 'Bistecca di Manzo 400g', 8.00, 6.50),
(27, 7, 'Biscotti Plasmon 500g', 4.00, 3.20),
(28, 8, 'Succhi di Frutta Yoga 1L', 1.80, 1.40),
(29, 9, 'Birra Peroni 66cl', 1.30, 1.00),
(30, 10, 'Ammorbidente Coccolino 1.5L', 4.50, 3.40),
(31, 1, 'Olio Extra Vergine d’Oliva 1L', 6.50, 5.00),
(32, 2, 'Panna da Cucina Chef 200ml', 1.00, 0.80),
(33, 3, 'Parmigiano Reggiano 200g', 5.00, 4.00),
(34, 4, 'Fette Biscottate Mulino Bianco 350g', 2.00, 1.50),
(35, 5, 'Arancia Tarocco 1kg', 2.20, 1.80),
(36, 6, 'Prosciutto Cotto Fiorucci 150g', 3.50, 2.80),
(37, 7, 'Panettone Bauli 1kg', 12.00, 9.50),
(38, 8, 'Cappuccino Solubile Nescafé 200g', 4.00, 3.20),
(39, 9, 'Coca Cola 1.5L', 1.60, 1.10),
(40, 10, 'Candeggina Ace 1L', 2.50, 1.80),
(41, 1, 'Farina 00 Molino Chiavazza 1kg', 1.50, 1.00),
(42, 2, 'Mozzarella Santa Lucia 125g', 1.00, 0.80),
(43, 3, 'Ricotta Vallelata 250g', 2.50, 1.90),
(44, 4, 'Pane Casareccio 500g', 2.30, 1.80),
(45, 5, 'Ciliegie 1kg', 5.00, 4.20),
(46, 6, 'Salame Milano 150g', 4.50, 3.50),
(47, 7, 'Pandoro Melegatti 1kg', 10.00, 8.00),
(48, 8, 'Tisana Digestiva 20 bustine', 3.00, 2.50),
(49, 9, 'Acqua Frizzante Levissima 1.5L', 0.60, 0.40),
(50, 10, 'Sapone Mani Neutro Roberts 300ml', 2.00, 1.50);


CREATE TABLE Sales (
    SalesID INT AUTO_INCREMENT PRIMARY KEY
    , StoreID INT NOT NULL 
    , OrderDate DATE NOT NULL 
);

INSERT INTO Sales (StoreID, OrderDate) 
VALUES
(3, '2024-12-04'),
(7, '2024-12-04'),
(5, '2024-12-04'),
(2, '2024-12-04'),
(8, '2024-12-04'),
(4, '2024-12-04'),
(9, '2024-12-04'),
(1, '2024-12-04'),
(6, '2024-12-04'),
(3, '2024-12-04'),
(5, '2024-12-04'),
(7, '2024-12-04'),
(2, '2024-12-04'),
(8, '2024-12-04'),
(1, '2024-12-04'),
(9, '2024-12-04'),
(4, '2024-12-04'),
(6, '2024-12-04'),
(3, '2024-12-04'),
(7, '2024-12-04'),
(5, '2024-12-04'),
(1, '2024-12-04'),
(8, '2024-12-04'),
(2, '2024-12-04'),
(6, '2024-12-04'),
(9, '2024-12-04'),
(4, '2024-12-04'),
(3, '2024-12-04'),
(7, '2024-12-04'),
(5, '2024-12-04'),
(2, '2024-12-04'),
(8, '2024-12-04'),
(1, '2024-12-04'),
(9, '2024-12-04'),
(4, '2024-12-04'),
(6, '2024-12-04'),
(3, '2024-12-04'),
(7, '2024-12-04'),
(5, '2024-12-04'),
(2, '2024-12-04');


CREATE TABLE SalesDetail (
    SalesID INT  
    , ProductID INT NOT NULL 
    , OrderQuantity INT NOT NULL 
    , PRIMARY KEY (SalesID, ProductID)
);

INSERT INTO SalesDetail (SalesID, ProductID, OrderQuantity)
VALUES
(1, 10, 3),
(1, 12, 5),
(1, 5, 2),
(1, 20, 4),
(1, 3, 1),
(2, 8, 4),
(2, 1, 3),
(2, 50, 2),
(2, 15, 4),
(2, 22, 1),
(3, 11, 3),
(3, 33, 5),
(3, 40, 2),
(3, 18, 1),
(3, 27, 4),
(4, 30, 5),
(4, 2, 1),
(4, 17, 4),
(4, 29, 3),
(4, 45, 2),
(5, 14, 3),
(5, 16, 1),
(5, 19, 5),
(5, 21, 2),
(5, 24, 4),
(6, 50, 1),
(6, 25, 4),
(6, 26, 2),
(6, 28, 5),
(6, 35, 3),
(7, 37, 4),
(7, 31, 2),
(7, 6, 5),
(7, 4, 1),
(7, 44, 3),
(8, 41, 2),
(8, 39, 4),
(8, 38, 3),
(8, 42, 5),
(8, 7, 1),
(9, 9, 3),
(9, 23, 5),
(9, 13, 2),
(9, 47, 4),
(9, 48, 1),
(10, 34, 3),
(10, 32, 5),
(10, 43, 1),
(10, 46, 4),
(10, 49, 2),
(11, 1, 4),
(11, 3, 5),
(11, 8, 2),
(11, 15, 1),
(11, 18, 3),
(12, 13, 2),
(12, 17, 4),
(12, 6, 3),
(12, 29, 1),
(12, 50, 5),
(13, 27, 1),
(13, 25, 4),
(13, 19, 2),
(13, 32, 5),
(13, 34, 3),
(14, 24, 4),
(14, 14, 1),
(14, 8, 3),
(14, 12, 5),
(14, 21, 2),
(15, 46, 5),
(15, 16, 4),
(15, 9, 3),
(15, 11, 2),
(15, 1, 1),
(16, 7, 5),
(16, 30, 4),
(16, 5, 2),
(16, 45, 1),
(16, 39, 3),
(17, 40, 2),
(17, 33, 4),
(17, 2, 1),
(17, 20, 3),
(17, 10, 5),
(18, 4, 1),
(18, 50, 3),
(18, 28, 4),
(18, 38, 2),
(18, 30, 5),
(19, 31, 4),
(19, 37, 2),
(19, 12, 5),
(19, 45, 3),
(19, 27, 1),
(20, 6, 4),
(20, 1, 5),
(20, 21, 2),
(20, 48, 3),
(20, 47, 1),
(21, 35, 4),
(21, 7, 5),
(21, 33, 1),
(21, 18, 3),
(21, 23, 2),
(22, 9, 5),
(22, 22, 4),
(22, 36, 3),
(22, 44, 1),
(22, 42, 2),
(23, 41, 4),
(23, 25, 5),
(23, 12, 3),
(23, 32, 2),
(23, 39, 1),
(24, 19, 5),
(24, 14, 2),
(24, 29, 4),
(24, 34, 3),
(24, 8, 1),
(25, 48, 2),
(25, 36, 5),
(25, 45, 1),
(25, 5, 3),
(25, 23, 4),
(26, 50, 4),
(26, 6, 1),
(26, 35, 5),
(26, 20, 3),
(26, 27, 2),
(27, 32, 1),
(27, 30, 5),
(27, 3, 4),
(27, 7, 2),
(27, 13, 3),
(28, 11, 2),
(28, 10, 4),
(28, 24, 1),
(28, 48, 3),
(28, 25, 5),
(29, 29, 4),
(29, 44, 2),
(29, 40, 5),
(29, 34, 3),
(29, 41, 1),
(30, 22, 5),
(30, 6, 4),
(30, 21, 2),
(30, 27, 3),
(30, 39, 1),
(31, 9, 3),
(31, 4, 5),
(31, 2, 1),
(31, 43, 4),
(31, 19, 2),
(32, 33, 1),
(32, 14, 4),
(32, 47, 3),
(32, 1, 5),
(32, 25, 2),
(33, 49, 4),
(33, 43, 1),
(33, 11, 3),
(33, 24, 2),
(33, 9, 5),
(34, 10, 3),
(34, 27, 5),
(34, 35, 1),
(34, 13, 4),
(34, 8, 2),
(35, 12, 3),
(35, 39, 4),
(35, 31, 5),
(35, 45, 1),
(35, 50, 2),
(36, 6, 2),
(36, 47, 4),
(36, 19, 1),
(36, 30, 3),
(36, 40, 5),
(37, 22, 2),
(37, 3, 4),
(37, 26, 1),
(37, 48, 3),
(37, 8, 5),
(38, 7, 4),
(38, 33, 5),
(38, 21, 3),
(38, 44, 2),
(38, 19, 1),
(39, 13, 4),
(39, 16, 5),
(39, 45, 1),
(39, 23, 2),
(39, 34, 3),
(40, 49, 5),
(40, 8, 2),
(40, 14, 4),
(40, 31, 1),
(40, 12, 3);

CREATE TABLE WarehouseStock (
    WarehouseID INT NOT NULL 
    , ProductID INT NOT NULL 
    , StartingStock INT NOT NULL 
    , PRIMARY KEY (WarehouseID, ProductID) 
    , FOREIGN KEY (WarehouseID) REFERENCES Warehouse(WarehouseID) 
    , FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

INSERT INTO WarehouseStock (WarehouseID, ProductID, StartingStock)
VALUES
(1, 1, 152), (1, 2, 176), (1, 3, 165), (1, 4, 178), (1, 5, 150),
(1, 6, 160), (1, 7, 179), (1, 8, 170), (1, 9, 155), (1, 10, 162),
(1, 11, 180), (1, 12, 159), (1, 13, 164), (1, 14, 167), (1, 15, 172),
(1, 16, 175), (1, 17, 160), (1, 18, 151), (1, 19, 169), (1, 20, 163),
(1, 21, 174), (1, 22, 161), (1, 23, 178), (1, 24, 154), (1, 25, 180),
(1, 26, 173), (1, 27, 158), (1, 28, 171), (1, 29, 177), (1, 30, 153),
(1, 31, 179), (1, 32, 157), (1, 33, 168), (1, 34, 162), (1, 35, 174),
(1, 36, 166), (1, 37, 150), (1, 38, 155), (1, 39, 169), (1, 40, 178),
(1, 41, 180), (1, 42, 163), (1, 43, 172), (1, 44, 157), (1, 45, 171),
(1, 46, 158), (1, 47, 176), (1, 48, 151), (1, 49, 160), (1, 50, 170),
(2, 1, 153), (2, 2, 178), (2, 3, 165), (2, 4, 169), (2, 5, 162),
(2, 6, 155), (2, 7, 150), (2, 8, 176), (2, 9, 180), (2, 10, 160),
(2, 11, 171), (2, 12, 179), (2, 13, 166), (2, 14, 157), (2, 15, 174),
(2, 16, 158), (2, 17, 172), (2, 18, 151), (2, 19, 161), (2, 20, 173),
(2, 21, 178), (2, 22, 177), (2, 23, 163), (2, 24, 164), (2, 25, 155),
(2, 26, 170), (2, 27, 150), (2, 28, 168), (2, 29, 153), (2, 30, 161),
(2, 31, 180), (2, 32, 167), (2, 33, 175), (2, 34, 154), (2, 35, 156),
(2, 36, 170), (2, 37, 159), (2, 38, 176), (2, 39, 165), (2, 40, 151),
(2, 41, 178), (2, 42, 150), (2, 43, 179), (2, 44, 164), (2, 45, 169),
(2, 46, 153), (2, 47, 157), (2, 48, 171), (2, 49, 160), (2, 50, 172),
(3, 1, 154), (3, 2, 179), (3, 3, 161), (3, 4, 158), (3, 5, 156),
(3, 6, 150), (3, 7, 174), (3, 8, 172), (3, 9, 177), (3, 10, 151),
(3, 11, 164), (3, 12, 169), (3, 13, 170), (3, 14, 162), (3, 15, 163),
(3, 16, 180), (3, 17, 165), (3, 18, 153), (3, 19, 157), (3, 20, 168),
(3, 21, 159), (3, 22, 175), (3, 23, 160), (3, 24, 173), (3, 25, 178),
(3, 26, 167), (3, 27, 150), (3, 28, 171), (3, 29, 169), (3, 30, 164),
(3, 31, 155), (3, 32, 161), (3, 33, 152), (3, 34, 176), (3, 35, 177),
(3, 36, 162), (3, 37, 151), (3, 38, 163), (3, 39, 179), (3, 40, 150),
(3, 41, 173), (3, 42, 170), (3, 43, 158), (3, 44, 159), (3, 45, 180),
(3, 46, 166), (3, 47, 154), (3, 48, 155), (3, 49, 165), (3, 50, 168);



-- CREIAMO UNA VISTA CON LE INFORMAZIONI UTILI RIGUARDO OGNI VENDITA

CREATE OR REPLACE VIEW vw_GeneralInfo AS (
SELECT 
	s.SalesID 
    , sd.ProductID 
    , p.ProductName 
    , s.StoreID 
    , StoreName
    , c.CategoryID
    , CategoryName
    , SafeStockLevel
    , OrderQuantity
    , OrderDate
    , w.WarehouseID
    , WarehouseName 
    , (UnitCost * OrderQuantity) AS CostAmount       
    , (UnitPrice * OrderQuantity) AS SalesAmount        
    , (UnitPrice * OrderQuantity) - (UnitCost * OrderQuantity) AS Profit_Gain       
FROM 
	sales s
JOIN 
	salesdetail sd
ON 
	s.SalesID = sd.SalesID
JOIN 
	product p
ON 
	sd.ProductID = p.ProductID 
JOIN 
	category c 
ON 
	p.CategoryID = c.CategoryID
JOIN
	store st
ON 
	s.StoreID = st.StoreID
JOIN 
	warehouse w
ON
	st.WarehouseID = w.WarehouseID 
);


-- CREAZIONE VISTA PER VISUALIZZARE LE COMBINAZIONI MAGAZZINO/PRODOTTO SCESE SOTTO SOGLIA NELLA GIORNATA CORRENTE

CREATE OR REPLACE VIEW VW_Restock_SOTTOSOGLIA AS (
SELECT 
	ws.WarehouseID
    , CategoryID
    , vw.ProductID 
    , SUM(OrderQuantity) AS TotalQuantity
    , StartingStock 
    , (StartingStock - SUM(OrderQuantity)) AS FinalStock
	, SafeStockLevel 
	, IF ((StartingStock - SUM(OrderQuantity)) < SafeStockLevel, "SI", "NO") AS Need_Reorder
FROM 
	vw_generalinfo vw
JOIN 
	warehousestock ws
ON 
	vw.WarehouseID = ws.WarehouseID AND vw.ProductID = ws.ProductID
WHERE 
	OrderDate = CURDATE()
GROUP BY
	ws.WarehouseID
    , vw.ProductID 
HAVING Need_Reorder = "SI"
ORDER BY
	ws.WarehouseID
    , CategoryID
    , vw.ProductID 
);


CREATE OR REPLACE VIEW VW_aggiornamento_giacenza AS (
SELECT 
	ws.WarehouseID
    , CategoryID
    , vw.ProductID 
    , SUM(OrderQuantity) AS TotalQuantity
    , StartingStock 
    , (StartingStock - SUM(OrderQuantity)) AS FinalStock
	, SafeStockLevel 
	, IF ((StartingStock - SUM(OrderQuantity)) < SafeStockLevel, "SI", "NO") AS Need_Reorder
FROM 
	vw_generalinfo vw
JOIN 
	warehousestock ws
ON 
	vw.WarehouseID = ws.WarehouseID AND vw.ProductID = ws.ProductID
WHERE 
	OrderDate = CURDATE()
GROUP BY
	ws.WarehouseID
    , vw.ProductID 
HAVING Need_Reorder = "NO"
ORDER BY
	ws.WarehouseID
    , CategoryID
    , vw.ProductID 
);


-- VERIFICHE 

SELECT
*
FROM
VW_Restock_SOTTOSOGLIA;

SELECT
*
FROM
Sales;


