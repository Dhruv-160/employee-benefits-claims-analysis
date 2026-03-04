SELECT Department, COUNT(*) AS Total_Claims
FROM employee_claims
GROUP BY Department
ORDER BY Total_Claims DESC;

SELECT Claim_Type, SUM(Claim_Amount) AS Total_Cost
FROM employee_claims
GROUP BY Claim_Type
ORDER BY Total_Cost DESC;

SELECT Claim_Status, COUNT(*) AS Total
FROM employee_claims
GROUP BY Claim_Status;

SELECT Department, AVG(Claim_Amount) AS Avg_Claim
FROM employee_claims
GROUP BY Department
ORDER BY Avg_Claim DESC;

SELECT 
strftime('%Y-%m', Claim_Date) AS Month,
COUNT(*) AS Total_Claims
FROM employee_claims
GROUP BY Month
ORDER BY Month;
