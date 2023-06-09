'''

点击“删除”按钮，确认删除，删除成功
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *
import time

testCase = 'DBshop018_删除属性组'

dr = openWeb(urlhou)
DBhouLogin(dr)
str = '好好学习'

DBshopEnterMenu3(dr, '商品管理', '商品属性', '属性分组')
dr.find_element_by_xpath('//td[contains(.,"%s")]/following-sibling::td[2]/a[2]' % str).click()
time.sleep(3)
dr.switch_to.alert.accept()
time.sleep(5)

try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % str).is_displayed()
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)
except:
    writeLog('%s 测试通过' % testCase)

dr.quit()





