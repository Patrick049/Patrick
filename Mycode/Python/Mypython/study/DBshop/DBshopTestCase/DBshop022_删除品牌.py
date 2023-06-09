'''

点击“删除”按钮，确定删除，删除成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop022_删除品牌'
str = '苹果'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '商品管理', '商品品牌')
dr.find_element_by_xpath('//td[contains(.,"%s")]/following-sibling::td[4]/a[2]' % str).click()
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
