-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Department" (
    "Dept_no" varchar   NOT NULL,
    "Dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "Dept_no"
     )
);

CREATE TABLE "Dept_emp" (
    "Emp_no" integer   NOT NULL,
    "Dept_no" varchar   NOT NULL,
    "From_date" date   NOT NULL,
    "To_date" date   NOT NULL
);

CREATE TABLE "Dept_manager" (
    "Dept_no" varchar   NOT NULL,
    "Emp_no" integer   NOT NULL,
    "From_date" date   NOT NULL,
    "To_date" date   NOT NULL
);

CREATE TABLE "Employees" (
    "Emp_no" integer   NOT NULL,
    "Birth_date" date   NOT NULL,
    "First_Name" varchar   NOT NULL,
    "Last_Name" varchar   NOT NULL,
    "Gender" varchar   NOT NULL,
    "Hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "Salaries" (
    "Emp_no" integer   NOT NULL,
    "Salary" integer   NOT NULL,
    "From_date" date   NOT NULL,
    "To_date" date   NOT NULL
);

CREATE TABLE "Titles" (
    "Emp_no" integer   NOT NULL,
    "Title" varchar   NOT NULL,
    "From_date" date   NOT NULL,
    "To_date" date   NOT NULL
);

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Department" ("Dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Department" ("Dept_no");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Employees" ("Emp_no");



















