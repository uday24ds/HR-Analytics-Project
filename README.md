# HR Analytics — Employee Attrition Analysis

An end-to-end HR analytics project using **SQL Server, Power BI, and AI-assisted business interpretation** to analyze employee attrition, explore workforce patterns, and develop data-driven retention recommendations.

## Project Overview

Employee attrition can affect workforce stability, recruitment costs, productivity, and employee experience. This project analyzes historical employee data to understand attrition patterns and identify workforce segments that may require further investigation.

The project demonstrates a complete analytics workflow, from data validation and cleaning to SQL analysis, interactive Power BI reporting, and AI-assisted interpretation.

## Business Objectives

- Measure overall employee attrition and workforce retention.
- Analyze attrition across departments and job roles.
- Investigate relationships between attrition, overtime, job satisfaction, and work-life balance.
- Explore attrition patterns across age groups and employee tenure.
- Translate validated findings into practical HR recommendations.

## Dataset

**Dataset:** IBM HR Analytics Employee Attrition & Performance

- Original dataset size: 1,470 employee records.
- Original dataset fields: 35.
- Attrition is represented as `1` for employees who left and `0` for employees who stayed.

The analysis focuses on employee-level workforce characteristics and attrition outcomes.

## Tools and Technologies

| Tool | Purpose |
|---|---|
| SQL Server | Data validation, cleaning, aggregation, and analysis |
| SQL | KPI calculations and workforce segmentation |
| Power BI | Interactive dashboard and visual analysis |
| DAX | KPI measures and attrition calculations |
| AI-assisted analysis | Interpretation support and recommendation drafting |
| GitHub | Versioned project files and documentation |

## Project Workflow

1. **Data validation:** Review record counts, employee identifiers, missing values, and invalid numeric values.
2. **Data cleaning:** Prepare the cleaned analytical table while preserving the raw source data.
3. **SQL analysis:** Calculate attrition KPIs and analyze workforce segments.
4. **Power BI dashboard:** Present key metrics and interactive visualizations.
5. **AI-assisted insights:** Summarize verified findings and develop recommendations for further investigation.
6. **Documentation:** Publish SQL scripts, dashboard evidence, methodology, and business recommendations.

## Key Performance Indicators

The initial dataset-level benchmark figures are:

| KPI | Benchmark |
|---|---:|
| Total Employees | 1,470 |
| Employees Who Left | 237 |
| Employees Who Stayed | 1,233 |
| Attrition Rate | 16.12% |

These figures should be verified against the final cleaned table and Power BI measures before being treated as final project results.

## Power BI Dashboard

The dashboard explores:

- Overall employee attrition and retention KPIs.
- Employees leaving by department.
- Employees leaving by job role.
- Attrition by overtime status.
- Attrition by job satisfaction.
- Attrition by work-life balance.
- Interactive filtering by department and job role.

**Dashboard screenshots:** See the `PowerBI/Screenshots/` folder.

## SQL Analysis

The SQL scripts are organized as follows:

- `01_data_validation.sql` — Record counts, duplicate checks, missing values, and numeric validation.
- `02_data_cleaning.sql` — Preparation of the cleaned analytical table.
- `03_hr_analysis.sql` — Overall KPIs and segment-level attrition analysis.

## AI-Assisted Business Insights

The `AI-Insights/` folder contains:

- `01_Executive_Summary.md` — Project summary and workforce KPIs.
- `02_Attrition_Drivers.md` — Analytical dimensions and interpretation framework.
- `03_Retention_Recommendations.md` — Potential retention actions and monitoring metrics.
- `04_AI_Analysis_Methodology.md` — AI methodology, verification principles, and limitations.

AI supports interpretation and documentation. Numerical findings must be validated against SQL or Power BI outputs, and observed relationships should not be presented as proven causes.

## Business Value

This project demonstrates how workforce data can be transformed into understandable metrics and actionable questions for HR stakeholders. It emphasizes reproducible analysis, interactive reporting, and evidence-based recommendations.

## Limitations

The analysis describes patterns in a historical dataset. It does not establish causation or predict future attrition. Recommendations require further validation against organizational context before implementation.

## Author

**Udaysingh Rathod**

Aspiring Data Analyst | SQL Server | Power BI | Data Analysis

GitHub: https://github.com/uday24ds
