练习1： 
1.往emp表里插入一条雇员信息，雇员编号为4位，hiredate取当前系统值，DEPTNO部门编号取值为10、20、30当中的一个，
2.将deptno取值为10的职工薪水翻倍，并且ename在原来取值的基础上拼接上TEST;
3.删除刚刚插入的的职工信息；
INSERT into emp (empno,ename,hiredate,deptno) VALUES (1234,'老六',SYSDATE(),10);
UPDATE emp SET sal=sal*2 ,ename=CONCAT('TEST',ename) WHERE deptno=10;
DELETE FROM emp WHERE empno=1234;

练习2： 
两个表定义如下：（如果已经有该表，则将该表删除掉再重新创建）
---省份表，省份id和省份名称；
CREATE TABLE province(
pro_id VARCHAR(10) PRIMARY KEY,
pro_name VARCHAR(30)
);
--公民信息表，身份证id，姓名，年龄，省份，性别，手机号，学历。其中省份定义为省份表中的省份id的外键
DROP TABLE human;
CREATE TABLE human(
id CHAR(18) PRIMARY KEY,
NAME VARCHAR(20) NOT NULL,
age FLOAT(3),
province VARCHAR(10),
sex CHAR(1),
telephone VARCHAR(15) UNIQUE ,
FOREIGN KEY(province) REFERENCES province(pro_id));
执行上面两个SQL语句，将表建上。

1.往省份表插入“陕西、山西、江西、广西”这4个省份信息，省份编号自定义；
2. 已知“姓名为吴起，年龄22，省份名称为江西，性别男，手机号15134523543”这个公民信息，将这个公民插入到公民表中，没有说明的属性字段自定义；插入中会遇到很多约束限制，约束不能变，可以通过修改表结构、表数据来满足要求，将数据插入到表中。并把解决问题的sql记录下来
3. 已知“姓名为吴起，年龄151，省份名称为浙江，性别女”公民信息，将这个公民插入到公民表中；说明：插入时遇到约束限制时，约束不能变，可以改变表结构、表数据来满足插入要求。并把解决问题的sql记录下来
4.将省份表中的省份为“江西”的数据删除；
INSERT INTO province VALUES (1,'陕西'),(2,'山西'),(3,'江西'),(4,'广西');
INSERT INTO human VALUES (100,'吴起',1.111,2,'男',15134523543);
INSERT INTO human VALUES (200,'吴起',151,2,'女',15134523544);
INSERT INTO human VALUES (300,'吴起',151,2,'女',15134523545);
DELETE FROM province WHERE pro_id=3;

练习3： 
如下四张表：
1）学生信息表student
学号：sid CHAR 长度5   (主键)
姓名：sname  VARCHAR  长度10
性别：ssex  CHAR(M/F)  长度1
年龄：sage  FLOAT 长度3
电话：sphone VARCHAR  长度12
系别：did  FLOAT  长度5   （外键）

2）课程信息表（course）
编号：cid   CHAR  长度5  （主键）
名称：cname  VARCHAR    长度20
课时：chour  FLOAT  长度2
讲师：tname  VARCHAR   长度10

3）学生成绩表（score）
编号：scid  FLOAT 长度5  （主键）
学号：sid   CHAR   长度5   （外键）
课程：cid   CHAR    长度5    （外键）
成绩：grade  FLOAT 长度3

4）系别表（department）
编号：did   FLOAT  长度5  （主键）
名称：dname   VARCHAR 长度20
电话：dphone   VARCHAR  长度12

创建上面4张表及约束；


