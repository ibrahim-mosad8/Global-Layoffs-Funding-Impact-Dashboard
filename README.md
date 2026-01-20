# Global-Layoffs-Funding-Impact-Dashboard
Global Layoffs & Funding Impact Dashboard

📌 Project Overview

This project analyzes global workforce layoffs across companies, industries, countries, and time, with a special focus on the relationship between company funding levels and layoff behavior.

The goal of the project is to move beyond simple counts and provide data-driven insights into when, where, and why layoffs occurred, and whether strong funding protected companies from workforce reductions.

The final output is a one-page interactive Power BI dashboard designed with a clear business-oriented storyline.


🎯 Business Questions Answered

When did layoffs peak over time?

Which countries and industries were most affected?

Which companies contributed the most to total layoffs?

Are early-stage companies more vulnerable to layoffs?

Does higher funding reduce the likelihood or severity of layoffs?


🧩 Dataset Description

The dataset contains layoff records with the following columns:

company – Company name

country – Country where layoffs occurred

location – City or region

industry – Company industry

date – Layoff date

total_laid_off – Number of employees laid off

percentage_laid_off – Percentage of workforce affected

stage – Company stage (Seed, Series A, IPO, etc.)

funds_raised_millions – Total funding raised (in millions)


🛠️ Tools & Technologies

SQL Server – Data cleaning, exploration, and validation

Power BI – Data modeling, DAX measures, and visualization

Power Query (M) – Handling missing values and transformations



---

🧹 Data Cleaning & Preparation

Key preparation steps included:

Creating backup and test tables before transformations

Handling NULL values responsibly (no blind imputation)

Replacing missing funding values using average imputation (documented assumption)

Preserving NULLs for percentage-based metrics when no reliable calculation was possible



---

📊 Dashboard Structure & Storyline

The dashboard follows a top-down analytical flow:

1. Layoffs Over Time – Identifies major layoff waves and trends


2. Layoffs by Country – Highlights geographic concentration


3. Layoffs by Industry – Compares industry exposure


4. Top Companies by Layoffs – Shows concentration among large firms


5. Layoff Severity by Company Stage – Analyzes workforce impact intensity


6. Funding vs Layoffs (Scatter Chart) – Examines whether funding mitigates layoffs



This structure guides stakeholders from high-level trends to deep analytical insights.


📈 Key Insights

Layoffs tend to occur in waves aligned with macroeconomic pressure

A small number of countries and industries account for most layoffs

Early-stage companies experience higher layoff severity

High funding does not guarantee workforce stability

Several well-funded companies still executed large-scale layoffs, suggesting strategic rather than purely financial drivers


🧮 KPIs Included

Total Layoffs

Average & Median Funding Raised

Funding per Laid-Off Employee

Number of Affected Companies

Countries Impacted

💡 Analytical Value

This project demonstrates:

Strong data storytelling skills

Business-oriented KPI design

Responsible data cleaning decisions

Advanced Power BI visualization techniques

📂 Repository Structure

├── data/                # Raw or cleaned datasets
├── sql/                 # SQL scripts for analysis & cleaning
├── powerbi/             # Power BI (.pbix) file
├── screenshots/         # Dashboard preview images
└── README.md

🚀 How to Use

1. Review SQL scripts for data preparation


2. Open the Power BI file to explore the dashboard


3. Use slicers (industry, country, stage, date) for interactive analysis


🧠 Conclusion

This project provides a comprehensive, insight-driven view of global layoffs and challenges the assumption that funding alone prevents workforce reductions. It reflects real-world analytical thinking and decision-focused dashboard design.
