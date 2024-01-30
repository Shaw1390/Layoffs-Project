--Exploring dataset
Select * from layoffs

-- Top 5 countries effected by layoffs
select top (5) country , sum(total_laid_off) as Layoff_Count 
from layoffs
group by country
order by Layoff_Count desc

-- Top 5 industries affected by layoffs
select top (5) industry , sum(total_laid_off) as Layoff_Count 
from layoffs
group by industry
order by Layoff_Count desc

-- Top 5 areas affected by layoffs
select top (5) location , sum(total_laid_off) as Layoff_Count 
from layoffs
group by location
order by Layoff_Count desc

-- Industries with most number of layoffs
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs in year 2023
select industry, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by industry
order by Layoff_count desc

-- Industries with most number of layoffs in year 2022
select industry, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by industry
order by Layoff_count desc

-- Industries with most number of layoffs in year 2021
select industry, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by industry
order by Layoff_count desc

-- Years with most number of layoffs
select YEAR(date) as Year, sum(total_laid_off) as Layoff_count
from layoffs
group by year(date)
order by Year(date) desc

--Top 5 companies with most layoffs
select top (5) company , sum(total_laid_off) as Layoff_Count 
from layoffs
group by company
order by Layoff_Count desc

-- Companies with most number of layoffs in year 2023
select company, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by company
order by Layoff_count desc

-- Companies with most number of layoffs in year 2022
select company, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by company
order by Layoff_count desc

-- Companies with most number of layoffs in year 2021
select company, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by company
order by Layoff_count desc

-- Companies with most number of layoffs in year 2020
select company, sum(total_laid_off) as Layoff_count
from layoffs
where date between '2020-01-01 00:00:00.000' and '2020-12-31 00:00:00.000'
group by company
order by Layoff_count desc

-- Industries with most number of layoffs in United States
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States'
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs excluding United States
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country!='United States'
group by industry
order by Layoff_Count desc

-- Locations with most number of layoffs excluding United States
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='United States'
group by location
order by Layoff_Count desc

-- Locations with most number of layoffs in United States
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States'
group by location
order by Layoff_Count desc

-- Locations with most number of layoffs in United States during 2023
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States' and date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Locations with most number of layoffs in United States during 2022
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States' and date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Locations with most number of layoffs in United States during 2021
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States' and date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Locations with most number of layoffs in United States during 2020
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country='United States' and date between '2020-01-01 00:00:00.000' and '2020-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Locations with most number of layoffs excluding United States during 2023
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='United States' and date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Locations with most number of layoffs excluding United States during 2022
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='United States' and date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Locations with most number of layoffs excluding United States during 2021
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='United States' and date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Locations with most number of layoffs excluding United States during 2020
select location, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='United States' and date between '2020-01-01 00:00:00.000' and '2020-12-31 00:00:00.000'
group by location
order by Layoff_Count desc

-- Industries with most number of layoffs in India
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India'
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs in India during 2023
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India' and date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs in India during 2022
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India' and date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs in India during 2021
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India' and date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs in India during 2020
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country='India' and date between '2020-01-01 00:00:00.000' and '2020-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs excluding India and United States
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States'
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs excluding India and United States during 2020
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States' and date between '2020-01-01 00:00:00.000' and '2020-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs excluding India and United States during 2021
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States' and date between '2021-01-01 00:00:00.000' and '2021-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs excluding India and United States during 2022
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States' and date between '2022-01-01 00:00:00.000' and '2022-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Industries with most number of layoffs excluding India and United States during 2023
select industry, sum(total_laid_off) as Layoff_Count
from layoffs
where country !='India' and country != 'United States' and date between '2023-01-01 00:00:00.000' and '2023-12-31 00:00:00.000'
group by industry
order by Layoff_Count desc

-- Companies with maximum employees laid off from their workforce
select company, country, percentage_laid_off
from layoffs
order by percentage_laid_off desc

-- At which stage maximum employees has been laid off
select stage, sum (total_laid_off) as Layoff_count
from layoffs
group by stage
order by layoff_count desc

-- At which stage maximum employees has been laid off in United States
select stage, sum (total_laid_off) as Layoff_count
from layoffs
where country = 'United States'
group by stage
order by layoff_count desc

-- At which stage maximum employees has been laid off in India
select stage, sum (total_laid_off) as Layoff_count
from layoffs
where country = 'India'
group by stage
order by layoff_count desc

-- At which stage maximum employees has been laid off excluding India and United States
select stage, sum (total_laid_off) as Layoff_count
from layoffs
where country != 'India' and country = 'United States'
group by stage
order by layoff_count desc