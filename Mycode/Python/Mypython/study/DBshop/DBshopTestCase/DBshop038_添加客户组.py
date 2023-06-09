'''

1.点击“添加客户组”，编写客户组名称“博为峰”。等级积分范围“100020000”，勾选“启动”。
2.点击“保存客户组信息”按钮，

'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *
from selenium.webdriver.common.keys import Keys
import random
import string
import time
from selenium.webdriver.support.select import Select

testCase = 'DBshop038_添加客户组'
name = '派大星'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '客户管理', '管理客户组')
dr.find_element_by_xpath('//a[contains(.,"添加客户组")]').click()

dr.find_element_by_id('user_group_name').send_keys(name)
dr.find_element_by_id('integral_num_start').send_keys('1000')
dr.find_element_by_id('integral_num_end').send_keys('20000')
dr.find_element_by_name('integral_num_state').click()
dr.find_element_by_xpath('//button').click()

try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % name).is_displayed()
    writeLog('%s 测试通过' % testCase)
except:
    writeLog('%s 测试未通过' % testCase)

dr.quit()
