'''

'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *

# f = open(r'C:\Users\admin\Desktop\zhuce.csv', 'r', encoding='UTF-8')
# dr = openWeb(url)
# data = f.readlines()
# print(data)
#
# users = []
# for i in data:
#     username = i.split(',')[0]
#     passwd = i.split(',')[1]
#     users.append(username)
#
# DBzhuces(dr, users)



f = open(r'C:\Users\admin\Desktop\zhuce.csv', 'r', encoding='UTF-8')
dr = openWeb(url)
data = f.readlines()
# print(data)

for i in data:
    username = i.split(',')[0]
    passwd = i.split(',')[1]
    # users.append(username)
    DBzhuce(dr, username,passwd)