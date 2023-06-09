'''
JavaScript弹窗处理
dr.switch_to.alert.dismiss()     选择弹窗的取消
dr.switch_to.alert.accept()     选择弹窗的确定
print(dr.switch_to.alert.text)   提取弹窗文本

#打开dbshop后台
#登录
#点击“客户管理”
#点击“管理客户”
#点击第1个“删除”
#在JS弹窗中点击“取消”


'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '客户管理', '管理客户')

dr.find_element_by_link_text('删除').click()
dr.switch_to.alert.dismiss()  # 选择弹窗的取消
time.sleep(2)

dr.find_element_by_link_text('删除').click()
print(dr.switch_to.alert.text)  # 提取弹窗文本

dr.find_element_by_link_text('删除').click()
dr.switch_to.alert.accept()  # 选择弹窗的确定
