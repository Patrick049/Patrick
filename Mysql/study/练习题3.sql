/*
-- 创建学生表
create table test.S(
  sno  int(3),
  sname varchar(10)   
)DEFAULT charset=utf8;
insert into test.S values(1,'小明');
insert into test.S values(2,'小强');
insert into test.S values(3,'小红');
insert into test.S values(4,'小冬');

-- 创建课程表
create table test.C(
  cno  int(3),
  cname varchar(10),
  cteacher varchar(10)
)DEFAULT charset=utf8;
insert into test.C values(1,'语文','李白');
insert into test.C values(2,'数学','体育老师');
insert into test.C values(3,'英语','李明');

-- 创建选课关系表
create table test.SC(
  sno int(3),
  cno int(3),
  scgrade decimal(4,1)
)DEFAULT charset=utf8;
insert into test.SC values(1,2,98);
insert into test.SC values(1,3,9);
insert into test.SC values(2,1,70);
insert into test.SC values(2,2,68);
insert into test.SC values(3,1,89);
insert into test.SC values(3,2,59);
insert into test.SC values(4,1,59);
insert into test.SC values(4,2,58);
insert into test.SC values(4,3,98);
*/

-- 1、找出没有选修过“李明”老师讲授课程的所有学生姓名
SELECT sname
FROM test.s
WHERE NOT sno in (SELECT sno FROM test.sc WHERE cno=(SELECT cno FROM test.c WHERE cteacher='李明'));

-- 2、计算所有同学的各科成绩之和，并按照总成绩进行降序排序
SELECT s.sno,s.sname,SUM(scgrade)总分 
FROM s,sc 
WHERE s.sno=sc.sno 
GROUP BY sc.sno 
ORDER BY 总分 DESC;

SELECT cno,SUM(scgrade) 总分
FROM sc
WHERE cno in(1,2,3)
GROUP BY cno
ORDER BY 总分 DESC;

-- 3、列出有二门以上（含两门）不及格(<60)课程的学生姓名及其平均成绩

-- SELECT sno,COUNT(scgrade) 不及格科目数,AVG(scgrade) FROM sc WHERE sno in (SELECT sno FROM sc WHERE scgrade<60) GROUP BY sno
-- SELECT sno,COUNT(scgrade) FROM sc WHERE sno in (SELECT sno,COUNT(*) FROM sc WHERE scgrade<60 GROUP BY sno HAVING COUNT(scgrade)>=2)
SELECT s.sno,s.sname,AVG(scgrade) 平均分 
FROM s,sc 
WHERE s.sno=sc.sno AND sc.sno in(SELECT sc.sno FROM sc WHERE scgrade<60 GROUP BY sc.sno HAVING COUNT(scgrade)>=2)
GROUP BY sc.sno;

-- 4、列出既学过“1”号课程，又学过“2”课程的所有学生姓名

-- SELECT s.sno,s.sname,COUNT(*) FROM s,sc WHERE s.sno=sc.sno GROUP BY sno
-- SELECT sc.sno,s.sname,COUNT(*),sc.cno FROM s,sc WHERE cno=1 or cno=2 GROUP BY sno
-- SELECT sno,cno,COUNT(*) from sc  WHERE cno=1 or cno=2 GROUP BY sno HAVING COUNT(*) >1
SELECT sno,sname FROM s WHERE sno in (SELECT sno FROM sc  WHERE cno=1 or cno=2 GROUP BY sno HAVING COUNT(*) >1);
SELECT s.sno,s.sname FROM s,sc WHERE s.sno=sc.sno AND (sc.cno=1 or sc.cno=2) GROUP BY sc.sno HAVING COUNT(*) >1;

-- 5、列出“1”号课成绩比“2”号课成绩高的所有学生的学号
-- SELECT sno 
-- FROM sc 
-- WHERE sno in (SELECT s.sno FROM s,sc WHERE s.sno=sc.sno AND (sc.cno=1 or sc.cno=2) GROUP BY sc.sno HAVING COUNT(*) >1
-- ) AND (SELECT scgrade FROM sc WHERE cno=1) > (SELECT scgrade FROM sc WHERE cno=2)
-- 
-- s
-- SELECT sno FROM sc WHERE (SELECT scgrade FROM sc WHERE cno=1 AND sno in(2,3,4)) > (SELECT scgrade FROM sc WHERE cno=2 AND sno in(2,3,4));

	SELECT t1.sno
	FROM 
		(SELECT * FROM test.sc WHERE cno=1) t1,
		(SELECT * FROM test.sc WHERE cno=2) t2
	WHERE t1.sno=t2.sno
		AND t1.scgrade>t2.scgrade;

PRIMARY KEY 
FOREIGN KEY () REFERENCES TABLE ()




