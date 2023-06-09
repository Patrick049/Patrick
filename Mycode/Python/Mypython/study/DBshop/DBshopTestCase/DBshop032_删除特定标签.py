'''

1.点击“删除”按钮，确定删除，删除成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop032_删除特定标签'
name = '2f商品666'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '商品标签', '特定商品标签')

dr.find_element_by_xpath('//td[text()="%s"]/following-sibling::td[3]/a[2]' % name).click()
dr.switch_to.alert.accept()
time.sleep(3)
try:
    dr.find_element_by_xpath('//td[text()="%s"]' % name).is_displayed()
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)
except:
    writeLog('%s 测试通过' % testCase)

dr.quit()