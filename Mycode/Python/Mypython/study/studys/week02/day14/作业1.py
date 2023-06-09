'''
写一个www.bilibili.com的登录，做到选择验证码即可

'''

from DBshop.public.action import *

dr = openWeb('https://www.bilibili.com/')

element=dr.find_element_by_xpath('//span[text()=" 登录 "]')
moveToElement(dr,element)
dr.find_element_by_xpath('//div[@class="login-btn"]').click()

dr.find_element_by_xpath('//span[text()=" 密码登录 "]').click()
dr.find_element_by_xpath('//input[@placeholder="请输入账号"]').send_keys('15613368932')
dr.find_element_by_xpath('//input[@placeholder="请输入密码"]').send_keys('11111111')
dr.find_element_by_xpath('//div[@class="universal-btn login-btn"]').click()
