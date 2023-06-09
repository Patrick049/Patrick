'''
单选选择框

打开后台页面
登录admin
点击“系统管理”
点击“客户设置”
客户注册状态选择“关闭”
客户注册状态选择“开启”
'''

from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time


dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr,'系统管理','客户设置')
time.sleep(2)
dr.find_elements_by_name('user_register_state')[1].click()
time.sleep(2)
dr.find_elements_by_name('user_register_state')[0].click()

