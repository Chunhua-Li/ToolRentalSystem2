-- is-a 
ALTER TABLE Users
ADD UserStatus VARCHAR(20);

-- sample data
UPDATE Users
SET UserStatus = 'Active'
WHERE UserID IN (1, 3, 5, 7, 9);

UPDATE Users
SET UserStatus = 'Inactive'
WHERE UserID IN (2, 4, 6, 8, 10);


--contains
ALTER TABLE Inventories
ADD QuantityHistory INT;

-- sample data
UPDATE Inventories
SET QuantityHistory = 5
WHERE InventoryID = 1;

UPDATE Inventories
SET QuantityHistory = 8
WHERE InventoryID = 2;

-- is-related-to Relationship 
ALTER TABLE Rentals
ADD RentalStatus VARCHAR(20);

-- sample data
UPDATE Rentals
SET RentalStatus = 'Active'
WHERE RentalID IN (1, 3, 5, 7, 9);

UPDATE Rentals
SET RentalStatus = 'Closed'
WHERE RentalID IN (2, 4, 6, 8, 10);
