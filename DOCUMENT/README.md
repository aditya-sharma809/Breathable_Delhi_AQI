# Breathable Delhi: AQI Monitoring Infrastructure Assessment

## 📌 Project Overview
An end-to-end data analytics project evaluating the spatial distribution and infrastructure coverage of Air Quality Index (AQI) monitoring stations across Delhi NCR. The analysis identifies key coverage gaps, mathematically validates station density disparities, and provides data-backed recommendations for strategic sensor deployment.

---

## 🛠️ Tech Stack & Tools
- **Database / Querying:** SQL (PostgreSQL / BigQuery)
- **Data Analysis & Modeling:** Python (Pandas, SciPy, NumPy)
- **Data Visualization:** Looker Studio / Power BI, Matplotlib, Seaborn
- **Documentation & Version Control:** Git, GitHub

---

## 📂 Project Structure
```text
├── data/              # Raw and processed datasets
├── sql/               # Data cleaning and aggregation SQL queries
├── notebook/          # Jupyter notebooks with statistical testing & EDA
└── docs/              # Project documentation and summary files

📊 Key Findings & Insights
1. Infrastructure Gap: Identified low-density sensor coverage in over 90% of outer Delhi zones.
2. Statistical Validation: Conducted independent T-tests confirming significant variance in sensor readings across urban vs. suburban clusters ($P\text{-value}: 0.0$).
3. Deployment Roadmap: Formulated a priority deployment matrix for policy-makers to optimize allocation of real-time monitoring units.