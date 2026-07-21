# 🫁 Breathable Delhi: AQI Monitoring Infrastructure Assessment & Spatial Analysis

[![Python](https://img.shields.io/badge/Python-3.9+-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![SQL](https://img.shields.io/badge/SQL-PostgreSQL%2FBigQuery-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)]()
[![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-150458?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![Looker Studio](https://img.shields.io/badge/Dashboard-Looker%20Studio-F4B400?style=for-the-badge&logo=google&logoColor=white)]()

---

## 📌 Business Overview & Executive Summary
Air Quality Index (AQI) monitoring forms the bedrock of environmental health policy in India. However, the geographic coverage and deployment density of Continuous Ambient Air Quality Monitoring (CAAQM) stations vary significantly across states and urban zones.

**Breathable Delhi** is an end-to-end analytics project that evaluates national and regional AQI station deployment. By processing over **441,000+ data logs**, this analysis quantifies infrastructure gaps, tracks time-series coverage growth (2022–2025), identifies data anomalies, and delivers data-backed recommendations for strategic sensor allocation.

---

## 🖥️ Executive Analytics Dashboard

![AQI Analytics Dashboard](Screenshot%202026-07-12%20160256.png)

### ❓ Key Questions Answered by the Dashboard:

* **Q1: How is the monitoring infrastructure distributed across Delhi NCR?**
  * *Finding:* Over **90% of areas are classified as 'Low' density**, highlighting a severe centralized resource distribution where suburban corridors lack sufficient sensors.
* **Q2: Is monitoring coverage improving over time?**
  * *Finding:* Time-series data reveals a steady upward trend in active station counts from **April 2022 to April 2025**, proving consistent policy implementation and infrastructure expansion.
* **Q3: Are there anomalous data points or reporting issues?**
  * *Finding:* Scatter plot outlier analysis flagged specific periods with sudden station count drops, pinpointing potential sensor maintenance windows or data transmission outages.

---

## 📂 Repository Structure
```text
├── DATA/                                    # Raw datasets and processed station logs
├── NOTEBOOK/                                # Jupyter Notebooks (EDA, Statistical Testing)
├── SQL/                                     # Data cleaning, Window functions & Joins
├── Screenshot 2026-07-12 160256.png         # Main Interactive Executive Dashboard
├── total_areas, avg_stations by state.png   # Area vs Station visual plot
├── number_of_monitoring_stations...png      # State-wise Station Count & Rank
├── avg_stations_in_state...png              # Intra-state Average & Ranking plot
└── README.md                                # Project Documentation
