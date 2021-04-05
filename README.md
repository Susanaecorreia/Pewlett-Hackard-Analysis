# Pewlett-Hackard-Analysis

## Overview of the analysis: Explain the purpose of this analysis.

### We will help Bobby build an employee data base to analyse:

  ### Who will be retiring in the next few years?
  ### How many positions Pewlett Hackard will need to fill?

### The analysis will help Pewlett Hackard by genereting a list of all employees eligible for the retirement package.  


## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

  ### There are 3000024 employees in the company;
  ### 30% of the employees will be retiring in th next few years;
  ### There are 1940 employees born in the year 1965 eligible for mentorship;
  ### There are 90398 employees born between '1952-01-01' and '1955-12-31' whereas:
  
  29414	"Senior Engineer"
  28254	"Senior Staff"
  14222	"Engineer"
  12243	"Staff"
   4502	"Technique Leader"
   1761	"Assistant Engineer"
      2	"Manager"
    
    
## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

  ### Silver Tsunami will have more impact in two areas: Senior Engeneering and Senior Staff as shows on the graph below:
  
  ![image](https://user-images.githubusercontent.com/78492568/113525371-7f5cb000-9582-11eb-9c21-70830c4c3ae7.png)

Executing the two new queries below:

SELECT DISTINCT ON (employees.emp_no)employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title
INTO total_unique_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
ORDER BY employees.emp_no ASC, titles.to_date DESC;

SELECT COUNT(emp_no) as "count", title
FROM total_unique_titles
GROUP BY title
ORDER BY "count" DESC

I found the total numbers: 
Senior Engineer	97745
Senior Staff	92845
Engineer	47305
Staff	41130
Technique Leader	15155
Assistant Engineer	5835
Manager 6

To compare to the unique_titles numbers:

Senior Engineer	14222
Senior Staff	12243
Engineer	29414
Staff	28254
Technique Leader	4502
Assistant Engineer	1761
Manager 2


## How many roles will need to be filled as the "silver tsunami" begins to make an impact?

  ### There are seven different roles that will need to be filled as the silver tsunami begins to make an impact: Senior Engineer, Senior Staff, Engineer, Staff,         Tehnique Leader, Assistant Engineer and Manager.


## Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

  ### Yes, there are enough qualified retirement-ready employees in the departments to mentor the 1940 employees eligible for mentorship.
