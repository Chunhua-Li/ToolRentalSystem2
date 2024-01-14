-- Categories Table
CREATE TABLE Categories (
  CategoryID INT NOT NULL,
  CategoryName VARCHAR(45) NOT NULL, 
  PRIMARY KEY (CategoryID)
);

-- Users Table
CREATE TABLE Users (
  UserID INT NOT NULL,
  UserName VARCHAR(50) NOT NULL,
  Email VARCHAR(100),
  UserStatus VARCHAR(5),
  PRIMARY KEY (UserID)
);

-- Inventories Table
CREATE TABLE Inventories (
  InventoryID INT NOT NULL,
  CategoryID INT,
  Quantity INT,
  AvailbilityStatus VARCHAR(3),
  RentalPrice DECIMAL(8, 2),
  PRIMARY KEY (InventoryID),
  CONSTRAINT fk_inventory_category FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Rentals Table
CREATE TABLE Rentals (
  RentalID INT NOT NULL,
  InventoryID INT,
  UserID INT,
  RentalDate TIMESTAMP,
  ReturnDate TIMESTAMP,
  PRIMARY KEY (RentalID),
  CONSTRAINT fk_rental_inventory FOREIGN KEY (InventoryID) REFERENCES Inventories(InventoryID),
  CONSTRAINT fk_rental_user FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Tools Table
CREATE TABLE Tools (
  ToolID INT NOT NULL,
  ToolName VARCHAR(50) NOT NULL,
  CategoryID INT,
  Description VARCHAR(255),
  PRIMARY KEY (ToolID),
  CONSTRAINT fk_tool_category FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- COMMIT statement to save the changes
COMMIT;
