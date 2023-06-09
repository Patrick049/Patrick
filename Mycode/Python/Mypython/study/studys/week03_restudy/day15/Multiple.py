'''
下拉框复选
from selenium.webdriver.support.select import Select

s=Select(dr.find_element_by_id('list1'))

s.select_by_index(1)
s.select_by_value('44')
s.select_by_visible_text('Tomcat')

'''
from DBshop.public.action import *
import time

dr = openWeb('C:\\Users\\admin\\Desktop\\test.html')

from selenium.webdriver.support.select import Select

s=Select(dr.find_element_by_id('list1'))

s.select_by_index(1)
time.sleep(1)
s.select_by_value('44')
time.sleep(1)
s.select_by_visible_text('Tomcat')
time.sleep(1)
s.deselect_all()