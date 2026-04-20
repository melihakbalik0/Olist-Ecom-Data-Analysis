/*Objective: Ensuring all records are correctly imported and verifying dataset scale.
*/
SELECT 
    (SELECT COUNT(*) FROM Customers) AS Total_Customers,
    (SELECT COUNT(*) FROM Orders) AS Total_Orders,
    (SELECT COUNT(*) FROM Order_Items) AS Total_Order_Items,
    (SELECT COUNT(*) FROM Order_Payments) AS Total_Payments;