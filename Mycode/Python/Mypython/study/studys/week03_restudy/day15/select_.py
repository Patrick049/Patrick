'''

下拉选择框(select)
1.直接定位select下要选择的option元素
2.直接通过option标签的文本定位

'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '系统管理', '客户设置')

# 1.直接定位select下要选择的option元素
dr.find_element_by_xpath('//select[@name="register_audit"]/option[2]').click()

# 2.直接通过option标签的文本定位
dr.find_element_by_xpath('//option[text()="无需验证"]').click()


