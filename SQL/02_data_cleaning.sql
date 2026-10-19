```sql
USE HRAnalyticsDB;
GO

-- Create the cleaned table
SELECT
    EmployeeNumber,
    Age,
    NULLIF(LTRIM(RTRIM(Attrition)), '') AS Attrition,
    NULLIF(LTRIM(RTRIM(BusinessTravel)), '') AS BusinessTravel,
    NULLIF(LTRIM(RTRIM(Department)), '') AS Department,
    NULLIF(LTRIM(RTRIM(JobRole)), '') AS JobRole,
    NULLIF(LTRIM(RTRIM(Gender)), '') AS Gender,
    NULLIF(LTRIM(RTRIM(OverTime)), '') AS OverTime,
    JobSatisfaction,
    WorkLifeBalance,
    MonthlyIncome,
    TotalWorkingYears,
    YearsAtCompany
INTO dbo.hr_attrition_clean
FROM dbo.hr_attrition_raw;
GO

-- Verify cleaned record count
SELECT COUNT(*) AS Cleaned_Records
FROM dbo.hr_attrition_clean;
GO
```