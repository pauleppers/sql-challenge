-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/4f3N0X
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "titles" (
    "title_id" VARCHAR(8)   NOT NULL,
    "title" VARCHAR(40)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title" VARCHAR(8)   NOT NULL,
    "birthdate" date   NOT NULL,
    "first_name" VARCHAR(40)   NOT NULL,
    "last_name" VARCHAR(40)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "department" (
    "dept_no" VARCHAR(8)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "empl_no" int   NOT NULL,
    "dept_no" VARCHAR(8)   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "empl_no","dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(8)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "employ_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "employ_no","salary"
     )
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_empl_no" FOREIGN KEY("empl_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "department" ("dept_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_employ_no" FOREIGN KEY("employ_no")
REFERENCES "employees" ("emp_no");

