USE `vendicose`;

-- Scrittura delle query necessarie al funzionamento del sistema, in particolare:
-- Ogni qual volta un prodotto viene venduto in un negozio, qual è la query da eseguire per aggiornare le tabelle di riferimento?

INSERT INTO Sales (StoreID, OrderDate) 
VALUES
(3, '2024-12-06'),
(7, '2024-12-06'),
(5, '2024-12-06'),
(2, '2024-12-06'),
(8, '2024-12-06'),
(4, '2024-12-06'),
(9, '2024-12-06'),
(1, '2024-12-06'),
(6, '2024-12-06'),
(3, '2024-12-06'),
(5, '2024-12-06'),
(7, '2024-12-06'),
(2, '2024-12-06'),
(8, '2024-12-06'),
(1, '2024-12-06'),
(9, '2024-12-06'),
(4, '2024-12-06'),
(6, '2024-12-06'),
(3, '2024-12-06'),
(7, '2024-12-06'),
(5, '2024-12-06'),
(1, '2024-12-06'),
(8, '2024-12-06'),
(2, '2024-12-06'),
(6, '2024-12-06'),
(9, '2024-12-06'),
(4, '2024-12-06'),
(3, '2024-12-06'),
(7, '2024-12-06'),
(5, '2024-12-06'),
(2, '2024-12-06'),
(8, '2024-12-06'),
(1, '2024-12-06'),
(9, '2024-12-06'),
(4, '2024-12-06'),
(6, '2024-12-06'),
(3, '2024-12-06'),
(7, '2024-12-06'),
(5, '2024-12-06'),
(2, '2024-12-06');


INSERT INTO SalesDetail (SalesID, ProductID, OrderQuantity)
VALUES
(41, 10, 3),
(41, 12, 5),
(41, 5, 2),
(41, 20, 4),
(41, 3, 1),
(42, 8, 4),
(42, 1, 3),
(42, 50, 2),
(42, 15, 4),
(42, 22, 1),
(43, 11, 3),
(43, 33, 5),
(43, 40, 2),
(43, 18, 1),
(43, 27, 4),
(44, 30, 5),
(44, 2, 1),
(44, 17, 4),
(44, 29, 3),
(44, 45, 2),
(45, 14, 3),
(45, 16, 1),
(45, 19, 5),
(45, 21, 2),
(45, 24, 4),
(46, 50, 1),
(46, 25, 4),
(46, 26, 2),
(46, 28, 5),
(46, 35, 3),
(47, 37, 4),
(47, 31, 2),
(47, 6, 5),
(47, 4, 1),
(47, 44, 3),
(48, 41, 2),
(48, 39, 4),
(48, 38, 3),
(48, 42, 5),
(48, 7, 1),
(49, 9, 3),
(49, 23, 5),
(49, 13, 2),
(49, 47, 4),
(49, 48, 1),
(50, 34, 3),
(50, 32, 5),
(50, 43, 1),
(50, 46, 4),
(50, 49, 2),
(51, 1, 4),
(51, 3, 5),
(51, 8, 2),
(51, 15, 1),
(51, 18, 3),
(52, 13, 2),
(52, 17, 4),
(52, 6, 3),
(52, 29, 1),
(52, 50, 5),
(53, 27, 1),
(53, 25, 4),
(53, 19, 2),
(53, 32, 5),
(53, 34, 3),
(54, 24, 4),
(54, 14, 1),
(54, 8, 3),
(54, 12, 5),
(54, 21, 2),
(55, 46, 5),
(55, 16, 4),
(55, 9, 3),
(55, 11, 2),
(55, 1, 1),
(56, 7, 5),
(56, 30, 4),
(56, 5, 2),
(56, 45, 1),
(56, 39, 3),
(57, 40, 2),
(57, 33, 4),
(57, 2, 1),
(57, 20, 3),
(57, 10, 5),
(58, 4, 1),
(58, 50, 3),
(58, 28, 4),
(58, 38, 2),
(58, 30, 5),
(59, 31, 4),
(59, 37, 2),
(59, 12, 5),
(59, 45, 3),
(59, 27, 1),
(60, 6, 4),
(60, 1, 5),
(60, 21, 2),
(60, 48, 3),
(60, 47, 1),
(61, 35, 4),
(61, 7, 5),
(61, 33, 1),
(61, 18, 3),
(61, 23, 2),
(62, 9, 5),
(62, 22, 4),
(62, 36, 3),
(62, 44, 1),
(62, 42, 2),
(63, 41, 4),
(63, 25, 5),
(63, 12, 3),
(63, 32, 2),
(63, 39, 1),
(64, 19, 5),
(64, 14, 2),
(64, 29, 4),
(64, 34, 3),
(64, 8, 1),
(65, 48, 2),
(65, 36, 5),
(65, 45, 1),
(65, 5, 3),
(65, 23, 4),
(66, 50, 4),
(66, 6, 1),
(66, 35, 5),
(66, 20, 3),
(66, 27, 2),
(67, 32, 1),
(67, 30, 5),
(67, 3, 4),
(67, 7, 2),
(67, 13, 3),
(68, 11, 2),
(68, 10, 4),
(68, 24, 1),
(68, 48, 3),
(68, 25, 5),
(69, 29, 4),
(69, 44, 2),
(69, 40, 5),
(69, 34, 3),
(69, 41, 1),
(70, 22, 5),
(70, 6, 4),
(70, 21, 2),
(70, 27, 3),
(70, 39, 1),
(71, 9, 3),
(71, 4, 5),
(71, 2, 1),
(71, 43, 4),
(71, 19, 2),
(72, 33, 1),
(72, 14, 4),
(72, 47, 3),
(72, 1, 5),
(72, 25, 2),
(73, 49, 4),
(73, 43, 1),
(73, 11, 3),
(73, 24, 2),
(73, 9, 5),
(74, 10, 3),
(74, 27, 5),
(74, 35, 1),
(74, 13, 4),
(74, 8, 2),
(75, 12, 3),
(75, 39, 4),
(75, 31, 5),
(75, 45, 1),
(75, 50, 2),
(76, 6, 2),
(76, 47, 4),
(76, 19, 1),
(76, 30, 3),
(76, 40, 5),
(77, 22, 2),
(77, 3, 4),
(77, 26, 1),
(77, 48, 3),
(77, 8, 5),
(78, 7, 4),
(78, 33, 5),
(78, 21, 3),
(78, 44, 2),
(78, 19, 1),
(79, 13, 4),
(79, 16, 5),
(79, 45, 1),
(79, 23, 2),
(79, 34, 3),
(80, 49, 5),
(80, 8, 2),
(80, 14, 4),
(80, 31, 1),
(80, 12, 3);


-- ESEGUIAMO QUESTA QUERY PER AGGIORNARE LA VISTA CHE ABBIAMO CREATO CON LE INFORMAZIONI UTILI DELLE VENDITE

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



-- Quali sono le query da eseguire per verificare quante unità di un prodotto ci sono in un dato magazzino e per monitorare le soglie di restock?

SELECT 
	ws.WarehouseID
    , vw.ProductID 
    , CategoryID
    , SafeStockLevel 
    , SUM(OrderQuantity) AS TotalQuantity
    , StartingStock 
    , (StartingStock - SUM(OrderQuantity)) AS FinalStock
	,  IF ((StartingStock - SUM(OrderQuantity)) < SafeStockLevel, "SI", "NO") AS Need_Reorder
FROM 
	vw_generalinfo vw
JOIN 
	warehousestock ws
ON 
	vw.WarehouseID = ws.WarehouseID AND vw.ProductID = ws.ProductID
WHERE 
	OrderDate = CURDATE()    
GROUP BY ws.WarehouseID, vw.ProductID 
HAVING Need_Reorder = "SI" 
ORDER BY ws.WarehouseID, vw.ProductID 
;


-- QUESTA QUERY SERVE AD AGIORNARE AUTOMATICAMENTE LA TABELLA WAREHOUSESTOCK DOPO AVER EFFETTUATO IL RIORDINO QUOTIDIANO DEI PRODOTTI SCESI SOTTOSOGLIA

BEGIN;

UPDATE
	warehousestock ws
	JOIN
    VW_Restock_SOTTOSOGLIA vw
    ON
    vw.WarehouseID = ws.WarehouseID AND vw.ProductID = ws.ProductID
SET
	ws.StartingStock = ((ws.StartingStock - FinalStock) * 1.5) + FinalStock
;


-- QUESTA QUERY SERVE AD AGGIORNARE QUOTIDIANAMENTE E IN MODO AUTOMATICO LA GIACENZA
UPDATE
	warehousestock ws
	JOIN
    vw_aggiornamento_giacenza vw
    ON
    vw.WarehouseID = ws.WarehouseID AND vw.ProductID = ws.ProductID
SET
	ws.StartingStock = FinalStock
;

ROLLBACK;


-- QUESTA QUERY SERVE PER AGGIORNARE L'INVENTARIO DEI PRODOTTI CHE SONO SCESI SOTTO SOGLIA NELLA GIORNATA CORRENTE

BEGIN;

UPDATE
	warehousestock
SET
	StartingStock = StartingStock  
								   -   (SELECT
											TotalQuantity 
										FROM 
											vw_restock 
										WHERE
											WarehouseID = 1  -- <-- Digitare il WarehouseID
											AND 
											ProductID = 9  -- <-- Digitare il ProductID
                                            )
																+ 
																	(SELECT
																		TotalQuantity * 1.5 
																	FROM
																		vw_restock 
																	WHERE 
																		WarehouseID = 1  -- <-- Digitare il WarehouseID
                                                                        AND 
                                                                        ProductID = 9  -- <-- Digitare il ProductID
                                                                        )

WHERE
	WarehouseID = 1 -- <-- Digitare il WarehouseID
    AND
    ProductID = 9 -- <-- Digitare il ProductID
    
;
    
ROLLBACK;




