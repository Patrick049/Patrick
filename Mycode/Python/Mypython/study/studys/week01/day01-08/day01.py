"""
第一天python练习
变量，字符类型，数据类型，类型转换
条件表达式，逻辑表达式
if语句
"""

# print("hello world")

# message变量
# message = 'hello world'
# print(message)
# message = 100
# print(message)

# 打印姓名年龄
# name = input('输入姓名')
# age = 11
# print(str(age) + '岁的' + str(name))

# number1 = '100 + 200'
# number2 = '派大星'
# number3 = True
# print(type(number3))
# print('number1是',number2)
# print('number1是',type(number1))
# print('number2是',type(number2))

# print(100 + 86)
# print('100' + '86')
# print(str(100) + '86')
# print(100 + int('86'))

# ename = input("请问尊姓大名：")
# job = input("现居何职：")
# sal = input("月入几何：")
# print("姓名：", ename, " 职位：", job, " 收入：", sal)

# 任意两个数字和
# a = float(input('输入一个数字'))
# b = float(input('输入另一个数字'))
# c = int(input('输入一个三位数字'))
# print('a+b=%f' % (a + b))
# print('百位数为', c // 100)
# print('十位数为', c // 10 % 10)
# print('个位数为', c % 10)

# a = ' '
# for i in range(1, 9):
#     print((a * i) + '派大星')

# i = 1
# while i <5:
#     print(i)
#     i += 1

# print(10 > 20)
# print(10 < 20)
# print(10 == 20)
# print(10 != 20)
# # #
# var1 = 10
# var1 = var1 + 20
# var1 += 20
#
# var1 *=  3
# print(var1)
# # #
# var2 = "你好："
# var2 += "105同学"
# print(var2)
# # #
# var3 = 100
# #var3 = var3 - 20
# var3 -= 20
# print(var3)

# a = int(input('输入分数'))
#
# if a < 60:
#     print('R')
# elif a < 80:
#     print('SR')
# elif a<100:
#     print('SSR')
# else:
#     print('SP')


# sal = int(input("请问月收入多少："))
#
# if sal >= 3000:
#     print("工资大于等于3000，等级是A")
#     print("为真的时候，才执行这条语句，缩进表示这条语句受到if的控制")
# elif sal >= 1500:
#     print("工资在3000到1500之间，等级是B")
#     print("为假的时候，才执行这条语句，缩进表示这条语句收到if的控制")
# elif sal >= 1000:
#     print("工资在1500到1000之间，等级是C")
# else:
#     print("工资低于1000，等级是D")
# #
# print("判断完成")
#
# print("程序结束")

# import random
#
# print("=============猜数字小游戏开始，请先充值==================")
#
#
# i = 1
# while i < 4:
#     t1 = random.randint(1, 10)
#     t2 = random.randint(1, 10)
#     number3 = int(input("请输入你喜爱的数字，取值范围1~10之间："))
#     if number3 == t1:
#         print("恭喜你获得大礼包！")
#         print("运气真好！")
#     elif number3 == t2:
#         print("恭喜你获得小礼包！")
#         print("再来一次！")
#     else:
#         print("很遗憾未中奖，还有两次机会！")
#     i += 1
# print("=========游戏结束！================")
#
# print("=============猜数字小游戏开始，请先充值==================")
# t1 = random.randint(1,10)
# t2 = random.randint(1,10)
#
# for i in range(1, 4):
#     t1 = random.randint(1, 10)
#     t2 = random.randint(1, 10)
#     number3 = int(input("请输入你喜爱的数字，取值范围1~10之间："))
#     if number3 == t1:
#         print("恭喜你获得大礼包！")
#         print("运气真好！")
#     elif number3 == t2:
#         print("恭喜你获得小礼包！")
#         print("再来一次！")
#     else:
#         print("很遗憾未中奖，还有两次机会！")
#         print('大奖为%d,小奖为%d' % (t1, t2))
#     i += 1
# print("=========游戏结束！================")

