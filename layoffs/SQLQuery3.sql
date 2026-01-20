select * from layoffs;

delete from layoffs 
where total_laid_off is null
and percentage_laid_off is null;

select COUNT(*) from layoffs;

update layoffs 
set percentage_laid_off = isnull(total_laid_off,'0')

update layoffs 
set percentage_laid_off = isnull(percentage_laid_off,0.0)

update layoffs
set total_laid_off = null 
where total_laid_off = '';

update layoffs
set percentage_laid_off= null 
where percentage_laid_off = '';

select * from layoffs t1
join layoffs t2 
on t1.company = t2.company
where t2.industry is not null and t1.industry is null;

select DISTINCT[date] from layoffs
order by 1 desc;

update layoffs
set [date] = isnull([date], getdate());

select top(3) company, sum(total_laid_off) 
from layoffs 
group by company 
order by 2 desc;

select MIN([date]) mindate, MAX([date]) maxdate
from layoffs

delete from layoffs
where [date] = 'NULL'

update layoffs
set industry = 'Unknown'
where industry is null;

select * from layoffs
where stage = 'NULL'

update layoffs
set stage = 'Unknown'
where stage = 'NULL';

alter table layoffs alter column total_laid_off int;

alter table layoffs alter column percentage_laid_off float;

alter table layoffs alter column [date] date;

select top (3) industry, SUM(total_laid_off) as total_laying_offs
from layoffs
group by industry
order by total_laying_offs desc;

--total layoffs by company top 10

select company ,SUM(total_laid_off) total_layoffs
from layoffs
where total_laid_off is not null 
group by company 
order by total_layoffs desc;

--total latoffs by industry 

select industry, SUM(total_laid_off) total_layoffs
from layoffs
where industry is not null 
group by industry
order by total_layoffs desc;

--layoffs trend by year 

select YEAR([date]) layoffs_year, SUM(total_laid_off) total_layoffs
from layoffs
where total_laid_off is not null
group by YEAR([date])
order by layoffs_year;

--top 5 countries by total layoffs

select top 5 country, SUM(total_laid_off) total_layoffs
from layoffs
group by country 
order by total_layoffs desc;

--average percentage laid off by company stage

select stage, AVG(percentage_laid_off) avg_percentage_laid_off
from layoffs
where percentage_laid_off is not null
group by stage
order by avg_percentage_laid_off desc

--rank companies by total layoffs

with company_layoffs as (
select company, SUM(total_laid_off) total_layoffs
from layoffs
group by company
)
select *, RANK() over(order by total_layoffs desc) company_rank
from company_layoffs;

--running total of layoffs over time

select [date], total_laid_off, SUM(total_laid_off)
over(order by [date] rows between unbounded preceding and current row) running_total
from layoffs
where total_laid_off is not null
order by [date];

--layoffs by industry with industry average 

select company, industry, total_laid_off, AVG(total_laid_off) over(partition by industry) industry_avg_layoffs
from layoffs
where total_laid_off is not null;

--monthly layoffs trend 

with monthly_layoffs as (
select FORMAT([date], 'yyyy-MM') month, SUM(total_laid_off) total_layoffs
from layoffs
group by FORMAT([date], 'yyyy-MM')
)
select *
from monthly_layoffs 
order by month;

--identify companies above country average layoffs

with AvgLayoffsByCountry as (
    select company, country, total_laid_off, 
           AVG(total_laid_off) over (partition by country) as country_avg_layoffs
    from layoffs
    where total_laid_off is not null
)
select *
from AvgLayoffsByCountry
where total_laid_off < country_avg_layoffs;



