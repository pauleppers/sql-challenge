# SQL of Employee Database: A Mystery in Two Parts

#### Data Modeling
Create an ERD of the tables using [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

#### Data Engineering
* Create a table schema for each of the six CSV files, specify data types, primary keys, foreign keys, and other constraints.
  
* Import each CSV file into the corresponding SQL table. 

#### Data Analysis
1. List of each employee: employee number, last name, first name, sex, and salary.
2. List of first name, last name, and hire date for employees who were hired in 1986.
3. List of the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List of the department of each employee with the following information: employee number, last name, first name, and department name.
5. List of first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List of all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list of the frequency count of employee last names.
## Bonus 
Generate a visualization of the data:
1. Import SQL database into Pandas. (read the CSVs directly in Pandas). 
2. Create a histogram to visualize the most common salary ranges for employees.
3. Create a bar chart of average salary by title.
