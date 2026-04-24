# 🎓 Educational Dropout & Reintegration Analytics Data Warehouse

A Business Intelligence system designed to analyze school dropout and reintegration patterns across Tunisian regions, built with a star-schema data warehouse, a complete ETL pipeline, and interactive dashboards.

> **Academic Project** — Data Science / Business Intelligence Course | 07/01/2026  
> **Author:** Aline Aloulou Mahjoub 
> **Institution:** Polytechnique Sousse — 4th DS/GL/BI Anglo 1

---

## 📌 Overview

Educational dropout is a serious social and economic challenge in Tunisia. Each year, thousands of students leave the education system due to financial hardship, family problems, academic difficulties, and other barriers. This project addresses the lack of structured analytical tools for evaluating dropout trends and reintegration program effectiveness by building a full BI pipeline from heterogeneous raw data to actionable KPI dashboards.

---


> **Note:** The warehouse schema (dimensions, fact table, and ETL control table) is defined in the **pgAdmin SQL file** (`tunis_education_system.sql`). Run this script in pgAdmin/PostgreSQL to initialize the data warehouse before executing the ETL notebook.

---

## 📊 Dataset

- **Sources:** Two Tunisian regions — Tunis (MySQL relational database) and Sousse (quarterly CSV files)
- **Coverage:** 2021–2024 | ~575 dropout records across both regions
- **Download the full dataset here:** [📁 Google Drive Dataset Link](https://drive.google.com/drive/folders/1MEASuZBfIRa4pdz-Ry29Y3rdPp75O3Bu?usp=drive_link)
### Source Summary

| Source | Region | Format | Records | Period |
|--------|--------|--------|---------|--------|
| Tunis operational DB | Tunis | MySQL (3 tables) | ~150 | 2021–2024 |
| Quarterly exports | Sousse | CSV | ~85 | 2021–2024 |

### Key Tables (Tunis MySQL source)

- `students` — personal info: name, birthdate, gender, school, enrollment
- `dropout_records` — dropout date, reason, school distance, family income
- `reintegration_tracking` — program details, success status, start/completion dates, cost

---

## 🏗️ Data Warehouse Design

The warehouse follows a **Star Schema** stored in **PostgreSQL**, with one central fact table and six dimension tables.

### Star Schema

```
                        dim_Time
                           │
dim_Student ──── fact_education_dropout ──── dim_Region
                  │        │        │
            dim_Program  dim_       dim_Dropout_Reason
                      Education_Level
```

### Fact Table — `fact_education_dropout`

| Column | Description |
|--------|-------------|
| `student_key` | FK → dim_student (SCD Type 2) |
| `region_id` | FK → dim_region |
| `level_id` | FK → dim_education_level |
| `program_id` | FK → dim_program |
| `reason_id` | FK → dim_dropout_reason |
| `dropout_date_id` | FK → dim_time |
| `reintegration_date_id` | FK → dim_time |
| `reintegrated` | Boolean — did student return? |
| `days_to_reintegration` | Days between dropout and reintegration |
| `dropout_count` | Count of dropout events |

### Dimension Tables

| Dimension | Key Feature |
|-----------|-------------|
| `dim_student` | SCD Type 2 — tracks historical changes in student attributes |
| `dim_time` | Full daily records 2021–2025 (day, month, quarter, year) |
| `dim_region` | Tunis, Sousse (expandable to all 24 governorates) |
| `dim_education_level` | Primary, Middle School, High School, Higher Education |
| `dim_program` | Vocational Training, Academic Catch-up, Community Integration, Second Chance |
| `dim_dropout_reason` | Family, Academic, Financial, Work, Health, Marriage, Distance |

---

## ⚙️ ETL Process

The ETL pipeline is implemented in Python using **Pygrametl** and covers both sources.

### Steps

1. **Extract** — CSV via `CSVSource`; MySQL via `SQLSource` with incremental loading (checks `etl_control` table)
2. **Transform** — date normalization, missing value handling, categorical standardization, SCD Type 2 logic for students, fact row assembly
3. **Load** — dimensions loaded first (static ones preloaded), then fact table inserted into PostgreSQL

### ETL Control Table (`etl_control`)

Tracks per-source: `source_name`, `last_success_date`, `records_processed`, `status` — enables incremental loading and prevents duplicates.

---

## 📈 Key Results (11 KPIs)

| KPI | Finding |
|-----|---------|
| KPI 1 — Dropout by Region | Sousse: 415 dropouts, 39.8% reintegration; Tunis: 160 dropouts, 15% reintegration |
| KPI 2 — Reintegration Time | Tunis avg: 322 days; Sousse avg: 193 days (67% faster in Sousse) |
| KPI 3 — Trend Over Time | Peak of 39 dropouts/month in mid-2024; near zero by early 2025 |
| KPI 4 — Program Success | Vocational Training: 70.7% ✅; Second Chance School: 14.1% ❌ |
| KPI 5 — Overall Rate | 575 total dropouts; only 189 reintegrated (32.9%) |
| KPI 6 — By Education Level | Middle School most affected (241); High School worst reintegration (24.1%) |
| KPI 7 — Age Risk | Ages 16–18 account for 52% of all dropouts; 19+ have only 4.5% reintegration |
| KPI 8 — Gender × Reason | Family issues #1 for males; marriage + financial top causes for females |
| KPI 9 — Gender Outcomes | Males: 38.3% reintegration; Females: 27.4% — an 11-point gap |
| KPI 10 — Annual Trend | Dropouts grew 300% from 2021 to 2024; reintegration rate fell to 0% in 2024–2025 |
| KPI 11 — Dropout Reasons | Family (29.7%), Academic (19.7%), Financial (13%), Work (12.5%), Health (10.8%) |

---

## 🚀 Getting Started

### Prerequisites

- Python 3.8+
- PostgreSQL + pgAdmin
- MySQL (for Tunis source data)
- Power BI Desktop (for dashboard)

### Setup

```bash
# 1. Clone the repository
git clone https://github.com/alinealouloumahjoub/Educational-Dropout-and-Reintegration-Analytics.git
cd Educational-Dropout-and-Reintegration-Analytics

# 2. Create and activate a virtual environment
python -m venv venv
source venv/bin/activate       # Windows: venv\Scripts\activate

# 3. Install Python dependencies
pip install -r requirements.txt

# 4. Set up the MySQL source database
#    Import tunis_education_system.sql into MySQL via phpMyAdmin or CLI:
mysql -u root -p tunis_education_system < data/tunis_education_system.sql

# 5. Set up the PostgreSQL data warehouse
#    Open pgAdmin, connect to your PostgreSQL server, and run the pgAdmin SQL script
#    to create all dimension tables, the fact table, and the ETL control table.

# 6. Place the Sousse CSV file in data/
#    Download from the Google Drive link above and place cleaned_sousse_dropout.csv in data/

# 7. Run the ETL notebook
jupyter notebook etl/Educational_Analytics.ipynb
```

### Requirements

```
pygrametl
psycopg2
mysql-connector-python
pandas
numpy
matplotlib
seaborn
python-dateutil
jupyter
```

---

## 🛠️ Technology Stack

| Layer | Tool |
|-------|------|
| ETL & Analysis | Python, Pygrametl, Pandas, NumPy |
| Source Database | MySQL (MariaDB 10.4) |
| Data Warehouse | PostgreSQL (via pgAdmin) |
| Visualization | Power BI, Matplotlib, Seaborn |
| Notebook | Jupyter |

---

## ⚠️ Data Limitations

- Only 2 of Tunisia's 24 governorates are covered (Tunis and Sousse)
- Data spans 2021–2024 only — no pre-2021 historical baseline
- No long-term follow-up data after reintegration
- Socioeconomic details are incomplete in some records

---

## 🔭 Future Improvements

- Expand to all 24 Tunisian governorates for national-level analysis
- Add predictive ML models to flag at-risk students early
- Replace static Python charts with a live web dashboard (Streamlit or Dash)
- Implement automated alerts when dropout rates spike
- Integrate real-time data collection via APIs or mobile tools

---

## 📄 License

This project is for academic purposes only.

---

*Business Intelligence Project — Educational Dropout & Reintegration Analytics | Polytechnique Sousse*
