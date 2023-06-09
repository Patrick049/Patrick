'''

1.点击“删除”按钮，确定删除，删除成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *
import time

testCase = 'DBshop020_删除属性'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '商品属性', '属性')
dr.find_element_by_xpath('//td[contains(.,"天天向上")]/following-sibling::td[4]/a[3]').click()
time.sleep(3)
dr.switch_to.alert.accept()
time.sleep(5)

try:
    dr.find_element_by_xpath('//td[contains(.,"天天向上")]').is_displayed()
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)
except:
    writeLog('%s 测试通过' % testCase)

dr.quit()
