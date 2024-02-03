![Snap_1](https://th-i.thgim.com/public/incoming/jjcduw/article66211652.ece/alternates/LANDSCAPE_1200/iStock-1217160806.jpg)

# Layoffs Exploratory Data Analysis using SQL and PowerBI

![Snap_2](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Layoffs_page-0001.jpg)

### Dashboard Link : 

## Problem Statement

We are analysing Layoffs data to identify which countries, industries and locations had the most number of layoffs during and afther the Covid pandemic. The dataset utilized in this project is sourced from the Kaggle Layoffs Dataset.

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

1.	Industry Analysis
   
> The objective of this analysis is to find which Industry had the most number of layoffs after the Covid-19 pandemic.

2.	Company Analysis

> Perform an analysis on the data to gain insights into different companies, determine the company which laid off most employees.


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

## Questions I wanted to answer from this dataset
### Total Number of employees laid off in the past 4 years
```mysql
Select sum(total_laid_off) as Total_Layoffs
from layoffs
```
Result:

![Q2](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-01-31%20213003.png)

In the last 4 years a total of 530,058 employees have been laid off with the 2023 year having the most number at 262862 epmployees that were laid-off.

### Industry Analysis
- Top 5 industries that had the most number of layoffs

```mysql
select top (5) country , sum(total_laid_off) as Layoff_Count 
from layoffs
group by country
order by Layoff_Count desc
```
Result:

![Q2](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20105528.png)

Retail and Consumer industries faced the most number of layoffs being as close to 62,000 employees being laid off. They contribute to 12% of the total value.

- Top 5 industries that had the most number of layoffs during peak pandemic (2020 to 2021)

```mysql
select industry, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2020-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by industry
order by Layoff_count desc
```
Result: 

![Q3](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20105735.png)

Due to the Covid 19 pandemic and a global lockdown Transport and Travel industries faced the most layoffs as they faced major losses. 

- Top 5 industries that had the most number of layoffs during post pandemic (2022 to 2024)

```mysql
select industry, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2023-01-01 00:00:00.000' and '2024-12-31 00:00:00.000'
group by industry
order by Layoff_count desc
```
Result:

![Q4](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20111905.png)

After the pandemic, travel and transportion has recovered considerably. But Retail and consumer industries hired more employees during the pandemic due to increase of demand by the consumer.

### Company Analysis
- Top 5 companies that laid off the most employees

```mysql
select company, sum(total_laid_off) as Layoff_count
from layoffs
order by Layoff_count desc
```

Result:

![Q5](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20112304.png)

- Top 5 companies that laid most employees during pandemic

```mysql
select company, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2020-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by company
order by Layoff_count desc
```

Result:

![Q6](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20112304.png)

Uber and Booking.com are the companies that laidoff most the emoloyees during the pandemic. This is due to the fact during the lockdown the travel and transportation industry were hit with the most loss.


- Top 5 companies that laid off the most employees post pandemic

```mysql
select company, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2023-01-01 00:00:00.000' and '2024-12-31 00:00:00.000'
group by company
order by Layoff_count desc
```

Result:

![Q8](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20112625.png)

Tech companies Amazon and Meta has laid off the most employees post pandemic. This is because during the pandemic these companies had mass hiring due to low federal bank interest rate. 

- Companies that had multiple layoff rounds

```mysql
select company, count (*) as Rounds
from layoffs
group by company
having count (*) >1
order by Rounds desc
```
Result:

![Q10](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20114631.png)

Tech companies had multiple rounds of layoffs in the mast 4 years.

### Country Analysis

- Countries that had most number of layoffs

```mysql
select top (5) country , sum(total_laid_off) as Layoff_Count 
from layoffs
group by country
order by Layoff_Count desc
```
Result:

![Q11](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20121335.png)

United states has the most number of layoffs at staggering 354,157 employees. Thats 66% of the total layoffs. India comes secomd woth 47,759 employees with a 9% share. United States and India together contributes of 75% of the layoffs in the world. 

- Location in United States with maximum layoffs

```mysql
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States'
group by location
order by Layoff_Count desc
```
Result:

![Q12](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20124143.png)

Major tech cities like Bay Area and Seattle had faced major layoffs. 

- Location in India with maximum layoffs

```mysql
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India'
group by location
order by Layoff_Count desc
```
Result:

![Q13](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20125205.png)

'Silicon Valley of India'- Bangalore faced the most layoffs at 27,237 contributing close 60% of total India's layoffs.

- Location in except United states and India with maximum layoffs

```mysql
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States'
group by location
order by Layoff_Count desc
```
Result:

![Q13](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20125527.png)

For remaining countries their respective capitals had the majot layoffs. But unlike United States and India each country only had one city that were affected.

### Stage Analysis

- Number of layoffs in different stages

```mysql
--Top 5 companies with most layoffs
select top (5) company , sum(total_laid_off) as Layoff_Count 
from layoffs
group by company
order by Layoff_Count desc
```

Result:
![Q13](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20130829.png)

Majority of the comany were in Post-IPO stage when they laidoff the employees. 

- Number of layoffs in Covid
```mysql
select stage, sum (total_laid_off) as Layoff_count
from layoffs
where date between '2020-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by stage
order by layoff_count desc
```
Result:

![Q13](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20131454.png)

- Number of layoffs in post Covid
```mysql
select stage, sum (total_laid_off) as Layoff_count
from layoffs
where date between '2022-01-01 00:00:00.000' and '2024-12-31 00:00:00.000'
group by stage
order by layoff_count desc
```

Result: ![Q13](https://github.com/Shaw1390/Layoffs-Project/blob/main/Images/Screenshot%202024-02-03%20132332.png)

Irrespective of the pandemic Post-IPO companies had the most loyoffs.

# Conclusion

After performing Exploratory Data Analysis on Layoffs dataset it is evident that Tech companies in the world has laidoff most number of the employees post pandemic. During the pandemic as the interest rates were very low these companies mass hired thousands of employees. Once the pandemic was over, the federal intereset rates were increased to stablize the economy. This caused many of the companies to reduce their workforce as their profits remaind the same but expenditure increased. 

Industries like Legal, Manufacturing and Energy had the least number of layoffs during the pandemic and post pandemic as these are some of the most neccessary industry and will always be in demand.
