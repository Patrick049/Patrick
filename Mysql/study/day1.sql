/*SQL语法
1.SQL语句不区分大小写
2.语句可以换行，一条语句必须以分号";"结尾
3.运行按钮是执行所有的内容，选中一行按Ctrl+Shift+R运行选中的行
4.查表之前需要声明数据库，  数据库.表
*/

-- *代表查询所有的字段
SELECT * FROM scott.emp;
SELECT * FROM scott.dept;
SELECT * FROM aeaicrm.crm_city;

-- SELECT 后面接查询结果
SELECT ename,job,5*8 FROM scott.emp;
-- 除了查询字段以外，还可以查询表达式、函数等
-- concat(a,b,c) 将a,b,c拼接成一个字符串
-- if(a,b,c) 如果条件a成立，则输出b，否则输出c
-- a=b 如果成立结果为1，如果不成立结果为0
SELECT empno*100, ename, CONCAT(ename,"酱"), sal, if(sal>=3000,"有钱人","穷鬼"),1+1=3
FROM scott.emp;

-- 别名
-- 别名就是语句在执行过程中给表、字段取的昵称
-- 1.给字段取别名
SELECT empno as "员工编号", ename as 员工姓名, job "工作", sal 工资
FROM scott.emp;
-- 2.给表取别名
SELECT t.empno,t.ename,t.job,t.sal
FROM scott.emp as t;

-- 条件查询
	-- 查询10部门的员工信息
	SELECT * FROM scott.emp WHERE deptno=10;
	-- 查询工资在2000以上的员工编号、姓名、工资
	SELECT empno,ename,sal
	FROM scott.emp
	WHERE sal>2000;
	-- 查询SMITH的姓名、岗位、领导工号、部门编号
	SELECT ename,job,mgr,deptno
	FROM scott.emp
	WHERE ename='smith';
	-- 查询姓名是ADAMS,SCOTT,JONES,SMITH的员工信息
	SELECT *
	FROM scott.emp
	WHERE ename in('ADAMS','SCOTT','JONES','SMITH');
	-- 查询工资是1100-1600之间的员工信息
	SELECT *
	FROM scott.emp
	WHERE sal BETWEEN 1100 AND 1600;
	-- 查询没有奖金的员工信息
	SELECT *
	FROM scott.emp
	WHERE comm is NULL;

	SELECT *
	FROM scott.emp
	WHERE comm is NOT NULL;
-- 模糊查询 LIKE
	-- %通配符表示n个任意字符，_通配符表示1个任意字符
-- 正则表达式 REGEXP（Regular Expression）
	-- ^表示字符串开始，$表示字符串结束，.{n}表示n个任意字符
  -- 查询姓名是A开头的员工信息
	SELECT * FROM scott.emp	WHERE ename LIKE 'A%';
	SELECT * FROM scott.emp WHERE ename REGEXP '^A';
	-- 查询名字中带有字母'K'的员工信息
	SELECT * FROM scott.emp WHERE ename LIKE '%K%';
	SELECT * FROM scott.emp WHERE ename REGEXP 'K';
	-- 查询名字第2个字母是A的员工信息
	SELECT * FROM scott.emp WHERE ename LIKE '_A%';
	SELECT * FROM scott.emp WHERE ename REGEXP '^.A';
	-- 查询名字是4个字母的员工信息
	SELECT * FROM scott.emp WHERE ename LIKE '____';
	SELECT * FROM scott.emp WHERE ename REGEXP '^.{4}$';
-- 多条件查询
	-- 查询10部门中岗位是CLERK的员工编号、姓名、岗位、部门编号
	SELECT empno,ename,job,deptno
	FROM scott.emp
	WHERE deptno='10' AND job='CLERK';
	-- 查询工资是1000(包含1000)以下或者3000(包含3000)以上的员工信息
	SELECT * FROM scott.emp WHERE sal<=1000 or sal>=3000;
	-- 查询10部门岗位是CLERK的员工和20部门岗位是MANAGER的员工信息，只显示员工编号、姓名、岗位、部门编号
	SELECT * 
	FROM scott.emp
	WHERE (deptno=10 AND job='CLERK') or (deptno=20 AND job='MANAGER');

	SELECT * 
	FROM scott.emp
	WHERE deptno=10 AND job='CLERK' or deptno=20 AND job='MANAGER';
	-- 查询10部门中岗位是CLERK或者MANAGER的员工信息
	SELECT *
	FROM scott.emp
	WHERE deptno=10 AND (job='CLERK' or job='MANAGER');
	-- 查询岗位是CLERK或者MANAGER的员工中，哪些人的工资在1000-2500之间
	SELECT *
	FROM scott.emp
	WHERE job in('CLERK','MANAGER') AND sal BETWEEN 1000 AND 2500;
	-- 查询名字中即有A又有M的员工信息
	SELECT *
	FROM scott.emp
	WHERE ename LIKE '%A%' AND ename LIKE '%M%';
  -- 查询不是30部门的员工信息
	SELECT * FROM scott.emp WHERE not(deptno=30);
	SELECT * FROM scott.emp WHERE deptno!=30;
	-- 查询除去 名字中即有A又有M的员工以外，其它的员工信息
	SELECT *
	FROM scott.emp
	WHERE not(ename LIKE '%A%' AND ename LIKE '%M%');
-- 子查询
	-- SMITH在哪里工作？
	SELECT loc 
	FROM scott.dept 
	WHERE deptno=(SELECT deptno FROM scott.emp WHERE ename='SMITH');
	-- SMITH的领导叫什么名字？
	SELECT ename
	FROM scott.emp
	WHERE empno=(SELECT mgr FROM scott.emp WHERE ename='SMITH');
	-- 销售部门中岗位是CLERK的员工叫什么名字？
	SELECT *
	FROM scott.emp
	WHERE deptno=(SELECT deptno FROM scott.dept WHERE dname='销售') AND job='CLERK';
	-- KING有哪几个直接下属？
	SELECT *
	FROM scott.emp
	WHERE mgr=(SELECT empno FROM scott.emp WHERE ename='KING');
	-- MILLER同部门的同事中，哪些人的工资比MILLER高？
	SELECT *
	FROM scott.emp
	WHERE deptno=(SELECT deptno FROM scott.emp WHERE ename='MILLER') AND sal>(SELECT sal FROM scott.emp WHERE ename='MILLER');
	-- 查询在北京和上海工作的员工信息
	SELECT *
	FROM scott.emp
	WHERE deptno in(SELECT deptno FROM scott.dept WHERE loc in('北京','上海'));





