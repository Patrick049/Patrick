"""
第三天python学习
列表[]，元素不限制类型   索引从0开始
输入年份和月份判断有多少天 列表，索引，if
用户名密码登录，三次错误后提示被锁定(for...else:)
while...else:
输入年份计算生肖
掷骰子游戏
"""
import random

# namelist = ['还我爷爷', '大娃', '二娃', '三娃', '四娃', '五娃', '六娃', '七娃']
# print(type(namelist))
# print(namelist[:])
# print(namelist[1:])
# print(namelist[-1:-8:-1])
# print(namelist[4])
# print(namelist[-7])
# print(namelist[1], [2])

# 输入年份和月份
# mlist = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
# y = int(input('请输入年份'))
# m = int(input('请输入月份'))
# if m == 2:
#     if y % 4 == 0 and y % 100 != 0 or y % 400 == 0:
#         mlist[2] = 29
#         print('%d年是闰年' % y)
#     else:
#         print('%d年是平年' % y)
# print('%d年%d月有%d天' % (y, m, mlist[m]))

# count =0
# for i in range(1,10000):
#     if i % 4 == 0 and i % 100 == 0:
#         print(i)
#         count +=1
# print(count)

# 猜数字游戏
# n1 = random.randint(1, 10)
# count = 1
#
# while True:
#     n2 = int(input('请输入一个数字'))
#     if n2 == n1:
#         print('猜对了')
#         break
#     elif n2 > n1:
#         print('猜大了')
#     else:
#         print('猜小了')
#     count += 1
#
# if count==1:
#     print('共猜了%d次，欧皇'%count)
# elif count<=3:
#     print('共猜了%d次，运气一般'%count)
# else:
#     print('共猜了%d次，非酋'%count)


# 乘法表
# for i in range(1,10):
#     for j in range(1,i+1):
#         k=i*j
#         print('%dx%d=%d'%(i,j,k),end='\t')
#     print('')


# 用户名密码登录，三次错误后提示被锁定
# username = 'admin'
# posswd = '1234'
# j=3
# for i in range(1,3):
#     j=3-i
#     username1 = str(input('请输入名用户'))
#     posswd1 = str(input('请输入密码'))
#
#     if username1==username and posswd1==posswd:
#         print('登录成功')
#         break
#     else:
#         print('用户名或密码错误，还有%d次机会，请重新输入\n'%j)
#
# else:
#     print('账户已被锁定')


# i = 1
# while i <= 100:
#     if i % 3 == 0:
#         print(i)
#         break
#     i += 1
# else:
#     print('成功')


# 猜拳游戏 三局两胜，平局追加
# nlist = ['石头', '剪刀', '布']
# count = 0
# i = 3
# while i != 0:
#     n = random.choice(nlist)
#     print(n)
#     n1 = input('请输入')
#     if n1 == '石头':
#         if n == '石头':
#             print('平局\n')
#         elif n == '剪刀':
#             print('你赢了\n')
#             i -= 1
#             count += 1
#         else:
#             print('你输了\n')
#             i -= 1
#     elif n1 == '剪刀':
#         if n == '石头':
#             print('你输了\n')
#             i -= 1
#         elif n == '剪刀':
#             print('平局\n')
#         else:
#             print('你赢了\n')
#             i -= 1
#             count += 1
#     else:
#         if n == '石头':
#             print('你赢了\n')
#             i -= 1
#             count += 1
#         elif n == '剪刀':
#             print('你输了\n')
#             i -= 1
#         else:
#             print('平局\n')
# print(count)
# if count >= 2:
#     print('你赢的了比赛')
# else:
#     print('你输掉了比赛')


# 12生肖计算
# while True:
#     n = int(input('输入年份'))
#     if n == 1 or n % 12 == 1:
#         print('属鸡')
#     elif n == 2 or n % 12 == 2:
#         print('属狗')
#     elif n == 3 or n % 12 == 3:
#         print('属猪')
#     elif n == 4 or n % 12 == 4:
#         print('属鼠')
#     elif n == 5 or n % 12 == 5:
#         print('属牛')
#     elif n == 6 or n % 12 == 6:
#         print('属虎')
#     elif n == 7 or n % 12 == 7:
#         print('属兔')
#     elif n == 8 or n % 12 == 8:
#         print('属龙')
#     elif n == 9 or n % 12 == 9:
#         print('属蛇')
#     elif n == 10 or n % 12 == 10:
#         print('属马')
#     elif n == 11 or n % 12 == 11:
#         print('属羊')
#     else:
#         print('属猴')


"""
掷骰子游戏
两个骰子 1-6
1.玩游戏要有金币，没金币不能玩
2.玩游戏输赢都赠一枚金币，充值可获得金币
3.充值是10元的倍数，比例1:2
4.一局游戏消耗5个金币
5.猜大小 猜对获得2，猜错没有       超过6为大
6.游戏结束：主动退出或没有金币
7.退出是打印金币数和游戏局数
"""

# 金币（j） 充值金额（c） 骰子1点数（n1） 骰子2点数（n2） 局数（count）
j = 10
count = 0
m = 'y'

m = input('是否开始游戏？y/n')
while m == 'y':
    # if count != 0:        应放在循环末尾判断，不然输入n后还会继续执行
    #     m = input('是否继续？y/n')
    j -= 5
    n1 = random.randint(1, 6)
    n2 = random.randint(1, 6)
    n = n1 + n2
    if n > 6:
        print('你的点数1为%d，点数2为%d，总点数为%d,为大,获胜' % (n1, n2, n))
        j += 2
        print('金币余额为%d' % j)
    else:
        print('你的点数1为%d，点数2为%d，总点数为%d,为小,输了' % (n1, n2, n))
        print('金币余额为%d' % j)
    count += 1
    if j < 5:
        m = 'n'
        n = input('金币不足，是否充值？ y/n')
        if n == 'y':
            c = int(input('输入要充值的金额'))
            j += 2 * c
            print('金币余额%d' % j)
            m = 'y'
        else:
            print('金币不足，退出游戏')
    if count != 0:
        m = input('是否继续？y/n')
print('游戏结束，共玩了%d局,金币余额%d' % (count, j))
