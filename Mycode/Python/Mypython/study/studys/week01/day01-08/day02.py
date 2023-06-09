"""
第二天python练习
for，whlie循环
固定次数猜数游戏练习（for，whlie循环）
购物消费等级练习，分等级送优惠券和充值送金额（if）
多次猜数游戏whlie True （while if）
范围内可以被3整除的数及个数（while if）
"""

import random

# 猜数字小游戏，有三次机会（for循环写法）
# print('------这是一猜数小游戏------')
# for i in range(1, 4):
#     n1 = random.randint(1, 10)
#     n2 = random.randint(1, 10)
#     m = 3 - i
#     n3 = int(input('输入一个1-10之间的数字'))
#
#     if n3 == n1:
#         print('恭喜你，获得一等奖')
#         break
#     elif n3 == n2:
#         print('恭喜你，获得二等奖')
#         break
#     else:
#         print('很遗憾未中奖，还有%d次机会' % m)
#         print('一等奖数字为%d，二等奖数字为%d' % (n1, n2))
# print('游戏结束')

# 猜数字小游戏，有三次机会（while循环写法）
# print('------这是一猜数小游戏------')
# i = 1
# while i < 4:
#     n1 = random.randint(1, 10)
#     n2 = random.randint(1, 10)
#     n3 = int(input('请输入一个1-10之间的数字'))
#     m = 3 - i
#     if n3 == n1:
#         print('恭喜你，获得一等奖')
#         break
#     elif n3 == n2:
#         print('恭喜你，获得二等奖')
#         break
#     else:
#         print('很遗憾未中奖，还有%d次机会' % m)
#         print('一等奖数字为%d，二等奖数字为%d' % (n1, n2))
#     i += 1
# print('游戏结束')


"""
阿里巴巴电商节，用户名，消费总金额，账户金额，优惠券
输入消费总金额
如果金额0-500  l1级别
如果金额500-2000  l2级别
如果金额2000以上  l3级别
l1：随机赠送3张1-10的优惠券
l2：赠送2张50元优惠券，如果充值则送充值金额的10%
l3：赠送2张100元优惠券，如果充值则送充值金额的15%
"""
# username = str(input('请输入您的用户名'))
# total = float(input('请输入消费总金额'))
# money = float(0)  #账户金额
# rechange = float(0)  #优惠券总额
# # print(money,rechange)
#
# if total < 500:   #l1
#     quan1 = random.randint(1, 10)  #三张1-10随机金额的优惠券
#     quan2 = random.randint(1, 10)
#     quan3 = random.randint(1, 10)
#     rechange += quan1 + quan2 + quan3  #优惠券总额
#     print('您的消费总金额为%.3f，账户金额为%.3f，优惠券为%.3f' % (total, money, rechange))
# elif total < 2000:   #l2
#     rechange += 2 * 50  #两张50优惠券
#     print('%s您好' % username)
#     chong = str(input('你是二级会员，如果充值则送充值金额的10%，是否充值？（y/n）'))   #判断是否充值
#     if chong == 'y':  #充值
#         money1 = float(input('请输入充值金额'))
#         money += money1 * 1.1
#         print('您的消费总金额为%.3f，账户金额为%.3f，优惠券为%.3f' % (total, money, rechange))
#     else:   #不充值
#         print('您的消费总金额为%.3f，账户金额为%.3f，优惠券为%.3f' % (total, money, rechange))
# else:  #l3
#     rechange += 2 * 100
#     print('%s您好' % username)
#     chong = str(input('你是二级会员，如果充值则送充值金额的15%，是否充值？（y/n）'))
#     if chong == 'y':
#         money1 = float(input('请输入充值金额'))
#         money += money1 * 1.15
#         print('您的消费总金额为%.3f，账户金额为%.3f，优惠券为%.3f' % (total, money, rechange))
#     else:
#         print('您的消费总金额为%.3f，账户金额为%.3f，优惠券为%.3f' % (total, money, rechange))


# 猜数游戏，可循环猜多次，猜错有提示猜大猜小，直到猜对退出并统计猜的次数
# n1=random.randint(1,10)
# count=0
# # n2=int(input(('输入一个1-10之间的数字')))
# while True:    #循环猜多次
#     count +=1
#     n2=int(input(('输入一个1-10之间的数字')))
#     if n2==n1:
#         print('猜对了')
#         break
#     elif n2 > n1:
#         print('猜大了')
#     else:
#         print('猜小了')
# print('游戏结束，共猜了%d次'%count)


# 范围内可以被3整除的数及个数
# n = 1
# count = 0
# while n <= 1012424:
#     if n % 3 == 0:
#         print(n)
#         count += 1
#     n += 1
# print('一共有%d个数可以被3整除' % count)


