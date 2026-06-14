create database creditcard;

use creditcard;


/* Importing the data column as varchar and converting it back to the date columns */
-- create table cc_detail(
-- client_Num Bigint,
-- Card_Category Varchar(20),
-- Annual_Fees int,
-- Activation_30_Days Int,
-- Customer_Acq_Cost Int,
-- Week_Start_Date varchar(20),  -- temporarily VARCHAR
-- Week_Num Varchar(20),
-- Qtr Varchar(10),
-- current_year int,
-- Credit_Limit Decimal(10,2),
-- Total_Revolving_Bal Int,
-- Total_Trans_Amt Int,
-- Total_Trans_Vol Int,
-- Avg_Utilization_Ratio decimal(10,3),
-- Use_Chip Varchar(10),
-- Exp_Type Varchar(50),
-- Interest_Earned Decimal(10,3),
-- Delinquent_Acc Varchar(5)
-- );


create table cust_detail(
client_Num Bigint,
Customer_Age int,
Gender Varchar(5),
Dependent_Count int,
Education_Level varchar(50),
Marital_Status varchar(20),
State_cd varchar(50),
Zipcode varchar(20),
Car_Owner Varchar(5),
House_Owner Varchar(5),
Personal_Loan Varchar(5),
Contact varchar(50),
Customer_Job Varchar(50),
Income Int,
Cust_Satisfaction_Score Int
);

Drop table cc_detail;



/* Importing the data column as varchar and converting it back to the date columns */
CREATE TABLE cc_detail(
client_Num BIGINT,
Card_Category VARCHAR(20),
Annual_Fees INT,
Activation_30_Days INT,
Customer_Acq_Cost INT,
Week_Start_Date VARCHAR(20),  -- IMPORTANT CHANGE
Week_Num VARCHAR(20),
Qtr VARCHAR(10),
current_year INT,
Credit_Limit DECIMAL(10,2),
Total_Revolving_Bal INT,
Total_Trans_Amt INT,
Total_Trans_Vol INT,
Avg_Utilization_Ratio DECIMAL(10,3),
Use_Chip VARCHAR(10),
Exp_Type VARCHAR(50),
Interest_Earned DECIMAL(10,3),
Delinquent_Acc VARCHAR(5)
);

/* Convert to Proper date format */
update cc_detail
Set Week_Start_Date = STR_TO_DATE(Week_Start_Date, '%d-%m-%Y');

/* Now change the column back to Date */
Alter Table cc_detail
Modify Week_Start_Date DATE;

Select * from cc_detail;
Select * from cust_detail;