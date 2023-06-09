'''


'''
import random
from selenium import webdriver

# from def_dbshop import *

# 1.把DBshop页面上所有的商品名称全部打印到控制台，要求：不重复打印。
dr = webdriver.Chrome()
dr.maximize_window()
dr.implicitly_wait(10)
# #
# dr.get('http://localhost/dbshop')
# goods = dr.find_elements_by_xpath('//a[@href and @title]')
# a = set()
# count = 1
# for good in goods:
#     # print(good)
#     if good.text:
#         a.add(good.text)
# # print('a=', a)
# for i in a:
#     print(count, i)
#     count += 1


# 2.写一个修改密码的脚本，要求：不需要手动修改脚本，每次运行都可以成功
f = open(r'c:\pwd.txt', 'r', encoding='UTF-8')
p1 = f.readlines()[0]
p2 = random.randint(100000, 999999)
print(p1)

dr.get('http://localhost/dbshop')
dr.find_element_by_link_text('登录').click()


while True:
    if p1==p2:
        p2=random.randint(100000, 999999)
    else:
        dr.find_element_by_xpath('//*[@id="user_name"]').send_keys('a')
        # try:
        #     dr.find_element_by_xpath('//*[@id="user_password"]').send_keys('123456')
        # except:
        dr.find_element_by_xpath('//*[@id="user_password"]').send_keys(int(p1))

        dr.find_element_by_xpath('//button[text()="会员登录"]').click()

        dr.find_element_by_link_text('用户中心').click()
        # dr.switch_to_window(dr.window_handles[1])
        dr.find_element_by_link_text('账户信息').click()
        dr.find_element_by_link_text('密码修改').click()
        # try:
        #     dr.find_element_by_id('old_user_password').send_keys('123456')
        # except:
        dr.find_element_by_id('old_user_password').send_keys(int(p1))
        dr.find_element_by_id('user_password').send_keys(int(p2))
        dr.find_element_by_id('user_password_con').send_keys(int(p2))
        p1 = p2
        dr.find_element_by_xpath('//button[@class="btn btn-primary"]').click()

        f = open(r'c:\pwd.txt', 'w', encoding='UTF-8')
        f.write(str(p2))
        f.close()
        break
print('密码修改成功，新密码为:{}'.format(p2))





