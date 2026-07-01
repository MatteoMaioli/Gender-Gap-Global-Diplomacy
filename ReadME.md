# Gender Gap in Global Diplomacy (1968–2021)

## Project Overview

This project analyzes gender disparities in diplomatic appointments worldwide between 1968 and 2021.  
The objective is to explore long-term trends in female representation, regional differences, and role distribution within global diplomacy.

The analysis is performed using SQL and focuses on identifying whether the gender gap has changed over time and across different regions and diplomatic roles.

---

## Key Objectives

- Measure overall gender imbalance in diplomatic roles
- Analyse the evolution of the female-to-male ratio over time
- Identify countries receiving the highest number of US diplomatic assignments
- Compare gender distribution across diplomatic titles
- Investigate regional differences in gender representation
- Focus on specific regions (e.g., Nordic countries) to highlight variation

---

## Dataset

The dataset contains diplomatic appointment records from **1968 to 2021**, including:

- Gender of diplomats  
- Diplomatic title  
- Sending and receiving countries  
- Year of appointment  
- Regional classification  

A **codebook** was used to map categorical variables (e.g., regions, titles) into interpretable labels.

---

## Tools Used

- PostgreSQL (data extraction and aggregation)
- SQL (data analysis and transformation)
- Excel (data visualization and pivot tables)

---

## Key Insights

- A strong gender imbalance persists, with male diplomats significantly outnumbering female diplomats.
- Female representation has increased steadily over time, with a noticeable acceleration after 2013.
- The distribution of diplomatic roles is broadly similar across genders, suggesting a **quantitative rather than qualitative gap**.
- Nordic countries exhibit a relatively higher level of gender balance compared to other regions.
---

## Conclusion

Although gender disparity remains a structural feature of global diplomacy, the analysis shows consistent improvement in female representation over time.  
The most significant progress occurs in recent years, indicating a faster pace of change after 2013.  
However, full gender parity has not yet been achieved.

---

## Repository Structure

/sql_queries
SQL_GenDip_Dataset_Project.sql

/data
GenDip_Dataset_1968-2021.csv 

/visualizations
SQL_GenDip_Dataset_Project.pdf

README.md


---

## Notes

- The analysis is based on aggregated data using SQL queries executed on PostgreSQL.
- Gender values coded as '99' were excluded from the analysis to ensure data quality.
- The female-to-male ratio is computed as a direct comparison of aggregated counts per year and region.
- Visualizations were created using Excel pivot tables based on SQL-extracted data.

---

## Repository

The full project, including SQL queries, dataset references, and documentation, is available on GitHub:

https://github.com/MatteoMaioli/Gender-Gap-Global-Diplomacy

---

## Final Considerations

Despite the progress observed in recent years, gender inequality in diplomacy remains a structural issue.  
Continued monitoring of future trends is necessary to assess whether the observed acceleration in female representation will lead to long-term parity.
