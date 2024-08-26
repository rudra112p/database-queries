DELIMITER $$

CREATE PROCEDURE sp_UpdateStockLevel (
    IN p_ProductID INT,
    IN p_QuantityOrdered INT
)
BEGIN
    DECLARE v_StockLevel INT;
    DECLARE v_ReorderLevel INT;

    -- Update the stock level
    UPDATE Inventory
    SET StockLevel = StockLevel - p_QuantityOrdered
    WHERE ProductID = p_ProductID;

    -- Fetch the updated stock level and reorder level
    SELECT StockLevel, ReorderLevel
    INTO v_StockLevel, v_ReorderLevel
    FROM Inventory
    WHERE ProductID = p_ProductID;

    -- Check if stock level is below reorder level
    IF v_StockLevel < v_ReorderLevel THEN
        -- Insert logic for notifying supplier or placing a reorder
        CALL sp_NotifySupplier(p_ProductID);
    END IF;
END $$

DELIMITER ;
