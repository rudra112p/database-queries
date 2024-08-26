DELIMITER $$

CREATE PROCEDURE sp_CalculateCustomerLoyalty (
    IN p_CustomerID INT,
    IN p_TotalAmount DECIMAL(10, 2)
)
BEGIN
    DECLARE v_LoyaltyPoints INT;

    -- Calculate loyalty points (1 point per dollar spent)
    SET v_LoyaltyPoints = FLOOR(p_TotalAmount);

    -- Update the customer's loyalty points
    UPDATE Customer
    SET LoyaltyPoints = LoyaltyPoints + v_LoyaltyPoints
    WHERE CustomerID = p_CustomerID;
END $$

DELIMITER ;
