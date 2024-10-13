select * from walmartsalesdata
-- How many unique cities are repersented in the data?
select distinct city from walmartsalesdata

-- Which city is each branch located in?
select distinct branch, city from walmartsalesdata

-- How many unique prouct lines are there?
select distinct `Product line` from walmartsalesdata

-- What is the most common payment method?
select Payment, count(*) as count from walmartsalesdata
group by Payment

-- Which product line has the highest sales?
select distinct `Product line`, sum(quantity) as total from walmartsalesdata
group by `Product line`

-- What is the monthly revenue breakdown/What is the total revenue by month?
select extract(month from Date) as the_month, sum(`gross income`) as total_revenue
from walmartsalesdata
group by the_month
-- Which month had the highest Cost of Goods Sold (COGS)?
select extract(month from date) as the_month, sum(cogs)
from walmartsalesdata
group by extract(month from date)

-- Which product line generated the most revenue?
select `Product line`, sum(`gross income`) as revenue
from walmartsalesdata
group by `Product line`

-- Which city produced the highest revenue?
select city, sum(`gross income`) as revenue
from walmartsalesdata
group by city

-- What is the most popular product line by gender?
select `Product line`, gender 
from walmartsalesdata
group by `Product line`

-- What is the average rating for each product line?
select `Product line`, avg(rating)
from walmartsalesdata
group by `Product line`

-- Which customer type generates the most revenue?
select `Customer type`, sum(`gross income`) as revenue
from walmartsalesdata
group by `Customer type`

-- How many distinct customer types are there?
select distinct `Customer type` from walmartsalesdata

-- How many different payment methods are available?
select distinct Payment from walmartsalesdata

-- What is the most common customer type?
select `Customer type`, count(*) 
from walmartsalesdata
group by `Customer type`

--  Which customer type makes the most purchases?
select `Customer type`, sum(quantity) as purchases
from walmartsalesdata
group by `Customer type`

-- What is the predominant gender among customers?
select gender, count(*) 
from walmartsalesdata
group by gender

--  How does gender distribution vary by branch?
select branch, gender, count(*) as gender_count
from walmartsalesdata
group by branch, gender

