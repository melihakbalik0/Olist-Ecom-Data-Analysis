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

* [Data Validation Summary](./CSV%20TABLE%20OUTPUTS/Data_Check_Results.csv)
* [RFM Segmentation Table](./CSV%20TABLE%20OUTPUTS/RFM_RESULTS.csv)
* [Business Insights](./CSV%20TABLE%20OUTPUTS/REVENUE_LEADERS.csv)

---

## Scope & Future Roadmap

**Current Focus:**
This project specifically targets Revenue Trends, Logistics Efficiency, and Customer Loyalty (RFM). We prioritized core attributes that offer immediate strategic value to an e-commerce business.

**Strategic Decisions:**
The Olist dataset contains vast metadata (product dimensions, review comments, etc.) that were not fully utilized in this phase. To maintain a high-quality analytical focus, we selected the most impactful features for the current business objectives.

**Future Enhancements:**
* **Logistics Optimization:** Utilizing product dimensions and weight to calculate freight efficiency and warehouse cost-reduction models.
* **Sentiment Analysis:** Integrating customer review text to perform NLP-based satisfaction analysis.
* **Predictive Modeling:** Transitioning from descriptive SQL analytics to Python-based predictive models such as Customer Churn Prediction.

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
* `Business_Analysis.sql`: Core business metric queries (Revenue, Logistics).

---
**Developed by Melih Talha Akbalık**
*Software Engineering Student*
