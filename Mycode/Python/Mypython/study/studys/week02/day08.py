'''
这是python的第八天学习
正则表达式
impor re
re.search(搜索，被搜索)     从任意位置搜索
re.match(搜索，被搜索)      从开始位置搜索
re.fullmatch(搜索，被搜索)  完全搜索，必须和被搜索内容完全一致

搜索工具
给定要搜索的文件路径和内容，进行搜索
result = re.search(s, i, re.I)       re.I  不区分大小写

\w   等价于[0-9a-zA-Z_]
*    匹配前一个字符0次或无限次
+    匹配前一个字符1次或无限次
.    匹配除换行符（\n）之外的其他字符
\    转义符
{}   前一个字符匹配的次数
[]


程序异常处理
try:
    a=int(input())
except:
    print('输入错误')



'''

import random
import re
import sys

# 生成一个有序的随机数列表
# num = []
# for i in range(10):
#     a = random.randint(-10, 100)
#     num.append(a)
#
# num.sort()
# print(num)
#
# target = int(input('输入一个数字：'))
# # 输入一个数字，如果在列表中返回下表，如果不在，返回-1
# count = 0
# for i in num:
#     if i == target:
#         print(count)
#         break
#     count += 1
# else:
#     print('-1')

# def search(target):
#     num = []
#     for i in range(100):
#         a = random.randint(-100, 100)
#         num.append(a)
#
#     num.sort()
#     print(num)
#
#     # target = int(input('输入一个数字：'))
#     # 输入一个数字，如果在列表中返回下表，如果不在，返回-1
#     count = 0
#     for i in num:
#         if i == target:
#             print(count)
#             break
#         count += 1
#     else:
#         print('-1')
#
# search(20)

# s = 'awfje;[qkfwegfprjewgnsf;qwf'
# a = input('输入要搜索的内容')
# c = re.compile(a)     #编译搜索的关键字，得到一个编译后的正则对象
# result = c.search(s)
# if result:
#     print('搜索成功')
#     print(result)
# else:
#     print('搜索失败')

# str1 = "床前明月光，疑是地上霜，举头望明月，低头思故乡"
#
# s = r'明月'
# creg = re.compile(s)
# result = creg.search(str1)
# print(result)

# s1 = re.search(s, str1)
# s2 = re.match(s, str1)
# s3 = re.fullmatch(s, str1)
# print(s1,'\n',s2,'\n',s3)


# print('-----搜索工具-----')
# n = input('输入要搜索的文件路径')
# s = input('输入要搜索的内容')

# f = open(n, 'r', encoding='UTF-8')
# f1 = f.readlines()
# f.close()
# count = 1
# flag = True
# for i in f1:
#     result = re.search(s, i, re.I)
#     if result:
#         print('搜索成功，关键词是{}，在第{}行，内容为{}'.format(s, count, i), end='')
#         flag = False
#     count += 1
# # else:
# #     print('搜索失败，没有匹配内容')
# if flag:
#     print('搜索失败')


# emailreg = '[0-9a-zA-Z]+@[0-9a-zA-Z]+\.[0-9a-zA-Z]{2,4}'
# emailreg = '\w+@\w+\.\w{2,4}'
# email = input('输入邮箱')
#
# erg = re.compile(emailreg)
# result = re.fullmatch(erg, email)
# if result:
#     print('匹配成功')
# else:
#     print('匹配失败')


# count = 1
# while True:
#     try:
#         age = int(input('输入你的年龄'))
#         print('今年{}岁'.format(age))
#         break
#     except:
#         if count >= 3:
#             print('输入次数达上限，账号被锁定')
#             break
#         else:
#             print('输入错误，请输入数字')
#             t = input(('是否要退出？按任意键继续，按q退出'))
#             count += 1
#             if t == 'q':
#                 break
#
# print('程序结束')


# def sum():
#     s = 0
#     n1 = input('输入一个数字')
#     n2 = input('输入另一个数字')
#     try:
#         s = int(n1) + int(n2)
#         # print(s)
#     except:
#         print('输入类型错误，请输入数字')
#     print(s)
#
# sum()


# flag = False
# while True:
#     path = input('输入文件路径')
#     try:
#         f = open(path, 'r', encoding='UTF-8')
#         f1 = f.read()
#         print(f1, end='')
#         print('文件读取成功')
#         break
#         # flag = True
#     except:
#         print(sys.exc_info())
#         print('文件读取失败')
#         print('文件不存在或路径输入错误，请检查')
#         f = input('是否继续？按任意键继续，按q退出')
#     if f == 'q':
#         break
#     # if flag:
#     #     print('文件读取成功')


f = open(r'D:\桌面\Git\Mysql\day1.sql', 'r', encoding='UTF-8')
f1 = f.readlines()
for i in f1:
    print(i, end='')
