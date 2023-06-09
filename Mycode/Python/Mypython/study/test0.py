import os
from DBshop.public.tools import *
import string

# curPath=os.path.abspath(os.path.dirname(__file__))
# print(curPath)
# rootPath=os.path.split(curPath)
# print(rootPath)

# dr = openWeb('https://www.baidu.com/')
#
# s = dr.find_element_by_xpath('//span[@class="title-content-title"]').text
# print(s)
#
# a = reGetString(s,'犯','方')
# print(a)

# from DBshop.public.tools import writeLog
#
# writeLog('2')

# f = open(r'c:\mydata.csv', 'a', encoding='UTF-8')
# for i in range(100):
#     f.write('%s,%s\n' % (randomStr(6), randomPasswd(6)))
#
# f.close()

# for i in range(1, 10):
#     for j in range(1, i + 1):
#         print('{}x{}={}'.format(i, j, i * j), end='\t')
#     print()
#     i += 1


# s = 'ghsadkjastey7gfjasgfdhgsfghsgfg'
# n = 0
# for i in s:
#     if str(i) == 's':
#         n += 1
# print(n)
#
# print(s.count('s'))

# s = ['aks', 'afwe', 'afew', 'aca', 'awf', 'efqef', 'grgwe', 'fqfq']
# n = []
# for i in s:
#     if str(i[0]) == 'a':
#         n.append(i)
# print(n)


# l = [4646, 454, 111, 1117, 531, 11, 33]
# for i in range(len(l)):
#     for j in range(len(l) - i - 1):
#         if int(l[j]) > int(l[j + 1]):
#             l[j], l[j + 1] = l[j + 1], l[j]
# print(l)

# a = 'apple'
# b = 'banana'
# c = 'cherry'
# if a < b:
#     c = a
#     a = b
#     b = c
# print(a, b, c)

# x=[1,3,5,7,9]
# x.pop(3)
# print(x)

# string = "hello world!"
# print(string[11])


# for i in range(1, 10):
#     for j in range(1, i + 1):
#         print('{}x{}={}'.format(i, j, i * j), end='\t')
#     print()

# l = [14, 32546, 463, 123, 141, 34]
# n = len(l)
#
# for i in range(n):
#     for j in range(n - 1):
#         if l[j] > l[j + 1]:
#             l[j], l[j + 1] = l[j + 1], l[j]
# print(l)

# while True:
#     try:
#         l = list(map(int, input().split()))
#         print(l)
#         if l[0] == 0:
#             break
#         else:
#             print(sum(l[1:]))
#     except:
#         break


# t = int(input())
# s = []
# for i in range(t):
#     try:
#         l = list(map(int, input().split()))
#         s.append(sum(l[1:]))
#     except:
#         break
# for i in range(len(s)):
#     print(s[i])

# s = []
# while True:
#     try:
#         l = list(map(int, input().split()))
#         s.append(sum(l[1:]))
#     except:
#         break
# for i in range(len(s)):
#     print(s[i])


# while True:
#     try:
#         l = list(map(int, input().strip().split(" ")))
#         if len(l) == 1:
#             pass
#         else:
#             print(sum(l[1:]))
#     except EOFError:
#         break

# while True:
#     try:
#         s = list(input().split())
#         s.sort()
#         print(','.join(s))
#     except:
#         break


# s=list(map(str,input()))
# n=0
# print(s)
# for i in s[-1]:
#     n+=1
#     print(n)

# s=str(input())
# l=map(str,input())
# s=list(map(str,input()))
# print(s)

# s=list(map(str,input()))
# print(s)
# n=0
# a=[]
# for i in s:
#     if n<=8:
#         a.append(i)
#         print(''.join(a))
#         n+=1
#     else:
#         n=0
# # if len(a)<8:
# #     a.join('0')
# # print(a)

# s = str(input()).replace(' ', '')
# for i in range(len(s) // 8 + 1):
#     if len(s)==8:
#         print(s)
#     else:
#         print(s[:8].ljust(8, '0'))
#         s = s[8:]

# N,m=map(int,input().split())
# print(N,m)

# s = str(input()).replace(' ', '')
# for i in range(len(s) // 8 + 1):
#     if len(s) == 8:
#         print(s)
#         break
#     else:
#         print(s[:8].ljust(8, '0'))
#         s = s[8:]

# for i in range(1, 10):
#     for j in range(1, i + 1):
#         print('{}x{}={}'.format(i, j, i * j), end='\t')
#     print()

# s1=str(input())
# s2=''.join(set(s1))
# n=0
# for i in s2:
#     if 0<=ord(i)<=127:
#         if 's2[i]s2[i+1]' !='\n':
#             n+=1
#         else:
#             break
# print(n)
#
# s=list(input().split())
# print(s)
# s=' '.join(s[::-1])
# print(s)

#
# n=int(input())
# s=[]
# for i in range(n):
#     a=input()
#     s.append(a)
# print(s)
# l=list(''.join(s))
# l.sort()
# for i in l:
#     print(i)


# a='A'
# a.lower()
# print(a+1)



while True:
    try:
        a=input().strip()
        print(type(a))
        print(len(a))
        for i in range(len(a)):
            if not a[i].isalpha():
                a=a.replace(a[i], ' ')
        b=a.split(' ')
        if ' ' in b:
            b = b.pop(' ')
        b.reverse()
        print(' '.join(b))
    except:
        break
