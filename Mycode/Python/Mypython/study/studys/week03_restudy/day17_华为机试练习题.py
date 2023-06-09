'''
这是学习Python第17天
练习牛客网华为机试题

'''
import string

'''
现在有一种密码变换算法。
九键手机键盘上的数字与字母的对应： 1--1， abc--2, def--3, ghi--4, jkl--5, mno--6, pqrs--7, tuv--8 wxyz--9, 0--0，把密码中出现的小写字母都变成九键键盘对应的数字，如：a 变成 2，x 变成 9.
而密码中出现的大写字母则变成小写之后往后移一位，如：X ，先变成小写，再往后移一位，变成了 y ，例外：Z 往后移是 a 。
数字和其它的符号都不做变换。
数据范围： 输入的字符串长度满足 1 \le n \le 100 \ 1≤n≤100 
输入描述：
输入一组密码，长度不超过100个字符。

输出描述：
输出密码变换后的字符串
'''
# a = input()
# s = ''
# for i in a:
#     if i in (string.ascii_lowercase):
#         if i in ('abc'):
#             s += '2'
#         elif i in ('def'):
#             s += '3'
#         elif i in ('ghi'):
#             s = '4'
#         elif i in ('jki'):
#             s = '5'
#         elif i in ('mno'):
#             s += '6'
#         elif i in ('pqrs'):
#             s += '7'
#         elif i in ('tuv'):
#             s += '8'
#         elif i in ('wxyz'):
#             s += '9'
#     elif i in (string.ascii_uppercase):
#         if i == 'Z':
#             s += 'a'
#         else:
#             s += chr(ord(i.lower()) + 1 )
#     else:
#         s += i
# print(s)

# m = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
# n = '012345678922233344455566677778889999bcdefghijklmnopqrstuvwxyza'
# a = input()
# s = ''
# for i in a:
#     s += n[m.index(i)]
# print(s)


s = input()
a = set(s)
d = {}
b = ''
for i in a:
    d[i] = s.count(i)
for j in s:
    if s.count(j) > min(d.values()):
        b += j
print(b)
