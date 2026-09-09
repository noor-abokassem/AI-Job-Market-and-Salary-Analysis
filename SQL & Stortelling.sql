CREATE DATABASE Individual_Graduation_Project
USE Individual_Graduation_Project

-- AVG salary per each job title
SELECT job_title, AVG(salary_usd) as avg_Salary
from visualization_data
GROUP BY job_title
ORDER BY AVG_Salary DESC

-- Industries 
SELECT DISTINCT industry 
from visualization_data

-- Industries 
SELECT industry, COUNT(*) AS job_count
FROM visualization_data
GROUP BY industry
ORDER BY job_count DESC

-- most companies hiring
SELECT company_name, COUNT(*) AS Job_Applications
FROM visualization_data
GROUP BY company_name
ORDER BY Job_Applications DESC

-- companies with highest AVG salaries
SELECT company_name, AVG(salary_usd) AS avg_salary
FROM visualization_data
GROUP BY company_name
ORDER BY avg_salary DESC

-- AVG salaries per country country
SELECT company_location AS country, AVG(salary_usd) AS avg_salary
FROM visualization_data
GROUP BY company_location
ORDER BY avg_salary DESC

-- AVG salaries per education requirements
SELECT education_required, AVG(salary_usd) AS avg_salary
FROM visualization_data
GROUP BY education_required
ORDER BY avg_salary DESC

-- most required skills
SELECT 'AWS' AS skill, COUNT(*) AS demand FROM visualization_data WHERE AWS = 1
UNION ALL
SELECT 'Azure', COUNT(*) FROM visualization_data WHERE Azure = 1
UNION ALL
SELECT 'Computer Vision', COUNT(*) FROM visualization_data WHERE Computer_Vision = 1
UNION ALL
SELECT 'Data Visualization', COUNT(*) FROM visualization_data WHERE Data_Visualization = 1
UNION ALL
SELECT 'Deep Learning', COUNT(*) FROM visualization_data WHERE Deep_Learning = 1
UNION ALL
SELECT 'Docker', COUNT(*) FROM visualization_data WHERE Docker = 1
UNION ALL
SELECT 'GCP', COUNT(*) FROM visualization_data WHERE GCP = 1
UNION ALL
SELECT 'Git', COUNT(*) FROM visualization_data WHERE Git = 1
UNION ALL
SELECT 'Hadoop', COUNT(*) FROM visualization_data WHERE Hadoop = 1
UNION ALL
SELECT 'Java', COUNT(*) FROM visualization_data WHERE Java = 1
UNION ALL
SELECT 'Kubernetes', COUNT(*) FROM visualization_data WHERE Kubernetes = 1
UNION ALL
SELECT 'Linux', COUNT(*) FROM visualization_data WHERE Linux = 1
UNION ALL
SELECT 'MLOps', COUNT(*) FROM visualization_data WHERE MLOps = 1
UNION ALL
SELECT 'Mathematics', COUNT(*) FROM visualization_data WHERE Mathematics = 1
UNION ALL
SELECT 'NLP', COUNT(*) FROM visualization_data WHERE NLP = 1
UNION ALL
SELECT 'PyTorch', COUNT(*) FROM visualization_data WHERE PyTorch = 1
UNION ALL
SELECT 'Python', COUNT(*) FROM visualization_data WHERE Python = 1
UNION ALL
SELECT 'R', COUNT(*) FROM visualization_data WHERE R = 1
UNION ALL
SELECT 'SQL', COUNT(*) FROM visualization_data WHERE SQL = 1
UNION ALL
SELECT 'Scala', COUNT(*) FROM visualization_data WHERE Scala = 1
UNION ALL
SELECT 'Spark', COUNT(*) FROM visualization_data WHERE Spark = 1
UNION ALL
SELECT 'Statistics', COUNT(*) FROM visualization_data WHERE [Statistics] = 1
UNION ALL
SELECT 'Tableau', COUNT(*) FROM visualization_data WHERE Tableau = 1
UNION ALL
SELECT 'TensorFlow', COUNT(*) FROM visualization_data WHERE TensorFlow = 1
ORDER BY demand DESC;