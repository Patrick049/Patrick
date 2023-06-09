'''
这是python第七天学习
列表，元组，字典复习练习

字符串处理
s.strip()     去除左右两侧空格
s.rstrip()    去除右侧空格
s.lstrip()    去除左侧空格

s.center(w)   w个字符长度，不足时补空格，居中对齐
s.ljust(w)    w个字符长度，不足时补空格，左对齐
s.rjust(w)    w个字符长度，不足时补空格，右对齐

.format()
print('{}{}'.format(a,b))              可以是任意字符类型
print('{0}{1}{1}'.format(a,b))         花括号内填变量索引
print('{a}{b}{b}'.format(a=1,b=2))     在花括号内填写变量时，应在format中写出变量的值



'''

s = '     hello world   '
# s1 = s.center(20)
# print(s1)
# print('%s' % (s.strip()))
# print('%s' % (s.rstrip()))
# print('%s' % (s.lstrip()))
# print('%s' % (s.center(20)))
# print('%s' % (s.ljust(20)))
# print('%s' % (s.rjust(20)))
# print('%-10s%-10s' % ('ahdhwe', 'dqhwo'))
# print('%-10s%-10s' % ('dlwqdlj', 'dqoiwoe'))

# a = 1
# b = 'ajldf'
# print('{}{}'.format(a, b))
# print('{b}{a}{b}'.format(a=1, b=2.1))
# print('{1}{0}{0}'.format(a, b))

# 列表复习
l = [1, 23, 5, 46, 67, 7, 88, 2]
# l.sort()
# l.reverse()
# print(l)
# l.append(3)
# print(l)
# l.remove(23)
# print(l)
# l.insert(0,12)
# print(l)
# l.pop(0)
# print(l)
# s=['']
# l=s.split('3')
# print(l)
# l.clear()


# 元组
# t = (1,)
# print(type(t))
# t = (21, 34, 354,)
# print(t)

# 字典
dict = {'name': '张三', 'age': 18, 'sex': '男'}
# print(type(dict))
# d1 = dict.values()
# d2 = dict.keys()
# d3 = dict.items()
# print(d1, '\n', d2, '\n', d3, '\n')
dict['friend'] = '罗翔'
print(dict)
# print(dict.get('age'))
dict.pop('sex')
print(dict)
# print(dict['name'])


# 打开文件，显示行号
#f = open(r'C:\Users\admin\Desktop\Git同步\Mysql\练习题1.sql', 'r', encoding='UTF-8')

# f1 = f.readlines()
# # print(type(f1))
# # print(f1)
# count = 1
# for i in f1:
#     # print(type(i))
#     if i != '\n':
#         print(count, i, end='')
#         count += 1


# count = 1
# while True:
#     f1 = f.readline()
#     if f1:
#         # if len(f1) != 0:
#         print(count, end='\t')
#         print(f1, end='')
#     else:
#         break
#     count += 1

# s = {'dwf', 'q3rt', 'fq3re'}
# print(type(s))


# 随机生成五组不重复的四位验证码
# import random
# s = set()
# l = 'qazwsxedcrfvtgbyhnujmikolpQAZWSXEDCRFVTGBYHNUJMIKOLP1234567890'
# while True:
#     a1 = random.choice(l)
#     a2 = random.choice(l)
#     a3 = random.choice(l)
#     a4 = random.choice(l)
#     a = '{}{}{}{}'.format(a1, a2, a3, a4)
#
#     s.add(a)
#
#     if len(s) == 5:
#         break
# print(s)

