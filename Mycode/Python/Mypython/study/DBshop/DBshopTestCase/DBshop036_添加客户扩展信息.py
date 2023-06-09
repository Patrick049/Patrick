'''

1.点击“添加扩展信息”，编辑字段名称“123”，字段标题“优秀客户”，字段类型“单选表格”。
2.点击“保存客户扩展信息”。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *

testCase = 'DBshop036_添加客户扩展信息'
name = '123'
biaoti = '优秀客户'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '客户管理', '客户扩展信息')
dr.find_element_by_xpath('//a[text()=" 添加扩展信息"]').click()

dr.find_element_by_id('field_name').send_keys(name)
dr.find_element_by_id('field_title').send_keys(biaoti)
dr.find_element_by_xpath('//option[text()="单选表单"]').click()

dr.find_element_by_xpath('//button').click()

try:
    dr.find_element_by_xpath('//td[text()="%s"]' % name).is_displayed()
    writeLog('%s 测试通过' % testCase)
except:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()
