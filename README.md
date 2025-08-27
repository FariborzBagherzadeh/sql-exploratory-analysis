# sql-exploratory-analysis
Exploratory Data Analysis (EDA) of global layoffs dataset using MySQL, uncovering trends by company, country, year, and industry.

# 📊 Exploratory Data Analysis (EDA) with MySQL

This project demonstrates how **Exploratory Data Analysis (EDA)** can be performed directly in **MySQL**. Using a real-world layoffs dataset, the analysis uncovers trends across companies, countries, industries, and time.  

The focus is on leveraging **SQL queries**—including aggregations, grouping, and window functions—to transform raw data into meaningful insights.

---

## 🔹 Dataset Overview
The dataset includes global layoff records from 2020–2023.  
Key columns:
- `company` – Company name  
- `location` – Company headquarters  
- `industry` – Industry type  
- `total_laid_off` – Number of layoffs  
- `percentage_laid_off` – Percentage of workforce laid off  
- `date` – Date of layoff event  
- `stage` – Company funding stage (e.g., Series B, Post-IPO)  
- `country` – Country of company  
- `funds_raised_millions` – Funding amount raised  

---

## 🔹 Analysis Performed
1. **Dataset Exploration**
   - Preview of layoffs data.  
   - Identified data ranges (min/max layoff dates).  

2. **Company-Level Analysis**
   - Total layoffs per company.  
   - Company + year layoffs aggregation.  
   - Top 5 companies by layoffs each year (using window functions).  

3. **Country-Level Analysis**
   - Total layoffs per country.  
   - Ranking countries with the highest layoffs.  

4. **Time-Based Analysis**
   - Layoffs by year.  
   - Monthly layoffs trend.  
   - Rolling cumulative layoffs over time.  

---

## 🔹 SQL Concepts Used
- `GROUP BY` and aggregations (`SUM`, `MIN`, `MAX`)  
- Date functions (`YEAR()`, `SUBSTRING()`)  
- Common Table Expressions (CTEs)  
- Window functions (`DENSE_RANK()`, `OVER()`)  
- Cumulative rolling totals  

---

## 🔹 Example Insights
- Largest layoffs occurred in the US and India.  
- Peak layoff activity in 2022.  
- Certain companies consistently rank among the top 5 by layoffs.  
- Monthly layoffs trend shows spikes during specific economic downturns.  

---

## 🔹 Skills Demonstrated
- **MySQL** for data exploration  
- **SQL for analytics** (beyond basic CRUD)  
- **Data storytelling with queries**  
- Use of **window functions** for ranking and rolling totals  

---

## 🔹 How to Use
1. Clone the repository:  
   ```bash
   git clone https://github.com/your-username/mysql-layoffs-eda.git
