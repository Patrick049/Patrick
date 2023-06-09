"""
第三天的python学习
列表
函数：
sorted(list，reverse=True)
max(list)  min(list)
del list[索引]    移除

方法：
list.append() 在末尾添加
list.sort() 排序
list.reverse()  反转
list.insert(索引,插入值)  指定位置插入
list.remove(列表值) 只移除第一个
list.pop(索引)
list.clear() 清空列表
str.split('分隔符')  将字符串按照分隔符分割，结果返回列表
list[索引] = 'a'  只有索引存在时才能使用


元组
切片

字典
字典是一种KV结构，K是key，中文键，V是value，也就是值，一对KV称为一个键值对
字典包含有若干个键值对，但是，在一个字典中，key，键是唯一的，不可重复，值可以重复
d1['name']
d1.get('name')
di.values()  返回所有的值
d1.keys()   返回所有的键
d1.itams()  返回所有的键值对
d1['原字典中没有的键'] = 对应的值      在字典中添加键值对



"""

# l1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# print(max(l1), min(l1))   #最大，最小值
# print(sorted(l1))   #排序，不改变列表
# print(sorted(l1, reverse=True))   #逆序

# l1.append(10)
# print(l1)
# l1.insert(3,123)   #插入
# print(l1)
# l1.reverse()   #反转
# print(l1)
# l1.sort()    #排序
# print(l1)

# str = '12232425262728292'
# l2 = str.split('2')  # 以2为分隔符，分割str，返回列表l2
# print(l2)

# t1 = ('a', 'b', 'c', 'd')
# print(t1)
# print(list(t1))

# l1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
# print(l1[:])
# print(l1[:5])
# print(l1[3:6])
# print(l1[::2])

# str = '阿拉丁换气泡护肤品'
# print(str[:3])
# print(str[3:])

# d1 = {'name': '迪迦', 'age': '30000', 'city': 'M78'}
# print(d1['name'])
# print(d1.get('city'))
# print(len(d1))
# print(d1.values())
# print(d1.keys())
# print(d1.items())
# d1['high'] = 10000
# print(d1)

# s1 = {"name": "关羽", "age": 50}
# s2 = {"name": "张飞", "age": 48}
# s3 = {"name": "赵云", "age": 46}
#
# hero = [s1, s2, s3]
# print(hero[1]["name"])
# print(hero[0].get("name"))
#
# # 字典中包含有列表
# f1 = {"name": "大米先生", "food": ["烧牛肉", "土豆丝", "辣椒炒肉"]}
# f2 = {"name": "沙县小吃", "food": ["黄焖鸡", "飘香面", "卤鸡腿"]}
# print(f1.get("food")[0])
# print(f2.get("name"), f2.get("food")[1])
#
# # 字典中包含有字典
# f3 = {"name": "沙县小吃", "food": {"进店必点": "黄焖鸡", "招牌面点": "飘香面", "五一特价": "卤鸡腿"}}
# print(f3["food"]["五一特价"])
# print(f3.get("food").get("招牌面点"))

import time

# for i in range(1, 11):
#     print('吃了%d个馒头' % i)
#     time.sleep(1)
# print('吃完啦')

# i = 1
# while i <= 10:
#     print('吃了%d个馒头' % i)
#     time.sleep(1)
#     i += 1
# print('吃完啦')

# i = 0
# while True:
#     # time.sleep(1)
#     i += 1
#     if i < 4:
#         continue
#     if i == 10:
#         break
#     print('这是第%d次' % i)
#     print('***')

import random

# 猜数字游戏
# print('==========猜数字游戏==========')
#
# b = input('是否开始游戏？y/n')
# while b == 'y':
#     count = 1
#     a = random.randint(1, 1000)
#
#     while True:
#         n = int(input('输入一个数字'))
#
#         if n == a:
#             print('猜对了')
#             break
#         elif n > a:
#             print('猜大了')
#         else:
#             print('猜小了')
#
#         if count == 5:
#             c = input('是否需要作弊？y/n')
#             if c == 'y':
#                 print('答案是%d' % a)
#
#         count += 1
#
#     if count <= 3:
#         print('只猜了%d次就对了' % count)
#     else:
#         print('共猜了%d' % count)
#     b = input('是否继续游戏？y/n')
#
# print('==========游戏结束==========')

# l1={'a':1,'b':2}
# l2=('ahfhweohfooefoiwfpjw')
# # for i in l1.values():
# #     print(i)
# for i in l2:
#     print(i)

# for i in range(4):
#     a = random.randint(1, 10)
#     for i in range(a):
#         print('hello world')
#     print(a)
#     print('*'*10)


# for i in range(1, 10):
#     for j in range(1, i + 1):
#         a = i * j
#         print('%dx%d=%d' % (i, j, a), end='\t')
#     print()


l1 = [1, 10, 3, 4, 5, 6, 7, 8, 9]
l1.sort(reverse=True)
print(l1)
