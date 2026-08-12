CREATE TABLE HR_Clean_Dataset(
Employee_ID VARCHAR(50),
Employee_Name VARCHAR(50),
Age INTEGER,
Age_Division VARCHAR(50),
Gender VARCHAR(20),
Department VARCHAR(100),
Job_Role VARCHAR(100),
Education_Level VARCHAR(50),
Marital_Status VARCHAR(30),
Salary NUMERIC(20,2),
Salary_status VARCHAR(50),
Bonus NUMERIC(20,2),
Bonus_status VARCHAR(50),
Experience_Years INTEGER,
Experience_status VARCHAR(20),
Overtime VARCHAR(5),
Work_Life_Balance INTEGER,
Life_status VARCHAR(20),
Job_Satisfaction INTEGER,
Satisfaction_status VARCHAR(20),
Promotion_Last_5Yrs VARCHAR(5),
Distance_From_Home INTEGER,
Distance_from_Home_status VARCHAR(20),
Remote_Work VARCHAR(5),
Attrition VARCHAR(5),
Exit_Reason VARCHAR(50), 
Joining_Date DATE,
Exit_Date DATE
);

SELECT * FROM HR_Clean_Dataset;

1--Total_Employees--

SELECT COUNT(*) AS Total_Employees
FROM HR_Clean_Dataset;

2--Total Attrition Employees--

SELECT COUNT(*) AS Attrition_Employees
FROM HR_Clean_Dataset
WHERE attrition = 'Yes';

3--Attrition_Rate--

SELECT ROUND(
COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*),2)
AS Attrition_Rate
FROM HR_Clean_Dataset;

4--Department_Wise_Attrition--

SELECT department, COUNT(*) AS Department_Attrition
From HR_Clean_Dataset
WHERE Attrition = 'Yes'
GROUP BY department
ORDER BY Department_Attrition DESC;

5--Salary_Wise_Attrition--

SELECT salary_status, COUNT(*) AS Salary_Attrition
FROM HR_Clean_Dataset
WHERE attrition = 'Yes'
GROUP BY salary_status
ORDER BY Salary_Attrition DESC;

6--Work_Life_Balance-Wise Attrition--

SELECT life_status, COUNT(*) AS Working_Life_Attrition
FROM HR_Clean_Dataset
WHERE attrition = 'Yes'
GROUP BY life_status
ORDER BY Working_Life_Attrition DESC;

7--Job_Satisfaction-Wise Attrition--

SELECT satisfaction_status, COUNT(*) AS Job_Satisfaction_Attrition
FROM HR_Clean_Dataset
GROUP BY satisfaction_status
ORDER BY Job_Satisfaction_Attrition DESC;

8--Promotion_Wise_Attrition--

SELECT promotion_last_5yrs, COUNT(*) AS Promotional_Attrition
FROM HR_Clean_Dataset
WHERE attrition = 'Yes'
GROUP BY promotion_last_5yrs
ORDER BY Promotional_Attrition DESC;

9--Exit_Reason_Analysis--

SELECT exit_reason, COUNT(*) AS Exit_Reason_Analysis
FROM HR_Clean_Dataset
WHERE attrition = 'Yes'
GROUP BY exit_reason
ORDER BY Exit_Reason_Analysis DESC;

10--Top_Risk_Factors_Analysis--

SELECT department, life_status, satisfaction_status, COUNT(*) AS Top_Factors_Attrition
FROM HR_Clean_Dataset
WHERE attrition = 'Yes'
GROUP BY department, life_status, satisfaction_status
ORDER BY Top_Factors_Attrition DESC;
















