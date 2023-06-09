-- 查询有哪些岗位 
select job from scott.emp;

-- 查询去除重复岗位后的结果
select distinct job 
from scott.emp;

-- 查询系统版本
select version() 

-- 工资不是5000的员工
select *
from  emp e 
where sal != 5000

-- 连表查询 
-- 查询员工的部门名称(员工编号，员工姓名，员工工种，员工部门简称) 
-- inner join
select e.empno,e.ename,e.job,d.dname 
from emp e 
inner join dept d 
on e.deptno = d.deptno 

-- left join, 查询没有部门的员工
select e.*,d.*
from emp e
left join dept d  
on d.deptno = e.deptno 
where e.deptno is null  

-- left join, 查询没有员工的部门
select e.*,d.*
from dept d 
left join emp e 
on e.deptno = d.deptno 
where e.deptno is null 

-- right join, 查询没有员工的部门
select e.*,d.*
from emp e 
right join dept d 
on e.deptno = d.deptno 
where e.deptno is null 

-- right join, 查询没有部门的员工
select e.*,d.*
from dept d 
right join emp e 
on e.deptno = d.deptno 
where e.deptno is null 









