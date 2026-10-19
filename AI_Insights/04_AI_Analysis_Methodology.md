# AI-Assisted HR Analytics — Methodology

## 1. Purpose

This document describes how AI-assisted interpretation was used in the HR Analytics Employee Attrition project.

The project combines SQL Server for data analysis, Power BI for interactive reporting, and AI to help summarize verified results and formulate business recommendations.

AI supports the analytical workflow; it does not replace data validation or business judgment.

## 2. Project Workflow

### Step 1: Data Validation
SQL Server was used to inspect record counts, employee identifiers, missing values in important fields, and potentially invalid numeric values.

### Step 2: Data Cleaning
A cleaned analytical table was prepared from the raw dataset. Cleaning decisions should preserve the original data and be documented so the results can be reproduced.

### Step 3: SQL Analysis
SQL queries were used to calculate workforce KPIs and compare attrition across relevant employee segments, including department, job role, overtime, job satisfaction, work-life balance, age, and tenure.

### Step 4: Power BI Reporting
Power BI was used to display KPIs, compare workforce segments, and allow users to explore results with interactive filters.

### Step 5: AI-Assisted Interpretation
AI was used to help:
- Summarize validated analytical outputs.
- Explain differences in attrition rates.
- Suggest potential questions for further investigation.
- Draft recommendations for HR stakeholders.
- Improve the clarity of project documentation.

## 3. Data and Evidence Requirements

AI-generated numerical findings must be checked against the underlying SQL outputs or Power BI measures.

Every reported finding should identify the relevant metric, workforce segment, and comparison where possible.

For example, a statement that a particular group has a higher attrition rate should be supported by its actual attrition rate, employee count, and the comparison group.

Dataset-level benchmark figures should also be verified against the final cleaned table.

## 4. Avoiding Unsupported Conclusions

A difference in attrition rates does not, by itself, prove causation.

For example, if employees working overtime have a higher attrition rate, overtime may be a useful area to investigate. However, additional evidence is required to establish whether overtime contributes to employees leaving.

Potential explanations are therefore treated as hypotheses rather than confirmed causes.

## 5. Responsible Use of AI

The project follows these principles:

- Verify numerical outputs before publishing them.
- Do not invent findings when actual results are unavailable.
- Distinguish observed patterns from possible explanations.
- Avoid making assumptions about individuals based on demographic characteristics.
- Use recommendations as starting points for investigation, not automatic decisions.
- Protect confidential employee information and use aggregated reporting wherever appropriate.

## 6. Limitations

This project uses historical employee data. Its findings describe patterns within the available dataset and may not generalize to every organization.

The analysis does not establish causal relationships or predict future attrition unless additional methods are implemented and validated for those purposes.

AI-assisted interpretation may introduce errors or unsupported explanations, so human review remains necessary.

## 7. Conclusion

AI can improve the accessibility of analytical results by helping translate SQL outputs and dashboard findings into clear business language.

The most reliable workflow combines validated data, reproducible SQL analysis, transparent Power BI reporting, and careful review of AI-assisted interpretations.
