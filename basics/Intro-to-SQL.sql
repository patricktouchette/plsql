--https://livesql.oracle.com/
--Introduction to SQL tutorial

--1. Creating Tables
create table DEPARTMENTS (
    deptno number,
    name varchar2(50) not null,
    location varchar2(50),
    constraint pk_departments primary key (deptno)
);

create table EMPLOYEES (
    empno number,
    name varchar2(50) not null,
    job varchar2(50),
    manager number,
    hiredate date,
    salary number(7,2),
    commission number(7,2),
    deptno number,
    constraint pk_employees primary key (empno),
    constraint fk_employees_deptno foreign key (deptno)
        references DEPARTMENTS (deptno)
);

--2. Creating Triggers
create or replace trigger  DEPARTMENTS_BIU
    before insert or update on DEPARTMENTS
    for each row
begin
    if inserting and :new.deptno is null then
        :new.deptno := to_number(sys_guid(),
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end;
/

create or replace trigger EMPLOYEES_BIU
    before insert or update on EMPLOYEES
    for each row
begin
    if inserting and :new.empno is null then
        :new.empno := to_number(sys_guid(),
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
    end if;
end;
/

--3. Inserting Data
insert into departments (name, location) values ('Finance', 'New York');
insert into departments (name, location) values ('Development', 'San Jose');

select * from departments;


insert into EMPLOYEES (name, job, salary, deptno)
    values ('Sam Smith', 'Programmer', 5000,
        (select deptno from DEPARTMENTS
         WHERE name = 'Development')
     );
insert into EMPLOYEES (name, job, salary, deptno)
    values ('Mara Martin', 'Analyst', 6000,
        (select deptno from DEPARTMENTS
         WHERE name = 'Finance')
     );
insert into EMPLOYEES (name, job, salary, deptno)
    values ('Yun Yates', 'Analyst', 5000,
        (select deptno from DEPARTMENTS
         WHERE name = 'Development')
     );


select * from employees

--4. Indexing Columns
select table_name "Table",
       index_name "Index",
       column_name "Column",
       column_position "Position"
from  user_ind_columns
where table_name = 'EMPLOYEES' or
      table_name = 'DEPARTMENTS'
order by table_name, column_name, column_position

--5. Querying Data


--6. Adding Columns
--7. Querying the Oracle Data Dictionary
--8. Updating Data
--9. Aggregate Queries
--10. Compressing Data
--11. Deleting Data
--12. Dropping Tables
--13. Un-dropping Tables
