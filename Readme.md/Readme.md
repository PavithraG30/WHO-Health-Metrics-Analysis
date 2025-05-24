# WHO Health Metrics Analysis

## 📚 Project Overview:
This project focuses on analyzing global health indicators based on WHO (World Health Organization) data.  
The objective is to clean, organize, and query the data using **SQL**, and then visualize key health trends through **Tableau**.

I worked on this project to strengthen my **SQL querying**, **data cleaning**, **analysis** and **data visualization** skills.

---

## 🗄️ Database Structure:

- **Database Name:** `who_health_metrics`
- **Tables:**
  - `countries` – stores country details and development stage.
  - `health_metrics` – stores yearly health statistics like life expectancy, adult mortality, infant deaths, etc.
  - `health_factors` – stores additional health factors like alcohol consumption, expenditure, vaccination rates, and GDP.

✅ Relationships between tables were established via primary and foreign keys.  
✅ ER Diagram created after database setup.

---

## 🧹 Data Cleaning Steps:
- Removed duplicate records.
- Standardized country names and development stage entries.
- Handled null values where necessary.
- Verified consistency of year data across tables.

---

## 📊 Analysis Performed (SQL):

1. **Data Cleaning Queries**  
2. **Statistical Summaries:**  
   - Total deaths by cause.
3. **Cumulative Analysis:**  
   - Global average statistics.
   - How life expectancy changed each year.
4. **Part-to-Whole Analysis:**  
   - Deaths by development stage.
   - Country-wise adult mortality.
   - Health expenditure by development stage.
5. **Advanced Insights:**  
   - Which developed country had the highest death rate overall?
   - Which year recorded the highest impact of health issues?
   - Ranking countries by lowest total deaths.

---

## 🛠️ Tools Used:
- **MySQL** for data handling and querying.
- **dbdiagram.io** for ER diagram generation.
- **Tableau** for building visual dashboards.

---

## 📈 Data Visualization:

- Built an interactive dashboard with:
  - KPIs: Total Population, Total Expenditure, Average Life Expectancy (with tiny sparklines).
  - Top 10 countries by major health issues.
  - Life expectancy trends across years.
  - Health indicators comparison by development stage.
  - Deaths under five, adult, and infant deaths by country.

🔗 **View Full Tableau Dashboard Here:**  
👉 [Tableau Public - WHO Health Metrics Dashboard](https://public.tableau.com/app/profile/pavithra.g7529/vizzes)

---

## 📋 Folder Structure:

```
Data/
├── countries.csv
├── health_metrics.csv
├── health_factors.csv

SQL/
├── table_creation.sql
├── data_cleaning_queries.sql
├── analysis_queries.sql
├── er_diagram.png

README.md
```

---

## 🚀 Future Improvements:
- Add country-wise clustering based on health indicators.
- Predict life expectancy trends using machine learning.
- Deep-dive visualizations into regional comparisons.

---

## 🙋‍♀️ About Me:
I'm passionate about turning messy data into meaningful insights!  
Currently building my portfolio in **Data Analysis** and **SQL + Tableau projects**.

Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/pavithrag30/).

📄 **License:** This project is licensed under the [MIT License](LICENSE).

---

# Thank you for viewing my project! 🚀
