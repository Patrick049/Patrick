'''
模拟鼠标移动
from selenium.webdriver.common.action_chains import ActionChains
mose = ActionChains(dr)  # 实例化对象，用于模拟鼠标
obj = dr.find_element_by_link_text('管理分类')  # 找到要移动的元素，存储在变量obj中
mose.move_to_element(obj).perform()  # 鼠标移动到元素obj上，perform是立即执行

'''

from DBshop.public.action import *
from selenium.webdriver.common.action_chains import ActionChains  # 导入ActionChains

def DBhouLogin():
    dr = openWeb('http://localhost/dbshop/admin')
    dr.find_element_by_id('user_name').send_keys('admin')
    dr.find_element_by_id('user_passwd').send_keys('123456')
    dr.find_element_by_xpath('//button[text()="后台登录"]').click()

dr = openWeb('http://localhost/dbshop/admin')
dr.find_element_by_id('user_name').send_keys('admin')
dr.find_element_by_id('user_passwd').send_keys('123456')
dr.find_element_by_xpath('//button[text()="后台登录"]').click()

dr.find_element_by_link_text('商品管理').click()
mose = ActionChains(dr)  # 实例化对象，用于模拟鼠标

obj = dr.find_element_by_link_text('管理分类')  # 找到要移动的元素，存储在变量obj中
mose.move_to_element(obj).perform()  # 鼠标移动到元素obj上，perform是立即执行

dr.find_element_by_link_text('商品分类').click()

# dr = openWeb('https://www.bilibili.com/')
#
# element=dr.find_element_by_xpath('//span[text()=" 登录 "]')
# moveToElement(dr,element)
# dr.find_element_by_xpath('//div[@class="login-btn"]').click()
#
# dr.find_element_by_xpath('//span[text()=" 密码登录 "]').click()
# dr.find_element_by_xpath('//input[@placeholder="请输入账号"]').send_keys('15613368932')
# dr.find_element_by_xpath('//input[@placeholder="请输入密码"]').send_keys('11111111')


