-- 问答题：
-- 为什么MySQL安装完成之后，没有图标？
-- 在Navicat中怎么执行指定语句，怎么执行所有的语句？
-- 怎么查看navicat中创建并保存的脚本 ？
-- 怎么把其它的.sql文件在navicat中打开？

-- SQL语句题：
-- 查询10部门的员工信息
SELECT * 
FROM emp
WHERE deptno = 10

-- 查询10部门岗位是MANAGER的员工信息
SELECT * 
FROM emp
WHERE deptno = 10 AND job = 'manager'

-- 查询10部门的员工和20部门的员工信息
SELECT *
FROM emp
WHERE deptno in (10,20)

-- 查询10部门岗位是MANAGER的员工和20部门岗位是CLERK的员工，要求显示员工编号、员工姓名、岗位、部门编号
SELECT empno,ename,job,deptno
FROM emp
WHERE (deptno = 10 AND job = 'manager') or (deptno = 20 and job = 'clerk') 

-- 查询10部门和20部门中，岗位是CLERK的员工信息
SELECT *
FROM emp
WHERE deptno in (10,20) AND job = 'clerk'

-- 查询不是10部门的员工信息
SELECT *
FROM emp
WHERE NOT (deptno = 10)

-- 查询除去 10部门岗位是MANAGER的员工和20部门岗位是CLERK的员工 以外，其它的员工信息
SELECT *
FROM emp
WHERE NOT (deptno = 10 AND job = 'manager' or deptno = 20 AND job = 'clerk')

-- 查询工资在1100-1600之间的员工信息
SELECT *
FROM emp
WHERE sal BETWEEN 1100 AND 1600 

-- 查询员工编号与领导编号差距在100以内的员工信息
SELECT *
FROM emp
WHERE ABS(empno - mgr) < 100

-- 查询编号在7369,7499,7698,7902,7934中的员工，哪些人的20部门的
SELECT ename,empno
FROM emp
WHERE empno in (7369,7499,7698,7902,7934) AND deptno = 20

-- 查询姓名在SMITH,ALLEN,WARD,CLARK,JAMES中的员工，哪人的工资在1100-1600之间
SELECT ename
FROM emp
WHERE ename in ('smith','alien','ward','clark','james') AND sal BETWEEN 1100 AND 1600

-- 查询名字是A开头的员工
select *
from emp e 
where ename like 'a%'

-- 查询名字是R结尾的员工
select *
from emp e 
where ename like '%e'

-- 查询名字中有K的员工
select *
from emp e 
where ename like '%k%'

-- 查询名字倒数第2个字母是E的员工
SELECT *
FROM emp
WHERE ename LIKE '%e_'

-- 查询名字由4个字母组成的员工
SELECT *
FROM emp
WHERE ename LIKE '____'

SELECT *
FROM emp
WHERE ename REGEXP '^.{4}$'

-- 查询名字中即有A又有M的员工
SELECT *
FROM emp
WHERE ename LIKE '%a%m%' OR ename LIKE '%m%a%' 

-- 找出奖金高于薪水60%的员工信息。
SELECT *
FROM emp
WHERE comm > sal * 0.6

-- 找出部门10中所有经理（MANAGER）和部门20中所有办事员（CLERK）的详细资料。
SELECT *
FROM emp
WHERE deptno = 10 AND job = 'manager' OR deptno = 20 AND job = 'clerk'

-- 找出不收取奖金或收取的奖金小于等于300的员工。
SELECT *
FROM emp 
WHERE comm  is NULL OR comm < 300

SELECT *
FROM emp
WHERE IF (comm is NULL,0,comm) < 300

-- 显示正好为5个字符的员工的姓名。
SELECT *
FROM emp 
WHERE ename REGEXP '^.{5}$'

-- 显示不带有“R”的员工姓名。
SELECT *
FROM emp
WHERE NOT ename LIKE '%r%'

-- 查询Smith、Allen、ward、Martin、Turner这些人中，哪位的岗位不是salesman；
SELECT *
FROM emp
WHERE ename in ('smith','allen','ward','martin','turner') AND NOT job = 'salesman'

-- 查询工号比领导工号大50以上的员工
SELECT *
FROM emp
WHERE ABS(empno - mgr) > 50

-- 查询名字由5个字组成并且不包含'E'的员工
SELECT *
FROM emp
WHERE ename REGEXP '^.{5}$' AND NOT ename LIKE '%e%' 

-- 查询除掉工作为'CLERK'的员工和名字由6个字组成的员工后,公司哪些人工资在1000-3000之间
SELECT *
FROM emp
WHERE ename NOT REGEXP '^.{6}$' AND NOT job = 'clerk' AND sal BETWEEN 1000 AND 3000 


-- 查询名字是Smith、Allen、ward、Martin、Turner和工号是7654，7782，7839，7521，7902，7756的员工中，哪些人的名字里倒数第二个字符是'E'
SELECT *
FROM emp
WHERE (ename in ('smith','allen','ward','martin','turner') OR empno in (7654,7782,7839,7521,7902,7756)) AND ename LIKE '_e%'

-- 查询姓名是SMITH员工他的领导姓名
SELECT e2.ename
FROM emp e1,emp e2
WHERE e1.ename = 'smith' AND e1.mgr=e2.empno 

-- 查询SMITH在哪里工作，对应的部门名称是什么？
SELECT d.loc,d.dname
FROM emp e,dept d
WHERE e.deptno = d.deptno AND e.ename='smith'

-- 查询在北京工作的员工信息
SELECT e.*
FROM emp e,dept d
WHERE e.deptno=d.deptno AND d.loc='北京'

-- 查询北京和上海的员工信息
SELECT *
FROM emp e,dept d
WHERE e.deptno=d.deptno AND d.loc IN ('北京','上海')

-- 查询在广州工作的员工中，哪些人的名字中包含有E，要求显示员工姓名和部门编号
SELECT e.ename,e.deptno
FROM dept d,emp e
WHERE e.deptno=d.deptno AND d.loc='广州' AND e.ename LIKE '%e%'

-- 查询编号是7521,7566,7654,7698,7782的员工，哪些是BLAKE的下属
SELECT e1.*
FROM emp e1,emp e2
WHERE e1.deptno=e2.deptno AND e1.empno in (7521,7566,7654,7698,7782) AND e1.mgr = e2.empno

-- 查询KING的下属哪位在上海工作，要求显示员工编号，员工姓名，岗位，领导工号，部门编号
SELECT e.empno,e.ename,e.job,e.mgr,e.deptno
FROM emp e,dept d
WHERE e.deptno=d.deptno AND e.empno in (SELECT empno FROM emp WHERE mgr=(SELECT empno FROM emp WHERE ename='BLAKE'))


SELECT e.empno,e.ename,e.job,e.mgr,e.deptno
FROM emp e
WHERE e.empno in (SELECT empno FROM emp WHERE mgr=(SELECT empno FROM emp WHERE ename='BLAKE'))

-- MILLER同部门的同事中，哪些人的工资比MILLER高？
SELECT *
FROM emp
WHERE deptno = (SELECT deptno FROM emp WHERE ename = 'MARTIN') AND sal > (SELECT sal FROM emp WHERE ename = 'MARTIN')

-- 销售部门中岗位是CLERK的员工叫什么名字？
SELECT e.ename
FROM dept d,emp e
WHERE d.deptno=e.deptno AND d.deptno = (SELECT deptno FROM  dept d WHERE d.dname = '销售') AND e.job = 'clerk'


-- 扩展题：
-- Navicat中怎么把注释的颜色改成红包？
-- 今天上课过程中执行语句报错了很多次，能不能自己分析总结一下报错的信息和报错的原因和解决方案。




