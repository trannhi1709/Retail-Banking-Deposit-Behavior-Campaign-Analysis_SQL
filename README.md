# Retail Banking Deposit Behavior & Campaign Analysis (SQL)
# I. Project Information
## 1. Overview
- This project explores a ***Bank Marketing Dataset*** to uncover insights into customer behavior and marketing campaign performance.
- The goal is to identify what factors influence a customer’s decision to open a deposit account — using SQL for analysis in Google BigQuery.

## 2. Dataset
- Dataset Source: [*Bank Marketing Dataset*](https://www.kaggle.com/datasets/janiobachmann/bank-marketing-dataset/data)
- Reference Source: [*Business Case + EDA*](https://www.kaggle.com/code/mlippo/py-business-case-eda/notebook)
- Rows: 11,162 | Columns: 17
- Data Dictionary:
This section describes all variables included in the dataset, along with their data types and meanings.

| Variable Name | Type      | Description                                                               |
| :-----------: | --------- | ------------------------------------------------------------------------- |
| **age**       | `INTEGER` | Client's age                                                              |
| **job**       | `STRING`  | Type of job the client has                                                |
| **marital**   | `STRING`  | Marital status                                                            |
| **education** | `STRING`  | Client's education level                                                  |
| **default**   | `BOOLEAN` | Whether the client has credit in default                                  |
| **balance**   | `INTEGER` | Average yearly account balance                                            |
| **housing**   | `BOOLEAN` | Whether the client has a housing loan                                     |
| **loan**      | `BOOLEAN` | Whether the client has a personal loan                                    |
| **contact**   | `STRING`  | Communication type used to contact the client                             |
| **duration**  | `INTEGER` | Duration of the last contact (in seconds)                                 |
| **campaign**  | `INTEGER` | Number of contacts performed during this campaign                         |
| **pdays**     | `INTEGER` | Number of days since the client was last contacted in a previous campaign |
| **previous**  | `INTEGER` | Number of contacts performed before this campaign                         |
| **poutcome**  | `STRING`  | Outcome of the previous marketing campaign                                |
| **deposit**   | `BOOLEAN` | Indicates whether the client subscribed to a term deposit                 |

# II. Data Analysis
## 1. Data Cleaning
During this stage, I performed several SQL cleaning steps to ensure data quality and consistency.

*<img width="948" height="76" alt="Image" src="https://github.com/user-attachments/assets/7570c03e-0598-4409-bc67-3f41f55f9eda" />*

Query results:

*<img width="1194" height="297" alt="Image" src="https://github.com/user-attachments/assets/a5607d69-67f8-48d3-9f5d-0bc0c239505a" />*

*<img width="969" height="77" alt="Image" src="https://github.com/user-attachments/assets/f9f19d62-14c4-42fb-a4b5-a998aa071540" />*

Query results:

*<img width="184" height="54" alt="Image" src="https://github.com/user-attachments/assets/35c6f697-769e-450c-afe9-f5481d34a61c" />*

*<img width="747" height="141" alt="Image" src="https://github.com/user-attachments/assets/1cf70676-2868-43c8-9190-930d7f55f9e3" />*

Query results:

*<img width="556" height="56" alt="Image" src="https://github.com/user-attachments/assets/2670bff5-c80a-44c8-b170-4a5ddbe17274" />*

*<img width="1159" height="180" alt="Image" src="https://github.com/user-attachments/assets/d855279e-4f22-43a4-9e77-8207a38d566f" />*

Query results:

*<img width="261" height="64" alt="Image" src="https://github.com/user-attachments/assets/a6a3a718-4897-4f35-bb36-f9252ba4e2a3" />*

## 2. Exploratory Data Analysis (EDA)
In this project, I will write 08 queries in BigQuery based on the Kaggle dataset.
- Query 01: Calculate total of customers, average balance, default rate and deposit rate

SQL code:     
<img width="778" height="130" alt="Image" src="https://github.com/user-attachments/assets/238f520e-7cdc-4c4a-87cb-90a2fee43e61" />

Query results:                                 
<img width="558" height="51" alt="Image" src="https://github.com/user-attachments/assets/084733c6-fb13-4da2-9827-f8a574b34ad3" />

- Query 02: Calculate average balance on each deposit status

SQL code:                                             
<img width="567" height="129" alt="Image" src="https://github.com/user-attachments/assets/1ee4e927-0032-4e31-b442-452f69009fa2" />

Query results:                                            
<img width="279" height="82" alt="Image" src="https://github.com/user-attachments/assets/f32aac62-6b77-4443-85a1-a531596400f7" />

- Query 03: Divide balance into 6 groups and calculate total customers, total customers of having deposit and percentage of total customers of having deposit on total customers of dataset

SQL code:                                       
<img width="715" height="418" alt="Image" src="https://github.com/user-attachments/assets/a7cb5511-160f-40c8-b082-cfccb5aac7f3" />

Query results:                                   
<img width="634" height="188" alt="Image" src="https://github.com/user-attachments/assets/f6890d4c-402f-4d8f-ac8a-e53f2d20a852" />

- Query 04: Calculate average balance based on every job titles, following by total customers having loan and housing debts

SQL code:                              
<img width="583" height="165" alt="Image" src="https://github.com/user-attachments/assets/85c7108a-abf3-4acd-9a95-a6015f404162" />

Query results:                                  
<img width="633" height="352" alt="Image" src="https://github.com/user-attachments/assets/4d8d03d8-bf14-4ce3-95b5-0f8406527e12" />

- Query 05: Calculate total customers of having deposit and percentage of total customers of having deposit on total customers of dataset based on job titles

SQL code:                        
<img width="693" height="301" alt="Image" src="https://github.com/user-attachments/assets/e75ffbe7-8b41-4950-be38-50a55673915a" />

Query results:                               
<img width="686" height="352" alt="Image" src="https://github.com/user-attachments/assets/bab76947-d48c-41f6-848d-88bf8c65b138" />

- Query 06: Divide age into 3 groups and calculate total customers, total customers of having deposit and percentage of total customers of having deposit on total customers of dataset

SQL code:                              
<img width="673" height="225" alt="Image" src="https://github.com/user-attachments/assets/13031181-b9f6-4189-a465-c90366161672" />

Query results:                             
<img width="635" height="111" alt="Image" src="https://github.com/user-attachments/assets/6c7d7e92-3536-4c00-b274-8aad48e02b53" />

- Query 07: Calculate total customers, total customer having deposit and proportion of them on each marital status

SQL code:                       
<img width="690" height="149" alt="Image" src="https://github.com/user-attachments/assets/2d33ee1b-f45a-4c63-9219-25383f3aea15" />

Query results:                              
<img width="633" height="111" alt="Image" src="https://github.com/user-attachments/assets/97fac890-7468-461c-be28-da444c6ba2f3" />

- Query 08: Calculate success calling rate by month

SQL code:                               
<img width="701" height="177" alt="Image" src="https://github.com/user-attachments/assets/4af86aca-0c0d-4036-8f44-a0bf81432294" />

Query results:                                   
<img width="634" height="356" alt="Image" src="https://github.com/user-attachments/assets/a08879bf-9711-4c98-88bf-eb2bf82acd79" />

# III. Business Insights
- Retired, self_employed customers have the highest average balance (≈2417, ≈1865 respectively) but a moderate deposit rate (4.62%, 1.68% respectively).
- Although students have the smallest customer count, their deposit rate (2.41%) relative to base size is promising — when combined with the Under 30 age group, which has the highest deposit rate (59.83%), it shows strong potential for future long-term customers.
- The largest customer segment falls within the 0–20K balance range, accounting for over 80% of total customers (9,643 out of 11,162).
- The 30–50 age group forms the majority (7140 customers) but has the lowest deposit rate (42.69%) => This indicates a key segment that should be re-targeted with tailored offers or incentives.
- Blue-collar, technician, and admin roles show high housing loan counts, yet lower average balances, implying a strong loan dependency — these customers may prioritize debt repayment over deposits.

# IV. Recommendations
- Target Retired and Over-50 Customers for Premium Deposits
  - Develop specialized “Retirement Savings” or “Wealth Stability” deposit products, leveraging their high balances and financial maturity.
  - Use personalized advisory services to convert savings into deposits.
- Engage the 30–50 Segment with Mid-term Incentives
  - Offer flexible-term deposits or interest bonuses tied to account tenure to re-engage this large but passive group.
  - Use cross-selling (insurance, investment funds) to strengthen their long-term commitment.
- Educate and Nurture Blue-Collar and Technician Segments
  - Launch financial literacy campaigns to increase awareness of deposit benefits.
  - Introduce micro-deposit options or salary-linked savings programs with automatic transfers.
- Capture Young Customer Loyalty Early
  - Design student and young professional deposit accounts with low barriers, gamified savings, and mobile-first onboarding.
  - Encourage early deposit behavior to build long-term brand loyalty.
