-- 查询每个部门中有多少人，要求列出部门编号和人数。
select deptno,count(*)
from emp e  
group by deptno 

-- 查询每个岗位的平均工资
select job,avg(sal)
from emp e 
group by job 

-- 查询每个部门中每个岗位的人数和最高工资
select deptno,job,count(*),max(sal)
from emp e 
group by deptno,job 

-- 查询每个部门的人数，要求只显示人数大于3人的数据。
select count(*)
from emp e 
group by deptno 
having count(*)>3 

-- 查询每个部门中，名字包含有E的员工人数	
select count(*),ename 
from emp e  
where ename like '%e%'
group by deptno 

-- 查询各部门中名字中包含E的员工人数，要求人数超过1个，只显示部门编号、人数。
select deptno,count(*)
from emp e 
where ename like '%e%'
group by deptno 
having count(*)>1 

-- 查询各岗位中工资在1000-3000之间的最高工资和最低工资，要求最高工资不等于3000。
select max(sal),min(sal) 
from emp e 
where sal >= 1000 and sal < 3000
group by job 

select max(sal),min(sal) 
from emp e 
where sal between 1000 and 3000
group by job 
having max(sal)!=3000 

-- 查询公司所有的员工，按工资升序排列
select *
from emp e 
order by sal asc 

-- 查询公司所有的员工，按工资升序排列，工资相同的按奖金降序排列
select *
from emp e 
order by sal asc,comm desc 

-- 获取系统当前时间，只要月,日,时,分
select date_format(sysdate(),'%m-%d %H:%i')

-- 查询公司历史记录中 每个月入职的总人数
select date_format(hiredate,'%m') 月份,count(*)
from emp e 
group by date_format(hiredate,'%m') 

-- 查询没有奖金或者奖金小于等于300的员工信息
select *
from emp e 
where comm <= 300 or comm is null 

select *
from emp e 
where if(comm is null,0,comm) <= 300

-- 查询公司每个人的实际年收入 （工资+奖金）*12
select ename,(if(comm is null,0,comm)+sal)*12 shouru
from emp e 

-- 查询SMITH的工作地点
select d.loc
from dept d 
where d.deptno = (select e.deptno from emp e where e.ename = 'smith')

-- 查询SMITH的领导姓名
select e2.ename
from emp e1,emp e2
where e1.mgr=e2.empno and e1.ename = 'smith'

-- 查询不在北京工作的员工信息
select e.*
from dept d ,emp e 
where d.deptno = e.deptno and not d.loc = '北京' 

-- 给在北京工作的所有员工加薪1块
select d.loc ,e.ename ,sal +1 
from dept d ,emp e 
where d.deptno = e.deptno and d.loc = '北京'

-- 让JAMES所有在部门中，工资在1500以下的员工，加薪7块
select ename ,sal +7
from emp e 
where deptno = (select deptno from emp e2 where ename = 'james') and sal < 1500

-- 查询公司平均每个部门的人数（没人数的部门不参与计算）


-- 查询工资高于公司平均工资的员工
-- 查询工资与公司平均工资差距在500以内的员工信息
-- 查询在SMITH所在的部门人数占公司总人数的多少
-- 把和ALLEN同年入职的员工全部删掉
-- 查询工资大于员工所在部门平均工资的员工信息   了解即可
-- 查询每个员工的姓名,部门编号,工作地点
-- 查询每个员工的姓名,领导姓名
-- 查询每个员工的姓名，领导姓名，部门名称，部门地址，员工工资/领导工资
-- 查询每个部门中，工资比部门平均工资高的员工，要求显示员工编号,员工姓名,工资,部门平均工资,部门编号
