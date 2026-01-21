# Sales & Marketing ROI Intelligence Dashboard

## 📌 Business Objective
The goal of this project is to build a production-style analytics pipeline that enables data-driven marketing and sales decisions by analyzing spend efficiency, revenue attribution, and customer acquisition performance.

This dashboard helps answer questions such as:
- Which marketing channels generate the highest ROI?
- How efficient is customer acquisition across campaigns?
- How do spend and revenue trends evolve over time?

---

## 🏗️ Architecture
Raw CSV data is processed through a cloud-based analytics pipeline:

CSV Files → Azure Blob Storage → Azure Data Factory → Azure SQL Database → Power BI

---

## 🔄 Data Ingestion & ETL
- Raw spend and revenue CSV files are ingested via **Azure Data Factory**
- Data is first loaded into **raw tables**
- Typed **fact tables** are populated using SQL stored procedures
- Incremental-safe design using truncate + insert logic

sales-marketing-roi-pipeline/adf/pipeline2.png

---

## 🧱 Data Model
The analytics layer is built using a **star schema** design:

### Fact Tables
- `fact_spend`
- `fact_revenue`

### Dimension Tables
- `dim_date`
- `dim_campaign`
- `dim_channel`

This modeling approach removes many-to-many relationships and ensures optimal Power BI performance.

sales-marketing-roi-pipeline/powerbi/model_view.png

---

## 📊 Key Metrics
The dashboard provides executive-level KPIs including:
- **ROAS (Return on Ad Spend)**
- **CAC (Customer Acquisition Cost)**
- **CTR (Click Through Rate)**
- **CPC (Cost Per Click)**
- Spend & Revenue trends over time

---

## 📈 Dashboard Overview

### Executive Overview

sales-marketing-roi-pipeline/powerbi/executive_overview.png
---

## 🔧 Technologies Used
- Azure Data Factory
- Azure SQL Database
- Azure Blob Storage
- Power BI
- SQL (ETL, data modeling, stored procedures)

---

## ✅ Outcome
This project demonstrates an end-to-end analytics solution with:
- Cloud-based ingestion and transformation
- Proper star schema data modeling
- Executive-ready KPI dashboards
- Strong focus on business impact and decision support

