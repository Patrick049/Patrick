'''

1.点击“删除”按钮，确定删除，删除成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop037_删除客户扩展信息'
name = '123'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '客户管理', '客户扩展信息')
dr.find_element_by_xpath('//td[text()="%s"]/following-sibling::td[6]/a[2]' % name).click()
dr.switch_to.alert.accept()
time.sleep(3)

try:
    dr.find_element_by_xpath('//td[text()="%s"]' % name).is_displayed()
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)
except:
    writeLog('%s 测试通过' % testCase)



