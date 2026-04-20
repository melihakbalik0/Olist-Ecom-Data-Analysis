# 📊 Olist E-commerce Data Engineering & Analysis

This repository demonstrates a complete SQL-based data engineering and analytics workflow using the **Olist Brazilian E-commerce dataset**. The project focuses on transforming raw transactional data into high-level business intelligence.

---

## 🏗 Project Architecture

1.  **Database Schema Design:** Engineered a relational database structure across 7 tables, implementing primary and foreign key constraints for data consistency.
2.  **Data Integrity & Validation:** Conducted rigorous row-count audits to verify the migration of **99,441 unique customers** and **100,739 payment records**.
3.  **Reporting Automation:** Built a centralized `VW_Order_Summary` View to simplify complex joins and provide a "single source of truth" for reporting.
4.  **Advanced Analytics:** Implemented a **Recency, Frequency, Monetary (RFM)** model to segment the customer base and identify loyalty patterns.

---

## 📈 Analytical Outputs & Raw Data
Since this is a data-driven project, you can find all structured outputs in the `/outputs` folder. GitHub's built-in data viewer allows you to see these results as formatted tables:

* **[Data Validation Summary](./outputs/data_check.csv):** Proof of data integrity and record counts.
* **[RFM Segmentation Table](./outputs/rfm_analysis.csv):** Final customer clusters based on value and activity.
* **[Business Insights](./outputs/business_analysis.csv):** Revenue performance and logistics bottleneck analysis.

---

## 🛠 Tech Stack & Skills
* **Database:** MySQL (Advanced Querying, Joins, Views)
* **Concepts:** ETL Processes, Data Normalization, Customer Segmentation (RFM), Logistics Performance Tracking.
* **Environment:** macOS / Linux (Ubuntu)

---

## 📁 Repository Guide
* `01_Database_Setup.sql`: DDL scripts for schema and constraints.
* `02_Data_Validation.sql`: Scripts for auditing data loads.
* `03_View_Automation.sql`: Automated view creation for analytics.
* `04_Business_Insights.sql`: Core business metric queries.
* `05_RFM_Analysis.sql`: Logic for the customer segmentation model.

---
**Developed by Melih Talha Akbalık** *Software Engineering Student @ Ankara*
