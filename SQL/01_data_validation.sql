
USE HRAnalyticsDB;
GO

-- 1. Total records
SELECT COUNT(*) AS Total_Records
FROM dbo.hr_attrition_raw;
GO

-- 2. Duplicate employee IDs
SELECT EmployeeNumber, COUNT(*) AS Record_Count
FROM dbo.hr_attrition_raw
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1;
GO

-- 3. Missing values in key columns
SELECT
    SUM(CASE WHEN EmployeeNumber IS NULL THEN 1 ELSE 0 END) AS Missing_Employee_ID,
    SUM(CASE WHEN Attrition IS NULL THEN 1 ELSE 0 END) AS Missing_Attrition,
    SUM(CASE WHEN Department IS NULL THEN 1 ELSE 0 END) AS Missing_Department,
    SUM(CASE WHEN JobRole IS NULL THEN 1 ELSE 0 END) AS Missing_Job_Role,
    SUM(CASE WHEN MonthlyIncome IS NULL THEN 1 ELSE 0 END) AS Missing_Monthly_Income
FROM dbo.hr_attrition_raw;
GO

-- 4. Invalid numeric values
SELECT *
FROM dbo.hr_attrition_raw
WHERE Age < 18
   OR MonthlyIncome < 0
   OR TotalWorkingYears < 0
   OR YearsAtCompany < 0;
GO
