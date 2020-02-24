SELECT * FROM "Department";
SELECT * FROM "Dept_emp";
SELECT * FROM "Dept_manager";
SELECT * FROM "Employees" ;
SELECT * FROM "Salaries";
SELECT * FROM "Titles";


--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
select e."Emp_no", e."Last_Name", e."First_Name", e."Gender", s."Salary"
from "Employees" as e
inner join "Salaries" as s on 
e."Emp_no" = s."Emp_no" order by 1;

--2. List employees who were hired in 1986.
select * from "Employees" where
"Hire_date" between '1986-01-01' and '1986-12-31';

--3. List the manager of each department with the following information: department number, department name, 
-----the manager's employee number, last name, first name, and start and end employment dates.
select dm."Dept_no", dm."Emp_no", d."Dept_name", e."Last_Name", e."First_Name", e."Hire_date", dm."To_date"
from "Dept_manager" as dm
inner join "Department" as d on dm."Dept_no" = d."Dept_no"
inner join "Employees" as e on e."Emp_no" = dm."Emp_no";

--4. List the department of each employee with the following information: employee number, last name, 
-----first name, and department name.
select e."Emp_no", e."Last_Name", e."First_Name", de."Dept_no", d."Dept_name" 
from "Employees" as e
inner join "Dept_emp" as de on e."Emp_no" = de."Emp_no"
inner join "Department" as d on de."Dept_no" = d."Dept_no"

--5. List all employees whose first name is "Hercules" and last names begin with "B."
select * from "Employees" 
where "First_Name" = 'Hercules'
and "Last_Name" like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, 
-----first name, and department name.
select e."Emp_no", e."Last_Name", e."First_Name", d."Dept_name" 
from "Employees" as e
inner join "Dept_emp" as de on e."Emp_no" = de."Emp_no"
inner join "Department" as d on de."Dept_no" = d."Dept_no"
where "Dept_name" = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, 
-----last name, first name, and department name.
select e."Emp_no", e."Last_Name", e."First_Name", d."Dept_name" 
from "Employees" as e
inner join "Dept_emp" as de on e."Emp_no" = de."Emp_no"
inner join "Department" as d on de."Dept_no" = d."Dept_no"
where "Dept_name" = 'Sales' or "Dept_name" = 'Development'
order by "Emp_no";

--8. In descending order, list the frequency count of employee last names, i.e., how many employees 
-----share each last name.
select "Last_Name", count("Last_Name") as "Total_Count" from "Employees"
group by "Last_Name"
order by "Total_Count" desc;
