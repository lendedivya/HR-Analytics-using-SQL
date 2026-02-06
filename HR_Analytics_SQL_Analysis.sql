use aggri;
select * from people;
-- 1.	Highest Experienced
select max(timeSpentcompany) as max_expirince from people;

-- 2. Highest experienced department wise
SELECT dept, MAX(timeSpentcompany) AS max_experience
FROM people
GROUP BY dept;

-- 3.	Highest salary department wise
SELECT dept, salary, COUNT(*) AS emp_count
FROM people
GROUP BY dept, salary
ORDER BY dept;

-- 4.	Satisfactory level department wise (highest/lowest)
SELECT dept, MAX(ï»¿satisfactoryLevel) AS MAX_Satisfactory_level,
MIN(ï»¿satisfactoryLevel) AS MIN_Satisfactory_level
FROM people
GROUP BY dept;
 
-- 5.	Department wise low salary 
SELECT dept, MIN(salary) AS MIN_salary
FROM people
GROUP BY dept;

-- 6.	Department wise projects 
SELECT dept, AVG(numberOfProjects) AS avg_projects
FROM people
GROUP BY dept;
-- 7.	Department wise last evaluation
SELECT dept, AVG(lastEvaluation) AS avg_evaluation
FROM people
GROUP BY dept;

-- 8.	Department wise left
SELECT dept, COUNT(*) AS left_count
FROM people
WHERE `left` = 1
GROUP BY dept;
select * from people;

-- 9.	No. of projects vs Salary 
SELECT numberOfProjects, salary, COUNT(*) AS emp_count
FROM people
GROUP BY numberOfProjects, salary;

-- 10.  No. of project vs left
SELECT numberOfProjects, 'left', COUNT(*) 
FROM people
GROUP BY numberOfProjects, 'left';

-- 11.	Satisfactory level vs No. of Projects
SELECT numberOfProjects, AVG(ï»¿satisfactoryLevel) AS avg_satisfaction
FROM people
GROUP BY numberOfProjects;
