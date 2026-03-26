-- Use database
use finance_project;

-- Create table
CREATE TABLE financial_data (
    Transaction_ID INT,
    Customer_ID INT,
    Account_Type VARCHAR(50),
    Amount FLOAT,
    Branch VARCHAR(50),
    Loan_Status VARCHAR(20)
);

-- Total Transcation Value
SELECT SUM(amount) AS total_transaction_value FROM financial_data;

-- Top 10 customers by transactions
SELECT customer_id, SUM(amount) AS total FROM financial_data 
GROUP BY customer_id 
ORDER BY total DESC 
LIMIT 10;

-- Branch Performance
SELECT Branch, SUM(Amount)
FROM financial_data
GROUP BY Branch 
ORDER BY SUM(Amount) DESC;

-- Approved Loan Count
SELECT COUNT(*) AS Loans_Approved FROM financial_data 
WHERE Loan_Status = 'Approved';
