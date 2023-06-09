'''
第五天的Python学习
嵌套for循环
九九乘法表
函数：
1.def 关键字
2.函数名（参数）
3.函数体

time库

'''

# import time
#
# n1 = int(input('准备吃几笼'))
# n2 = int(input('一笼有几个'))
# for i in range(1, n1 + 1):
#     print('开始吃第%d笼' % i)
#     for j in range(1, n2 + 1):
#         print('开始吃第%d笼的第%d个' % (i, j))
#         time.sleep(1)
#
#     if i < n1:
#             print('第%d笼吃完了，开始吃下一笼' % i)
#
# print('全部吃完了')


# for i in range(1, 10):
#     for j in range(1, i + 1):
#         print('%dx%d=%d' % (i, j, i * j), end='\t')
#     print()


# def sum(n1, n2, n3=0):
#     # sum = n1 + n2 + n3
#     print(n1 + n2 + n3)
#     # return sum
#
#
# sum(10,20)
# # print(sum(10, 20))


# def sale(type, zhifu):
#     if type == 1:
#         print('十渠')
#     elif type == 2:
#         print('黄鹤楼')
#     elif type == 3:
#         print('1916')
#
#     if zhifu == 1:
#         return '这里是支付宝码'
#     elif zhifu == 2:
#         return '这里是微信码'
#     else:
#         return '支付方式无效'
#
#
# s = int(input('选择要购买的商品(1/2/3):'))
# z = int(input('选择支付方式:支付宝（1），微信（2）'))
# a=sale(s,z)
# print(a)


# return '购买成功'


# type = int(input('选择要购买的商品（1/2/3）:'))
# money = int(input('请扫码支付'))
#
# a = sale(type, money)
# # print(a)
# print('%s购买成功' % a)

# def hero(name, age=100):
#     print('你好%s，年龄是%d'%(name,age))
#
# hero('曹操')
# hero('刘备',20)
# hero(age=20,name='赵云')


# charReco()
# sum(10,20)


# t1 = t.time()
# # print(t1)
# for i in range(1000000):
#     print(i)
#
# t2 = t.time()
# # print(t2)
# print('执行了%d次，用时%.4f秒' % (i + 1, t2 - t1))

# print(t.localtime())
# print('当前时间为:',t.strftime('%Y-%m-%d %H:%M:%S',t.localtime()))

# print('按文件合法IP方\t清平完全无法前往',end='\t')
# print(r'按文件合法IP方\n清平完全无法前往')


# print('%-20s%-20s%-20s'%('name','age','sex'))
# print('%-20s%-20d%-20s'%('张三',20,'男'))

# f1 = open(r'C:\Users\admin\Desktop\Git同步\Mysql\练习题1.sql', 'r', encoding='UTF-8')
# # print(f1.read())
#
# f2 = f1.readlines()
# print(f2)
#
# for line in f2:
#     print(line, end='')
# print(type(f2))
#
# f1.close()

# f1 = open(r'c:\test.txt', 'a', encoding='UTF-8')
# for i in range(10):
#     f1.write('ヾ(❀●◡●)ﾉ\n')
# print('写入完成')

# 打开一个文件并显示行号
# f1 = open(r'C:\Users\admin\Desktop\Git同步\Mysql\练习题1.sql', 'r', encoding='UTF-8')
# n = 1
# f2 = f1.readlines()
# for i in f2:
#     print(n, i, end='')
#     n += 1

# n = 1
# while True:
#     f2 = f1.readline()1
#     print(n, end='\t')
#     # print(f2, end='')
#     n += 1
#     if f2:
#         print(f2, end='')
#     else:
#         break
# f1.close()

from studys.public.def_mtest import *

print('*****学生信息*****')

while True:
    a = int(input('1.新增学生信息\n2.查看学生信息\n3.清空学生信息\n4.退出\n'))
    if a == 1:
        stuAdd()
    elif a == 2:
        stuSelect()
    elif a == 3:
        stuClear()
    elif a == 4:
        print('*****退出*****')
        break
    else:
        print('输入错误')
