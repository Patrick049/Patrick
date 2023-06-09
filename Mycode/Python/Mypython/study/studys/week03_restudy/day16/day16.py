'''
from selenium.webdriver.support.select import Select
Select 模块
s.select_by_index(1)        索引不用加引号
s.select_by_visible_text('请选择')
s.select_by_value('1')     值要加引号


'''

from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr,'客户管理','管理客户')
#
# # dr.find_element_by_xpath('//option[text()="普通会员"]').click()
# s=Select(dr.find_element_by_id('group_id'))
# time.sleep(3)
# s.select_by_index(1)
# time.sleep(3)
# s.select_by_visible_text('请选择')
# time.sleep(3)
# s.select_by_value('1')

dr.find_element_by_xpath('//td[contains(.,"001")]/following-sibling::td[7]/a[4]').click()
dr.switch_to.alert.dismiss()
time.sleep(3)
dr.quit()


