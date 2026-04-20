# Olist E-commerce Data Engineering & Analysis

This project demonstrates a complete SQL-based data engineering and analytics workflow using the Olist Brazilian E-commerce dataset. The project focuses on transforming raw transactional data into high-level business intelligence, specifically focusing on revenue growth, logistics performance, and customer loyalty.

---

## Project Architecture

1.  **Database Schema Design:** Engineered a relational database structure across 7 tables, implementing primary and foreign key constraints for data consistency.
2.  **Data Integrity & Validation:** Conducted rigorous row-count audits to verify the migration of 99,441 unique customers and 100,739 payment records.
3.  **Reporting Automation:** Built a centralized view_order_summary View to simplify complex joins and provide a single source of truth for reporting.
4.  **Advanced Analytics:** Implemented a Recency, Frequency, Monetary (RFM) model to segment the customer base and identify loyalty patterns.

---

## Analytical Outputs & Raw Data

* [Data Validation Summary](./CSV%20TABLE%20OUTPUTS/Data_check_Results.csv) (Verification of 99,441 unique records to ensure 100% data integrity during migration.)
* [RFM Segmentation Table](./CSV%20TABLE%20OUTPUTS/RFM_RESULTS.csv) (Customer behavioral analysis based on Recency, Frequency, and Monetary values.)
* [Business Insights](./CSV%20TABLE%20OUTPUTS/REVENUE_LEADERS.csv) (Ranking of the Top 10 best-selling product categories by revenue and order volume.)
* You can access the full set of analytical reports and raw data exports in the [CSV TABLE OUTPUTS](./CSV%20TABLE%20OUTPUTS/) folder.

---

## Scope & Future Roadmap

The current analysis focuses on core business metrics such as Revenue, Logistics, and Customer Loyalty. However, the dataset contains extensive unused metadata (product dimensions, customer reviews, and geographical details etc.). 

These additional data points can be leveraged in future iterations to generate deeper predictive insights, such as delivery cost optimization, sentiment analysis on reviews, or regional market demand forecasting.

---

## Tech Stack & Skills
* **Database:** MySQL (Advanced Querying, Joins, Views, Data Normalization)
* **Tools:** MySQL Workbench, macOS Environment
* **Domain:** ETL Processes, Business Intelligence, Customer Segmentation.

---

## Repository Guide
* `Database_Setup.sql`: DDL scripts for schema creation and constraints.
* `Data check.sql`: Scripts for auditing data loads and integrity.
* `view order summary.sql`: Automated view creation for analytical reporting.
* `Business_Analysis.sql`: Core business metric queries (Revenue, Logistics,RFM Analysis).

---
**Developed by Melih Talha Akbalık**
*Software Engineering Student*
