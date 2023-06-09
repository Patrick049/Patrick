-- 查询10部门的员工信息
SELECT * 
FROM scott.emp
WHERE deptno=10;

-- 查询10部门岗位是MANAGER的员工信息
SELECT *
FROM scott.emp
WHERE deptno=10 AND job='manager';

-- 查询10部门的员工和20部门的员工信息
SELECT *
FROM scott.emp
WHERE deptno in(10,20);

-- 查询10部门岗位是MANAGER的员工和20部门岗位是CLERK的员工，要求显示员工编号、员工姓名、岗位、部门编号
SELECT empno 员工编号,ename 员工姓名,job 岗位,deptno 部门编号
FROM scott.emp 
WHERE (deptno=10 AND job='manager') or (deptno=20 AND job='clerk');

-- 查询10部门和20部门中，岗位是CLERK的员工信息
SELECT * 
FROM scott.emp
WHERE deptno in (10,20) AND job='clerk';

-- 查询不是10部门的员工信息
SELECT *
FROM scott.emp
WHERE NOT deptno=10;

-- 查询除去 10部门岗位是MANAGER的员工和20部门岗位是CLERK的员工 以外，其它的员工信息
SELECT *
FROM scott.emp
WHERE NOT ((deptno=10 AND job='manager') or (deptno=20 AND job='clerk'));

-- 查询工资在1100-1600之间的员工信息
SELECT *
FROM scott.emp
WHERE sal BETWEEN 1100 AND 1600;

-- 查询员工编号与领导编号差距在100以内的员工信息
SELECT *
FROM scott.emp
WHERE mgr - empno <100 AND empno - mgr <100;  

-- 查询编号在7369,7499,7698,7902,7934中的员工，哪些人的20部门的
SELECT ename
FROM scott.emp
WHERE empno in (7639,7499,7698,7902,7934) AND deptno=20;

-- 查询姓名在SMITH,ALLEN,WARD,CLARK,JAMES中的员工，哪人的工资在1100-1600之间
SELECT ename
FROM scott.emp
WHERE ename in ('smith','allen','ward','clark','james') AND (sal BETWEEN 1100 AND 1600);

-- 查询名字是A开头的员工
SELECT *
FROM scott.emp
WHERE ename REGEXP '^a.*';

-- 查询名字是R结尾的员工
SELECT *
FROM scott.emp
WHERE ename REGEXP '.*r$';

-- 查询名字中有K的员工
SELECT *
FROM scott.emp
WHERE ename REGEXP 'k';

-- 查询名字倒数第2个字母是E的员工
SELECT *
FROM scott.emp
WHERE ename REGEXP '.*e.{1}$';

-- 查询名字由4个字母组成的员工
SELECT *
FROM scott.emp
WHERE ename REGEXP '^.{4}$';

-- 查询名字中即有A又有M的员工
SELECT *
FROM scott.emp
WHERE ename LIKE '%a%' AND ename LIKE '%m%';

-- 找出奖金高于薪水60%的员工信息。
SELECT *
FROM scott.emp
WHERE comm > sal * 0.6;

-- 找出部门10中所有经理（MANAGER）和部门20中所有办事员（CLERK）的详细资料。
SELECT *
FROM scott.emp 
WHERE (deptno=10 AND job='manager') or (deptno=20 AND job='clerk');

-- 找出不收取奖金或收取的奖金小于等于300的员工。
SELECT *
FROM scott.emp
WHERE (NOT comm>300) OR comm is NULL; 

-- 显示正好为5个字符的员工的姓名。
SELECT *
FROM scott.emp
WHERE ename REGEXP '^.{5}$';

-- 显示不带有“R”的员工姓名。
SELECT *
FROM scott.emp
WHERE NOT ename REGEXP 'r';

-- 查询Smith、Allen、ward、Martin、Turner这些人中，哪位的岗位不是salesman；
SELECT ename
FROM scott.emp
WHERE ename in ('smith','allen','ward','marth','turner') AND not job = 'salesman';

-- 查询工号比领导工号大50以上的员工
SELECT *
FROM scott.emp
WHERE empno - mgr > 50;

-- 查询名字由5个字组成并且不包含'E'的员工
SELECT *
FROM scott.emp
WHERE ename REGEXP '^.{5}$' AND NOT ename REGEXP 'e';

-- 查询除掉工作为'CLERK'的员工和名字由6个字组成的员工后,公司哪些人工资在1000-3000之间
SELECT ename
FROM scott.emp
WHERE NOT (job='clerk' or ename REGEXP '^.{6}$') AND sal BETWEEN 1000 AND 3000;

-- 查询名字是Smith、Allen、ward、Martin、Turner和工号是7654，7782，7839，7521，7902，7756的员工中，哪些人的名字里倒数第二个字符是'E'
SELECT ename
FROM scott.emp
WHERE (ename in ('smith','allen','ward','martin','turner') or empno in (7654,7782,7839,7521,7902,7756)) AND ename LIKE '%e_';

-- 查询姓名是SMITH员工他的领导姓名
SELECT ename
FROM scott.emp
WHERE empno=(SELECT mgr FROM scott.emp WHERE ename='smith');

-- 查询SMITH在哪里工作，对应的部门名称是什么？
SELECT loc 工作地点,dname 部门名称
FROM scott.dept
WHERE deptno=(SELECT deptno FROM scott.emp WHERE ename='smith');

-- 查询在北京工作的员工信息
SELECT *
FROM scott.emp
WHERE deptno=(SELECT deptno FROM scott.dept WHERE loc='北京');

-- 查询北京和上海的员工信息
SELECT *
FROM scott.emp
WHERE deptno=(SELECT deptno FROM scott.dept WHERE loc='北京') or deptno=(SELECT deptno FROM scott.dept WHERE loc='上海');

-- 查询在广州工作的员工中，哪些人的名字中包含有E，要求显示员工姓名和部门编号
SELECT ename 员工姓名,deptno 部门编号
FROM scott.emp
WHERE deptno=(SELECT deptno FROM scott.dept WHERE loc='广州') AND ename REGEXP 'e';

-- 查询编号是7521,7566,7654,7698,7782的员工，哪些是BLAKE的下属
SELECT ename
FROM scott.emp
WHERE empno in (7521,7566,7654,7698,7782) AND mgr=(SELECT empno FROM scott.emp WHERE ename='blake');
 
-- 查询KING的下属哪位在上海工作，要求显示员工编号，员工姓名，岗位，领导工号，部门编号
SELECT empno 员工编号,ename 员工姓名,job 岗位,mgr 领导工号,deptno 部门编号
FROM scott.emp
WHERE deptno=(SELECT deptno FROM scott.dept WHERE loc='上海');

-- MILLER同部门的同事中，哪些人的工资比MILLER高？
SELECT ename
FROM scott.emp
WHERE deptno=(SELECT deptno FROM scott.emp WHERE ename='miller') AND sal>(SELECT sal FROM scott.emp WHERE ename='miller');

-- 销售部门中岗位是CLERK的员工叫什么名字？
SELECT ename
FROM scott.emp
WHERE deptno=(SELECT deptno FROM scott.dept WHERE dname='销售') AND job='clerk';