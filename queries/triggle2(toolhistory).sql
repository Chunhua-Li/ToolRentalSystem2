CREATE TABLE ToolHistory (
  ToolID INT NOT NULL,
  DescriptionHistory VARCHAR2(4000) NOT NULL,
  ChangeTimestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (ToolID, ChangeTimestamp),
  FOREIGN KEY (ToolID) REFERENCES Tools(ToolID)
);


CREATE OR REPLACE TRIGGER tr_update_tool_history
BEFORE UPDATE ON Tools
FOR EACH ROW
BEGIN
  -- Handle Update
  IF :NEW.Description != :OLD.Description THEN
    -- Get the existing DescriptionHistory for the specified ToolID
    SELECT DescriptionHistory
    INTO :NEW.DescriptionHistory
    FROM ToolHistory
    WHERE ToolID = :NEW.ToolID
      AND ChangeTimestamp = (
        SELECT MAX(ChangeTimestamp)
        FROM ToolHistory
        WHERE ToolID = :NEW.ToolID
      );

    -- Append the new Description with a comma
    :NEW.DescriptionHistory := :NEW.DescriptionHistory || ',' || :NEW.Description;

    -- Update the existing record in ToolHistory
    UPDATE ToolHistory
    SET DescriptionHistory = :NEW.DescriptionHistory
    WHERE ToolID = :NEW.ToolID
      AND ChangeTimestamp = (
        SELECT MAX(ChangeTimestamp)
        FROM ToolHistory
        WHERE ToolID = :NEW.ToolID
      );
  END IF;
END;
/

