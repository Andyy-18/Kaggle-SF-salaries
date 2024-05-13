create database salaries;
use salaries;

-- SHOW THE TABLE--
select*from salaries;

-- SHOW ONLY EMPLOYEENAME AND JOBTITLE --
select EmployeeName,Jobtitle from salaries ;

-- SHOW THE NUMBER OF EMPLOYEES --
select count(Id) from salaries;

-- SHOW THE UNIUQE JOB TITLES --
select distinct JobTitle from salaries;

-- SHOW OVERTIME PAY GREATER THAN 50000 --
select JobTitle,OvertimePay from salaries where OvertimePay>50000  order by OvertimePay asc;

-- SHOW THE AVERAGE BASE PAY FOR ALL EMPLOYEES --
select avg(BasePay) as "AVG BASEPAY" from salaries;

-- SHOW TOP 10 HIGHEST PAID EMPLOYEES --
select EmployeeName,TotalPay from salaries order by TotalPay desc limit 10;

-- SHOW THE AVERAGE OF BASEPAY, OVERTIMEPAY, AND OTHERPAY FOR EACH EMPLOYEE --
select EmployeeName,(BasePay+OvertimePay+OtherPay)/3  from salaries;

-- SHOW ALL EMPLOYEES WITH A TOTAL PAY BETWEEN 50000 AND 75000 --
select*from salaries where TotalPay between 50000 and 75000;

-- SHOW ALL EMPLOYEES ORDERED BY THEIR TOTAL PAY BENEFITS IN DESCENDING ORDER -- 
select*from salaries order by TotalPayBenefits desc;

-- SHOW ALL JOB TITLES WITH AN AVERAGE BASE PAY OF AT LEAST 100000 AND ORDER THEM BY THE AVERAGE BASE PAY IN DESCENDING ORDER --
select JobTitle,avg(BasePay) as "avgbasepay" from salaries group by JobTitle having avg(BasePay)>=100000 order by avgbasepay desc; 

-- DELETE ALL EMPLOYEES WHO HAVE NO OVERTIME --
select count(*) from salaries where OvertimePay=0;
set  SQL_SAFE_updates=0;
delete from salaries where OvertimePay=0;