'''
这是第九天的python学习
selenium的第一天学习

Python-selenium环境搭建
selenium安装，浏览器驱动


'''

# 打开IE浏览器
# from selenium import webdriver
#
# dr = webdriver.Ie()
# dr.get('https://www.baidu.com/')


# 打开火狐浏览器
# from selenium import webdriver  # 从selenium包中导入webdirver
#
# dr = webdriver.Firefox()  # 根据firefox类，实例化方法dr
# dr.get('http://localhost/dbshop/')  # 调用类中的成员方法get
# dr.find_element_by_link_text("登录").click()  # 点击‘登录’
# dr.find_element_by_id('user_name').send_keys('guo')  # 输入‘会员名称’
# dr.find_element_by_name('user_password').send_keys('123456')  # 输入‘会员密码’
# dr.find_element_by_xpath('//button[@type="submit"]').click()  # 点击‘会员登录’

# dr.find_element_by_partial_link_text('登').click()
#
# dr.find_element_by_class_name('btn.btn-primary').click()
# dr.find_element_by_css_selector('button.btn:nth-child(3)').click()
# obj = dr.find_elements_by_xpath('//input')
# obj[0].send_keys('小米')
# obj[1].click()


from selenium import webdriver

# # 打开dbshop网页，并全屏显示
# dr = webdriver.Edge()
# dr.get('https://www.bilibili.com/')
# dr.maximize_window()
# # 点击登录
# dr.find_element_by_link_text('登录').click()
# # 使用guo用户登录
# dr.find_element_by_id('user_name').send_keys('guo')
# dr.find_element_by_name('user_password').send_keys('123456')
# dr.find_element_by_xpath('//button[@class="btn btn-primary"]').click()
# # 搜索‘小米’
# ob = dr.find_elements_by_xpath('//input')
# ob[0].send_keys('小米')
# ob[1].click()

import random

# name = str()
# p = str()
# a = 'qwertyuiopasdfghjklzxcvbnm'
# b = '1234567890'
# for i in range(6):
#     p1 = str(random.choice(b))
#     n = random.choice(a)
#     # print(n)
#     name += n
#     p += p1
# print(name)
# print(p)
# print(p+'@qq.com')

# dr = webdriver.Chrome()
# dr.get('http://localhost/dbshop/')
# dr.maximize_window()
#
# dr.find_element_by_link_text('注册').click()
#
# ob = dr.find_elements_by_xpath('//input')
# ob[2].send_keys('name')
# ob[3].send_keys('123456')
# ob[4].send_keys('123456')
# ob[5].send_keys(p+'@qq.com')
# ob[6].click()
#
# dr.find_element_by_xpath('//button[@class="btn btn-primary"]').click()


# ob = dr.find_elements_by_xpath('//input')
# ob[0].send_keys('小米')
# ob[1].click()
#
# t = dr.find_elements_by_partial_link_text('小米')
# a1 = t[0].text
# a2 = t[1].text
# print(a1)
# print(a2)


# 抓取网页上所有图片
# dr = webdriver.Chrome()
# dr.get('https://blog.csdn.net/csdnopensource/article/details/125926635?spm=1000.2115.3001.5926')
# dr.maximize_window()
#
# count = 0
# while True:
#     try:
#         t = dr.find_elements_by_xpath('//img')
#         img = t[count].get_property('src')
#         count += 1
#         print(img)
#     except:
#         break
# print(count)


# dr = webdriver.Edge()
# dr.get('https://blog.csdn.net/csdnopensource/article/details/125926635?spm=1000.2115.3001.5926')
# dr.maximize_window()

# count = 0
# while True:
#     try:
#         t = dr.find_elements_by_xpath('//p')
#         a = t[count].text
#         count += 1
#         print(a)
#     except:
#         break
# print(count)


from selenium import webdriver
dr=webdriver.Edge('C:\Program Files (x86)\Microsoft\Edge\Application\msedgedriver.exe')
dr.get('https://www.bilibili.com/')
