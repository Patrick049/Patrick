'''
这是练习函数模块
1.判断输入字符串的类型       charReco()
2.求和                   sum(n1,n2)
3.新增学生信息
4.查看学生信息
5.清空学生信息

'''

# 1.判断输入字符串的类型
def charReco():
    c = input("请输入一个字符，判断字符类型：")
    if c.isdigit():
        print("数字")
    elif c.isalpha():
        print("字母")
    elif c.isalnum():
        print('')
    elif c.isspace():
        print('是空格')
    else:
        print("符号")


# 2.求和
def sum(n1, n2):
    print(n1 + n2)

# 3.新增学生信息
def stuAdd():
    f = open(r'C:\stu.txt', 'a', encoding='UTF-8')
    name = input('输入姓名')
    id = int(input('输入学号'))
    f.write('%-13s%-13d\n' % (name, id))
    print('-----新增成功-----')
    f.close()

# 4.查看学生信息
def stuSelect():
    f = open(r'C:\stu.txt', 'r', encoding='UTF-8')
    f1 = f.readlines()
    print('%-13s%-13s' % ('姓名', '学号'))
    for i in f1:
        print(i, end='')
    f.close()

# 5.清空学生信息
def stuClear():
    f = open(r'C:\stu.txt', 'w', encoding='UTF-8')
    f.write('')
    print('%-13s%-13s' % ('姓名', '学号'))
    print('-----清空成功-----')
    f.close()

