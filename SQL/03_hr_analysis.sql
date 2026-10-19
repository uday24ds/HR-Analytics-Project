
USE HRAnalyticsDB;
GO

-- 1. Overall HR KPIs
SELECT
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' OR Attrition = '1' THEN 1 ELSE 0 END) AS Employees_Left,
    SUM(CASE WHEN Attrition = 'No' OR Attrition = '0' THEN 1 ELSE 0 END) AS Employees_Stayed,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' OR Attrition = '1' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0)
        AS DECIMAL(5,2)
    ) AS Attrition_Rate_Percent,
    AVG(CAST(Age AS DECIMAL(10,2))) AS Average_Age,
    AVG(CAST(MonthlyIncome AS DECIMAL(10,2))) AS Average_Monthly_Income,
    AVG(CAST(YearsAtCompany AS DECIMAL(10,2))) AS Average_Tenure_Years
FROM dbo.hr_attrition_clean;
GO

-- 2. Attrition by department
SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' OR Attrition = '1' THEN 1 ELSE 0 END) AS Employees_Left,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' OR Attrition = '1' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0)
        AS DECIMAL(5,2)
    ) AS Attrition_Rate_Percent
FROM dbo.hr_attrition_clean
GROUP BY Department
ORDER BY Attrition_Rate_Percent DESC;
GO

-- 3. Attrition by job role
SELECT
    JobRole,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' OR Attrition = '1' THEN 1 ELSE 0 END) AS Employees_Left,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' OR Attrition = '1' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0)
        AS DECIMAL(5,2)
    ) AS Attrition_Rate_Percent
FROM dbo.hr_attrition_clean
GROUP BY JobRole
ORDER BY Attrition_Rate_Percent DESC;
GO

-- 4. Attrition by overtime
SELECT
    OverTime,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEn Attrition = 1 THEN 1 ELSE 0 END) AS Employees_Left,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0)
        AS DECIMAL(5,2)
    ) AS Attrition_Rate_Percent
FROM dbo.hr_attrition_clean
GROUP BY OverTime
ORDER BY Attrition_Rate_Percent DESC;
GO

-- 5. Attrition by job satisfaction
SELECT
    JobSatisfaction,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' OR Attrition = '1' THEN 1 ELSE 0 END) AS Employees_Left,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' OR Attrition = '1' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0)
        AS DECIMAL(5,2)
    ) AS Attrition_Rate_Percent
FROM dbo.hr_attrition_clean
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;
GO

-- 6. Attrition by work-life balance
SELECT
    WorkLifeBalance,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' OR Attrition = '1' THEN 1 ELSE 0 END) AS Employees_Left,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' OR Attrition = '1' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0)
        AS DECIMAL(5,2)
    ) AS Attrition_Rate_Percent
FROM dbo.hr_attrition_clean
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;
GO

--Attrition by age
select max(age) as maximum_age, min(age) as minimum_age from dbo.hr_attrition_clean;

with age_segmentation as(
    select Attrition, case when age>=18 and age<35 then 'entry_level(18-35 aged)' 
        when age>=35 and age<50 then 'mid_level(35-50 aged)' 
        else 'senior_level(50 and above aged)'end as age_segments
    from dbo.hr_attrition_clean
), attrition_segments as(
select age_segments,
        sum(case when Attrition= 1 then 1 else 0 end )as employees_left,
        sum(case when Attrition= 0 then 1 else 0 end )as employees_stayed
from age_segmentation
group by age_segments
)select *,cast(( 100.0*employees_left/(employees_left+employees_stayed)) as decimal(18,2)) as attrition_rate
from attrition_segments
order by attrition_rate desc;

--Attrition by monthly income
select max(MonthlyIncome) as maximum_MI, min(MonthlyIncome) as minimum_MI from dbo.hr_attrition_clean;

with monthly_income_group as(
    select 
    *,
    case 
         when MonthlyIncome<5000 then 'Income is less than 5000'
         when MonthlyIncome<10000 then 'Income is less than 10000'
         when MonthlyIncome<15000 then 'Income is less than 15000'
         else 'Income is more than 15000'
    end as monthly_inc_grp
    from hr_attrition_clean
), attrition_by_mi as(
select
    monthly_inc_grp,
    sum(
    case
        when Attrition=1 then 1 else 0
    end
    ) as employees_left,
    sum(
    case
        when Attrition=0 then 1 else 0
    end
    ) as employees_stayed
from monthly_income_group
group by monthly_inc_grp
)select *, cast(100.0 *employees_left/(employees_left+employees_stayed)as decimal(18,2)) as attrition_rate from attrition_by_mi
order by attrition_rate desc;


--year_at_company
select max(YearsAtCompany) as maximum_tenure, min(YearsAtCompany) as minimum_tenure from dbo.hr_attrition_clean;

with tenure_group as(
    select
        Attrition,
        YearsAtCompany,
        case
            when YearsAtCompany<10 then 'less than 10 yrs'
            when YearsAtCompany<10 then 'between 10 & 20 yrs'
            when YearsAtCompany<10 then 'between 20 & 30 yrs'
            else 'more than 30 yrs'
        end as tenure_grp
    from hr_attrition_clean
), attrition_group as (
select 
    tenure_grp,
    SUM(case when Attrition=1 then 1 else 0
    end) as employees_left,
    SUM(case when Attrition=0 then 1 else 0
    end) as employees_stayed
from tenure_group
group by tenure_grp
)select 
    *, 
    cast(100.0* employees_left/(employees_left+employees_stayed)as decimal(18,2)) as attrition_rate, 
    (employees_left+employees_stayed) as total_emps
from attrition_group
order by attrition_rate desc;
