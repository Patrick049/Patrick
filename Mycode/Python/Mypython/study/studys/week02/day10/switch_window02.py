'''
#打开DBshop首页
#在第1个页面点击"如何购买"，新建第2个页面
#在第2个页面点击"如何收货"，新建第3个页面
#在第1个页面搜索框输入"11111"
#在第2个页面搜索框输入"22222"
#在第3个页面搜索框输入"33333"

'''

from selenium import webdriver
from def_dbshop import *

# dr = webdriver.Chrome()
dr.get('http://localhost/dbshop')
dr.maximize_window()
dr.implicitly_wait(10)

dr.find_element_by_link_text('如何购买').click()
qhym(2)
dr.find_element_by_link_text('如何收货').click()

qhym(1)
dr.find_element_by_xpath('//input').send_keys('11111')
# dr.find_element_by_xpath('//input[@class="search-btn iconfont"]').click()

qhym(2)
dr.find_element_by_xpath('//input').send_keys('22222')
# dr.find_element_by_xpath('//input[@class="search-btn iconfont"]').click()

qhym(3)
dr.find_element_by_xpath('//input').send_keys('33333')
# dr.find_element_by_xpath('//input[@class="search-btn iconfont"]').click()

