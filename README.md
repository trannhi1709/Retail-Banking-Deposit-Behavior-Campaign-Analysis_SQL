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

*<img width="948" height="76" alt="Image" src="https://github.com/user-attachments/assets/d2fbf090-a5c7-41c6-bd10-3f21e7a13f88" />*

Query results:

*<img width="1194" height="297" alt="Image" src="https://github.com/user-attachments/assets/61983587-2322-4098-b25b-fb5bf214c1ac" />*

*<img width="969" height="77" alt="Image" src="https://github.com/user-attachments/assets/5b38cb90-5080-43aa-b200-75ecb2987167" />*

Query results:

*<img width="184" height="54" alt="Image" src="https://github.com/user-attachments/assets/764e300e-848e-42fd-b7e4-7aa26ad7afa5" />*

*<img width="747" height="141" alt="Image" src="https://github.com/user-attachments/assets/8410f9e9-ea28-464b-9576-f33e3ece3e1a" />*

Query results:

*<img width="556" height="56" alt="Image" src="https://github.com/user-attachments/assets/5e874183-7b94-42c5-b966-9c2b02ede7db" />*

*<img width="1159" height="180" alt="Image" src="https://github.com/user-attachments/assets/bf5ce77c-a489-4eb2-b091-02426d4aab76" />*

Query results:

*<img width="261" height="64" alt="Image" src="https://github.com/user-attachments/assets/7854f9fe-911d-4aa0-a8c9-52b354dcab7d" />*

## 2. Exploratory Data Analysis (EDA)
In this project, I will write 08 queries in BigQuery based on the Kaggle dataset.
- Query 01: Calculate total of customers, average balance, default rate and deposit rate

SQL code:     
<img width="778" height="130" alt="Image" src="https://github.com/user-attachments/assets/5ecaaea3-e21a-4f70-854d-aefe27f3c6d9" />

Query results:                                 
<img width="558" height="51" alt="Image" src="https://github.com/user-attachments/assets/c18ccc0a-2d5e-4a51-ac0d-142ba668060c" />

- Query 02: Calculate average balance on each deposit status

SQL code:                                             
<img width="567" height="129" alt="Image" src="https://github.com/user-attachments/assets/eebbc87d-968d-41f4-9ec8-901065281c31" />

Query results:                                            
<img width="279" height="82" alt="Image" src="https://github.com/user-attachments/assets/19482937-380b-41da-a473-bdd285b7ca28" />

- Query 03: Divide balance into 6 groups and calculate total customers, total customers of having deposit and percentage of total customers of having deposit on total customers of dataset

SQL code:                                       
<img width="715" height="418" alt="Image" src="https://github.com/user-attachments/assets/1247cce8-a14e-4118-a843-b2303254c6f8" />

Query results:                                   
<img width="634" height="188" alt="Image" src="https://github.com/user-attachments/assets/ea00c552-b5ad-49c2-ad28-29f16a7425f2" />

- Query 04: Calculate average balance based on every job titles, following by total customers having loan and housing debts

SQL code:                              
<img width="583" height="165" alt="Image" src="https://github.com/user-attachments/assets/1b409e32-1779-4819-a1d1-b7a388c14796" />

Query results:                                  
<img width="633" height="352" alt="Image" src="https://github.com/user-attachments/assets/3fec1cc2-0133-4c89-a2d2-27d8b4997ca7" />

- Query 05: Calculate total customers of having deposit and percentage of total customers of having deposit on total customers of dataset based on job titles

SQL code:                        
<img width="693" height="301" alt="Image" src="https://github.com/user-attachments/assets/7ed24e67-3a99-4fa3-b497-9501bcae5344" />

Query results:                               
<img width="686" height="352" alt="Image" src="https://github.com/user-attachments/assets/797b7c47-1849-40be-b5f2-8097b61defde" />

- Query 06: Divide age into 3 groups and calculate total customers, total customers of having deposit and percentage of total customers of having deposit on total customers of dataset

SQL code:                              
<img width="673" height="225" alt="Image" src="https://github.com/user-attachments/assets/cac4a8ff-e31a-4cb5-9621-7d83a8e5ffd7" />

Query results:                             
<img width="635" height="111" alt="Image" src="https://github.com/user-attachments/assets/1c73efd4-764f-42aa-b79e-a706a06ef1c0" />

- Query 07: Calculate total customers, total customer having deposit and proportion of them on each marital status

SQL code:                       
<img width="690" height="149" alt="Image" src="https://github.com/user-attachments/assets/9b25e672-e733-411b-beb0-91881b57be2f" />

Query results:                              
<img width="633" height="111" alt="Image" src="https://github.com/user-attachments/assets/979eb4a4-bd8c-43d8-8660-0bee3e34f722" />

- Query 08: Calculate success calling rate by month

SQL code:                               
<img width="701" height="177" alt="Image" src="https://github.com/user-attachments/assets/27734ccb-82bd-43d7-985e-fbd7f3cb133e" />

Query results:                                   
<img width="634" height="356" alt="Image" src="https://github.com/user-attachments/assets/c6321dea-b201-451d-af78-50118377305f" />

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

