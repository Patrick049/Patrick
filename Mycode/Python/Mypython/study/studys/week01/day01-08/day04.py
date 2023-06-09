"""
列表[]  list
元组()  tuple
定义：  名 =（）
元组的元素不能修改（增删改）
方法：
count（）
index（）
关键字：
in
not in
tuple（list）  列表转元组
list（tuple）  元组转列表
切片
字符串操作
a.find()    a.rfind()      find从左往右查找，如果没有符合要求的，则返回-1;rfind 从右往左找
a.index()   a.rindex()     index也是查找，但是如果找不到会报错;rindex 从右往左查
a.count()
判断：
startswith(是否以xxx开始),endswith(是否以xxx结束),isalpha(是否是字母),
isdigit(是否是数字),isalnum(是否是字母或数字),isspace(判断是否由空格组成)
模拟文件上传
生成随机六位数字加字母验证码
"""

import random

# t1=()
# t2=('a',)   #如果元组只有一个元素，必须在后面加','
# print(type(t1),type(t2))

# t3=('a',123,1.1,'a','b','c','b','a')
# print(type(t3))
# print(t3[1:])
# print(t3[::-1])
# print(t3.count('a'))
# print(t3.index('a',1))

# for i in t3:
#     print(i)
#
# print('a' in t3)
# print('d' not in t3)

# l1=['a','b','c','d']
# print(l1[0])


#
# count = 1
# n = 'y'
# m = input('来玩剪刀石头布吗？y/n')
# if m == 'y':
#     while n == 'y':
#         if n == 'y':
#             bb = str(input('你出什么呢'))
#             aa = random.randint(0, 3)
#             if bb not in ['剪刀', '石头', '布']:
#                 if count <= 3:
#                     print('亲亲，请不要撩我玩哦')
#                     count += 1
#                 else:
#                     print('拜拜了小菜鸡')
#                     break
#
#             else:
#                 if aa == 0:
#                     print('我出的剪刀')
#                     if bb == '剪刀':
#                         print('我们平局啦')
#                     elif bb == '布':
#                         print('我输啦')
#                     else:
#                         print('你赢啦，你真棒')
#                 elif aa == 1:
#                     print('我出的石头')
#                     if bb == '剪刀':
#                         print('我赢啦，小菜鸡')
#                     elif bb == '石头':
#                         print('哦，再来一次啊，本王不屑与你平局')
#                     else:
#                         print('不可能，重新再来，我不会输给你')
#                 else:
#                     print('我出的布')
#                     if bb == '剪刀':
#                         print('行行行，你厉害')
#                     elif bb == '石头':
#                         print('小菜鸟，输了吧')
#                     else:
#                         print('谁才跟你平局啊，走开')
#         n = input('是否继续？y/n')
#
# print('游戏结束')

# a = 'https://www.bilibili.com/video/BV1R7411F7JV?p=32&vd_source=2ea6c84e6bc158a49ddf285f3b8f3faa'
# print(a.find('d'))
# print(a.rfind('d'))
# print(len(a))
# print(a.index('d'))
# print(a.count('?'))
# i = a.find('?')
# m = a[i:]
# print(m)
# i = a.find('_')
# m = a[i+1:]
# print(m)
# m=a.find('w')
# n=a.find('com')
# print(n)
# i=a[m:n+3]
# print(i)
# print(m)
# print(a.count('b'))
# a = '2ea6c84e6bc158a49ddf285f3b8f3faa'
# print(a.startswith())


# 模拟文件上传
# w = input('输入上传文件名')
# if len(w) > 6 and w.endswith('jpg') or w.endswith('png') or w.endswith('gif'):
#     print('上传成功')
# else:
#     print('文件名不符合要求，上传失败')

# w = input('输入上传文件名')
# if w.endswith('png') or w.endswith('jpg') or w.endswith('gif'):
#     i = w.rfind('.')
#     if len(w[:i]) > 6:
#         print('上传成功')
#     else:
#         a = str(random.randint(100000, 999999))
#         # print(a)
#         # print(i)
#         # print(w[:i])
#         # w[:i]
#         w = a + w[i:]
#         # print(w)
#         print('文件名以修改为%s,上传成功' % w)
# else:
#     print('文件格式不符合，上传失败')


# 随机字母数字验证码
# name = ''
# s = 'qwertyuiopasdfghjklzxcvbnmQWERTYUIOPLKJHGFDSAZXCVBNM1234567890'
# for i in range(6):
#     m = random.choice(s)
#     name += m
# print(name)
