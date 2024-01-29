![Snap_1](https://th-i.thgim.com/public/incoming/jjcduw/article66211652.ece/alternates/LANDSCAPE_1200/iStock-1217160806.jpg)

# Layoffs Exploratory Data Analysis using SQL and PowerBI

### Dashboard Link : 

## Problem Statement

We are analysing Layoffs data to identify which countries, industries and locations had the most number of layoffs after Covid pandemic. The dataset utilized in this project is sourced from the Kaggle Layoffs Dataset.

## Purpose of the Project
The main goal of this project is to gain understanding from Layoffs dataset, exploring the various industries and timelines that influence layoffs across different countries.


## About Data
This project's data was obtained from the Kaggle Layoffs Dataset and it encompasses the layoffs from across the world after Covid-19 pandemic. The data contains 9 columns and 3300 rows:

| Column | Description | Data Type| 
| ------ |  ----------| ----------|
| Company| Name of the company | VARCHAR|
| Location|Location of company headquarters| VARCHAR|
|Industry|Industry of the company| VARCHAR|
|Total Laid Off|Number of employees laid off|INT|
|Perctange Laid Off|Percentage of employees laid off| FLOAT|
|Date|Date of layoff|DATETIME|
|Stage|Stage of funding| VARCHAR|
|Country|Country of the company | VARCHAR|
|Funds Raised| Funds raised by the company (in Millions $)| FLOAT|

## Analysis List

1.	Company Analysis

> Perform an analysis on the data to gain insights into different companies, determine the company which laid off most employees.

2.	Industry Analysis
   
> The objective of this analysis is to find which Industry had the most number of layoffs after the Covid-19 pandemic.

3.	Country Analysis

> The objective of this analysis is to find which Country had the most number of layoffs after the Covid-19 pandemic.


4. Stage Analysis

> Perform an analysis on the data to gain insights into different stages of the company, to determine the company which laid off most employees.

## Approach Used
***1.	Data Wrangling***

During this initial phase, the data is examined to detect any NULL or missing values, and strategies for data replacement are implemented to address and substitute these values effectively.
- Build a database
- Create a table and insert the data.
- Select columns with null values in them. Null values are not present in our database because, in creating the tables, NOT NULL was specified for each field, effectively filtering out any null values.

***2.  Exploratory Data Analysis (EDA)***

Conducting exploratory data analysis is essential to address the project's listed questions and objectives.

