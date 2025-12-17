--B.Analysis
--1.Total Customers, Average Balance, Default Rate and Deposit Rate
SELECT 
  COUNT(*) AS total_customers,
  ROUND(AVG(balance), 2) AS avg_balance,
  ROUND(SUM(CASE WHEN `default` THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS default_rate_pct,
  ROUND(SUM(CASE WHEN deposit THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS deposit_rate_pct
FROM `bank-business-performance.bank_marketing.bank_clients`;

--2.Balance Related to Term Deposit
SELECT 
  deposit,
  ROUND(AVG(balance),2) AS avg_balance_each_deposit_status
FROM `bank-business-performance.bank_marketing.bank_clients`
GROUP BY deposit
ORDER BY avg_balance_each_deposit_status DESC;

--3.Customer Account Opening Rate After Campaign (Conversion Rate)
SELECT ROUND(SUM(CASE WHEN deposit THEN 1 ELSE 0 END) / COUNT(*) * 100,2) AS conversion_rate
FROM `bank-business-performance.bank_marketing.bank_clients`;

--4.Deposit Rate by Balance Group
WITH balance_group_analysis AS (
  SELECT 
    CASE 
      WHEN balance <= 0                         THEN 'Under 0K'
      WHEN balance > 0     AND balance <= 20000 THEN '0-20K'
      WHEN balance > 20000 AND balance <= 40000 THEN '20K-40K'
      WHEN balance > 40000 AND balance <= 60000 THEN '40K-60K'
      WHEN balance > 60000 AND balance <= 80000 THEN '60K-80K'
      ELSE 'Over 80K' 
    END AS balance_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN deposit THEN 1 ELSE 0 END) AS deposit_yes
  FROM `bank-business-performance.bank_marketing.bank_clients`
  GROUP BY balance_group
)
SELECT 
  balance_group,
  total_customers,
  deposit_yes,
  ROUND(deposit_yes / (SUM(total_customers) OVER ()) * 100, 2) AS deposit_rate_pct
FROM balance_group_analysis
ORDER BY deposit_rate_pct DESC;

--5.Customer Segmentation by Occupation and Loan Status
SELECT
  job,
  SUM(CASE WHEN loan THEN 1 ELSE 0 END) AS loan_customers,
  SUM(CASE WHEN housing THEN 1 ELSE 0 END) AS housing_loans,
  ROUND(AVG(balance),2) AS avg_balance
FROM `bank-business-performance.bank_marketing.bank_clients`
GROUP BY job
ORDER BY avg_balance DESC;

--6.Job Relted to Term Deposit
WITH job_analysis AS(
  SELECT
    job,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN deposit THEN 1 ELSE 0 END) AS deposit_yes
  FROM `bank-business-performance.bank_marketing.bank_clients`
  GROUP BY job
)
SELECT
 job,
 total_customers,
 deposit_yes,
 ROUND(deposit_yes / (SUM(total_customers) OVER()) * 100, 2) as deposit_rate_job_group
FROM job_analysis
ORDER BY deposit_rate_job_group DESC;

--7.Age Impact on Deposit Behavior
SELECT 
  CASE 
    WHEN age < 30 THEN 'Under 30'
    WHEN age BETWEEN 30 AND 50 THEN '30-50'
    ELSE 'Over 50' END AS age_group,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN deposit THEN 1 ELSE 0 END) AS deposit_yes,
  ROUND(SUM(CASE WHEN deposit THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS deposit_rate
FROM `bank-business-performance.bank_marketing.bank_clients`
GROUP BY age_group
ORDER BY deposit_rate DESC;

--8.Marital to Term Deposit
SELECT
  marital,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN deposit THEN 1 ELSE 0 END) AS deposit_yes,
  ROUND(SUM(CASE WHEN deposit THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS deposit_rate
FROM `bank-business-performance.bank_marketing.bank_clients`
GROUP BY marital;

--9.Most Effective Call Timing (by Month)
SELECT 
  month,
  COUNT(*) AS total_calls,
  SUM(CASE WHEN deposit THEN 1 ELSE 0 END) AS successful_calls,
  ROUND(SUM(CASE WHEN deposit THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS success_rate
FROM `bank-business-performance.bank_marketing.bank_clients`
GROUP BY month
ORDER BY success_rate DESC;

