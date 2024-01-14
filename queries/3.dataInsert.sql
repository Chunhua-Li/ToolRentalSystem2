INSERT INTO Categories VALUES (1,'Augers');
INSERT INTO Categories VALUES (2,'Chainsaws');
INSERT INTO Categories VALUES (3,'Lawn Movers');
INSERT INTO Categories VALUES (4,'Pressure Washe4rs');
INSERT INTO Categories VALUES (5,'Tillers');
INSERT INTO Categories VALUES (6,'Carpet Cleaners');
INSERT INTO Categories VALUES (7,'Floor Strippers');
INSERT INTO Categories VALUES (8,'Heaters');

Select * from Categories;


-- Users Table
ALTER TABLE Users
ADD (Phone VARCHAR(15), PostalCode VARCHAR(10));
INSERT INTO Users (UserID, UserName, Email, Phone, PostalCode) VALUES (1, 'John Doe', 'john.doe@example.com', '(123) 456-7890', 'A1B2C3');
INSERT INTO Users (UserID, UserName, Email, Phone, PostalCode) VALUES (2, 'Jane Smith', 'jane.smith@example.com', '(456) 789-0123', 'D4E5F6');
INSERT INTO Users (UserID, UserName, Email, Phone, PostalCode) VALUES (3, 'Bob Johnson', 'bob.johnson@example.com', '(789) 012-3456', 'G7H8I9');
INSERT INTO Users (UserID, UserName, Email, Phone, PostalCode) VALUES (4, 'Alice Brown', 'alice.brown@example.com', '(012) 345-6789', 'J1K2L3');
INSERT INTO Users (UserID, UserName, Email, Phone, PostalCode) VALUES (5, 'Charlie Davis', 'charlie.davis@example.com', '(234) 567-8901', 'M4N5O6');
INSERT INTO Users (UserID, UserName, Email, Phone, PostalCode) VALUES (6, 'Eva White', 'eva.white@example.com', '(567) 890-1234', 'P7Q8R9');
INSERT INTO Users (UserID, UserName, Email, Phone, PostalCode) VALUES (7, 'Mike Jones', 'mike.jones@example.com', '(890) 123-4567', 'S1T2U3');
INSERT INTO Users (UserID, UserName, Email, Phone, PostalCode) VALUES (8, 'Olivia Clark', 'olivia.clark@example.com', '(234) 567-8901', 'V4W5X6');
INSERT INTO Users (UserID, UserName, Email, Phone, PostalCode) VALUES (9, 'David Lee', 'david.lee@example.com', '(678) 901-2345', 'Y7Z8A9');
INSERT INTO Users (UserID, UserName, Email, Phone, PostalCode) VALUES (10, 'Sophia Moore', 'sophia.moore@example.com', '(901) 234-5678', 'B1C2D3');
Select * from Users;

-- Tools
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (1, 'Power Drill', 1, 'Cordless drill with multiple speed settings');
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (2, 'Chainsaw Pro', 2, 'Gas-powered chainsaw with 18-inch bar');
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (3, 'Lawn Mower Deluxe', 3, 'Self-propelled lawn mower with adjustable cutting height');
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (4, 'Pressure Washer Max', 4, 'High-pressure washer for cleaning driveways and decks');
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (5, 'Tiller Master', 5, 'Electric garden tiller for soil cultivation');
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (6, 'Carpet Cleaner Pro', 6, 'Professional-grade carpet cleaner with dual tanks');
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (7, 'Floor Stripper Heavy Duty', 7, 'Heavy-duty floor stripper for removing floor coverings');
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (8, 'Space Heater Compact', 8, 'Compact space heater with adjustable thermostat');
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (9, 'Auger Earth Drill', 1, 'Gas-powered auger for digging holes in the ground');
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (10, 'Hedge Trimmer Electric', 2, 'Electric hedge trimmer with dual-action blades');
INSERT INTO Tools (ToolID, ToolName, CategoryID, Description) VALUES (11, 'Sod Cutter Heavy Duty', 3, 'Heavy-duty sod cutter for removing grass and roots');

Select * from Tools;

-- Inventories Table
INSERT INTO Inventories (InventoryID, CategoryID, Quantity, AvailbilityStatus, RentalPrice) VALUES (1, 1, 5, 'Yes', 29.99);
INSERT INTO Inventories (InventoryID, CategoryID, Quantity, AvailbilityStatus, RentalPrice) VALUES (2, 2, 8, 'Yes', 49.99);
INSERT INTO Inventories (InventoryID, CategoryID, Quantity, AvailbilityStatus, RentalPrice) VALUES (3, 3, 3, 'No', 39.99);
INSERT INTO Inventories (InventoryID, CategoryID, Quantity, AvailbilityStatus, RentalPrice) VALUES (4, 4, 10, 'Yes', 79.99);
INSERT INTO Inventories (InventoryID, CategoryID, Quantity, AvailbilityStatus, RentalPrice) VALUES (5, 5, 6, 'No', 59.99);
INSERT INTO Inventories (InventoryID, CategoryID, Quantity, AvailbilityStatus, RentalPrice) VALUES (6, 6, 4, 'Yes', 99.99);
INSERT INTO Inventories (InventoryID, CategoryID, Quantity, AvailbilityStatus, RentalPrice) VALUES (7, 7, 2, 'Yes', 129.99);
INSERT INTO Inventories (InventoryID, CategoryID, Quantity, AvailbilityStatus, RentalPrice) VALUES (8, 8, 7, 'No', 69.99);
INSERT INTO Inventories (InventoryID, CategoryID, Quantity, AvailbilityStatus, RentalPrice) VALUES (9, 1, 12, 'Yes', 39.99);
INSERT INTO Inventories (InventoryID, CategoryID, Quantity, AvailbilityStatus, RentalPrice) VALUES (10, 2, 5, 'No', 59.99);

Select * from Inventories;

-- Rentals Table
INSERT INTO Rentals (RentalID, InventoryID, UserID, RentalDate, ReturnDate) VALUES (1, 1, 1, TO_TIMESTAMP('2023-11-24 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-26 15:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Rentals (RentalID, InventoryID, UserID, RentalDate, ReturnDate) VALUES (2, 3, 2, TO_TIMESTAMP('2023-11-25 12:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-27 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Rentals (RentalID, InventoryID, UserID, RentalDate, ReturnDate) VALUES (3, 5, 3, TO_TIMESTAMP('2023-11-26 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-28 11:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Rentals (RentalID, InventoryID, UserID, RentalDate, ReturnDate) VALUES (4, 7, 4, TO_TIMESTAMP('2023-11-27 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-29 16:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Rentals (RentalID, InventoryID, UserID, RentalDate, ReturnDate) VALUES (5, 9, 5, TO_TIMESTAMP('2023-11-28 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-11-30 13:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Rentals (RentalID, InventoryID, UserID, RentalDate, ReturnDate) VALUES (6, 2, 6, TO_TIMESTAMP('2023-11-29 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-12-01 15:15:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Rentals (RentalID, InventoryID, UserID, RentalDate, ReturnDate) VALUES (7, 4, 7, TO_TIMESTAMP('2023-11-30 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-12-02 18:45:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Rentals (RentalID, InventoryID, UserID, RentalDate, ReturnDate) VALUES (8, 6, 8, TO_TIMESTAMP('2023-12-01 08:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-12-03 10:30:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Rentals (RentalID, InventoryID, UserID, RentalDate, ReturnDate) VALUES (9, 8, 9, TO_TIMESTAMP('2023-12-02 10:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-12-04 13:00:00', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO Rentals (RentalID, InventoryID, UserID, RentalDate, ReturnDate) VALUES (10, 10, 10, TO_TIMESTAMP('2023-12-03 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-12-05 17:15:00', 'YYYY-MM-DD HH24:MI:SS'));

Select * from rentals;

ALTER TABLE Users
ADD CONSTRAINT fk_user_rental
FOREIGN KEY (RentalID) REFERENCES Rentals(RentalID);
UPDATE Users
SET RentalID = 1 
WHERE UserID = 1;

UPDATE Users
SET RentalID = 2 
WHERE UserID = 3;

UPDATE Users
SET RentalID = 3 
WHERE UserID = 5;

UPDATE Users
SET RentalID = 4 
WHERE UserID = 7;

UPDATE Users
SET RentalID = 5 
WHERE UserID = 9;

UPDATE Users
SET RentalID = 6 
WHERE UserID = 2;

UPDATE Users
SET RentalID = 7 
WHERE UserID = 4;

UPDATE Users
SET RentalID = 8 
WHERE UserID = 6;

UPDATE Users
SET RentalID = 9 
WHERE UserID = 8;

UPDATE Users
SET RentalID = 10 
WHERE UserID = 10;





