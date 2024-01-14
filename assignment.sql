CREATE OR REPLACE TRIGGER UpdateInventoryQuantity
AFTER INSERT ON Tools
FOR EACH ROW
BEGIN
  UPDATE Inventories
  SET Quantity = Quantity + 1
  WHERE InventoryID = :NEW.CategoryID;
END;
/
