# HR Analytics — Employee Attrition Drivers

## 1. Objective

The objective of this analysis is to identify workforce segments with different employee attrition rates and investigate patterns that may help HR teams improve retention.

The analysis uses SQL Server to aggregate employee data and Power BI to visualize the results.

## 2. Analysis Dimensions

### Department
Compare employee counts and attrition rates across departments to identify areas that may require further investigation.

### Job Role
Analyze attrition across job roles to identify roles with relatively high employee turnover.

### Overtime
Compare attrition rates for employees who work overtime with those who do not. This can help determine whether overtime patterns warrant a closer workload review.

### Job Satisfaction
Examine attrition across job satisfaction levels to understand whether lower satisfaction scores coincide with higher attrition rates.

### Work-Life Balance
Compare attrition across work-life balance ratings to identify patterns that may support further employee-experience analysis.

### Age and Tenure
Group employees by age and years at the company to examine whether attrition varies across career stages and employee tenure.

## 3. How Attrition Rates Are Calculated

For each workforce segment:

**Attrition Rate = Employees Who Left ÷ Total Employees in the Segment × 100**

For example, if 20 out of 100 employees in a particular segment left, the segment's attrition rate would be 20%.

Segment-level rates should be interpreted alongside employee counts. A high percentage in a small group may represent fewer employees than a lower percentage in a much larger group.

## 4. Interpretation Framework

When reviewing the SQL results and Power BI dashboard, consider:

- Which departments and job roles have the highest attrition rates?
- Is attrition higher among employees who work overtime?
- How do attrition rates vary across job satisfaction levels?
- Do work-life balance ratings show a consistent relationship with attrition?
- Which age groups and tenure bands show the greatest differences?
- Are the observed differences based on sufficiently large employee groups?

## 5. Business Implications

The analysis can help HR stakeholders prioritize further investigation into employee experience, workload, career development, and retention practices.

However, a relationship between a workforce characteristic and attrition does not establish that the characteristic caused employees to leave. Other factors may influence the observed patterns.

## 6. AI-Assisted Interpretation

AI can assist in summarizing verified SQL outputs, comparing patterns across workforce segments, and drafting possible business explanations.

All numerical claims must be checked against the SQL results. Potential explanations should be treated as hypotheses until supported by additional evidence.

## 7. Conclusion

This analysis provides a structured approach to understanding employee attrition patterns. Its value lies in identifying areas for further investigation and supporting evidence-based HR decisions rather than assuming a single cause of employee turnover.
