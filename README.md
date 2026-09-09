# AI Job Market & Salary Analysis

This project analyzes a large dataset of AI-related job postings to uncover salary trends, skill demand, industry patterns, and hiring activity across regions and company types. It combines exploratory data analysis (EDA), data cleaning and feature engineering, SQL-based market analysis, and an XGBoost salary prediction model.

The work is designed to answer business and career questions such as:
- Which AI job titles have the highest salaries?
- Which industries and countries are paying the most?
- Which skills are most in demand across the AI market?
- How experience level, education, and company size relate to compensation?
- Can a machine learning model reasonably predict salary from job attributes?

---

## Project Overview

The repository contains a complete end-to-end analysis workflow for AI job market research, including:
- Data exploration and cleaning
- Feature engineering and encoding
- SQL queries for business and market insights
- Machine learning for salary prediction
- Dashboard and storytelling assets for presentation

This project is useful for job seekers, recruiters, and analysts who want to understand the current AI labor market and compensation dynamics.

---

## Repository Structure

- `ai_job_dataset.csv` — main dataset used for the analysis
- `Notebook.ipynb` — full exploratory analysis, preprocessing, feature engineering, and model training
- `SQL & Stortelling.sql` — SQL queries for salary, skill, and hiring trend analysis
- `Dashboard.pbix` — Power BI dashboard file for interactive reporting
- `Project_Storytelling.pdf` — project summary and business storytelling presentation
- `README.md` — project documentation

---

## Dataset Description

The dataset contains 15,000 AI job records and includes fields such as:

- `job_id`
- `job_title`
- `salary_usd`
- `salary_currency`
- `experience_level`
- `employment_type`
- `company_location`
- `company_size`
- `employee_residence`
- `remote_ratio`
- `required_skills`
- `education_required`
- `years_experience`
- `industry`
- `posting_date`
- `application_deadline`
- `job_description_length`
- `benefits_score`
- `company_name`

### Key Data Characteristics
- Salary data is normalized to USD for comparison.
- Skill requirements are represented as multi-valued text fields and later encoded for modeling.
- Date and categorical features are transformed for analysis and machine learning.
- Irrelevant or inconsistent data entries were cleaned, such as records outside the target geography addressed in the notebook.

---

## Analysis Workflow

### 1. Exploratory Data Analysis
The notebook performs a detailed EDA to evaluate:
- missing values
- duplicate records
- unique value distribution
- descriptive statistics
- target distribution and outlier checks
- salary and experience trends

### 2. Data Cleaning and Feature Engineering
The project includes several preprocessing steps, including:
- removing irrelevant or noisy records
- dropping unnecessary columns
- mapping abbreviated values to readable labels
- converting salary currency to USD
- transforming dates into a usable time format
- generating derived features such as job type from `remote_ratio`
- encoding multi-valued skill requirements into binary columns

### 3. SQL-Based Business Analysis
The SQL file contains queries to answer common data questions such as:
- average salary by job title
- average salary by industry
- average salary by country
- most common employers
- education requirements and salary levels
- skill demand counts (Python, SQL, AWS, Azure, NLP, etc.)

### 4. Machine Learning
The notebook builds a salary prediction model using:
- `train_test_split`
- `XGBRegressor`
- evaluation via `r2_score`

The model uses job attributes and encoded features to estimate compensation. The notebook also includes feature importance visualization to identify which variables have the strongest influence on salary.

---

## Tools and Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Missingno
- Scikit-learn
- XGBoost
- SQL
- Power BI
- Jupyter Notebook

---

## Setup Instructions

### Prerequisites
- Python 3.9+
- Jupyter Notebook or JupyterLab
- SQL client or SQL Server environment for running the SQL script
- Power BI Desktop (optional, for opening the dashboard)

### Install Dependencies

```bash
pip install pandas numpy matplotlib seaborn missingno scikit-learn xgboost
```

### Run the Notebook

1. Open the project folder.
2. Launch Jupyter Notebook.
3. Open `Notebook.ipynb`.
4. Run the cells in order from top to bottom.

---

## How to Use the Project

### For Data Analysis
Open `Notebook.ipynb` to:
- inspect the raw dataset
- review the EDA results
- understand preprocessing and feature engineering
- reproduce the salary prediction pipeline

### For SQL Analysis
Open `SQL & Stortelling.sql` in a SQL client and run the queries against a table containing the cleaned dataset. The script references a database named `Individual_Graduation_Project` and a table named `visualization_data`.

### For Dashboard Review
Open `Dashboard.pbix` in Power BI Desktop to explore the dashboard and visual storytelling assets.

### For Presentation Summary
Review `Project_Storytelling.pdf` for a presentation-ready summary of the project findings.

---

## Expected Outcomes

This project helps answer important questions in the AI hiring ecosystem, including:
- where the highest-paying AI jobs are located
- which roles and experience levels deliver the best compensation
- which skills are most in demand by employers
- how education and company scale affect salary levels
- which variables are most predictive of salary

---

## Business Value

The analysis supports several practical use cases:
- Career planning for students and professionals entering AI roles
- Salary benchmarking for hiring managers and recruiters
- Skill-gap analysis for upskilling and learning programs
- Market intelligence for companies evaluating AI talent demand

---

## Notes

This project is a strong example of a data analytics workflow applied to a real-world labor market dataset. It combines statistical analysis, SQL reporting, dashboarding, and predictive modeling in a single portfolio-ready project.

---

## Future Enhancements

- add more advanced salary forecasting models
- incorporate time-series analysis of salary trends over months/years
- build a web dashboard using Streamlit or Power BI
- expand the dataset with more countries, industries, and job markets
- validate predictions with cross-validation and more detailed error metrics

---

## Summary

This repository is a complete AI job market analysis project focused on salary trends, hiring patterns, and skills demand. It is suitable for academic, portfolio, or business intelligence purposes and demonstrates both analytical thinking and practical data science execution.
