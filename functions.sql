--sql functions------------------------------------------------------------------------------

--count number of employees
select count(emp_id) from employee;

--find number of females employees born after 1970
select count(emp_id ) from employee where sex='F' And birth_day> '1971-01-01';

--find the average of all employees salary
select avg(salary) from employee;

--find the average salary of male employees
select avg(salary) from employee where sex='M';

--find the sum of the salary
select SUM(salary) from employee;

--find the amont of males and females in the company
select count(sex),sex from employee group by sex;

-- Find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY client_id;

-- Find the total amount of money spent by each client
SELECT SUM(total_sales), client_id
FROM works_with
GROUP BY client_id;
