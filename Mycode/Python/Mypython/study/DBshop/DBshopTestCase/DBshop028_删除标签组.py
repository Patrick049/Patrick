'''

1.点击“删除”按钮，确定删除，删除成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop028_删除标签组'
name = '华为老二'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '商品标签', '商品标签分组')

dr.find_element_by_link_text('删除').click()
dr.switch_to.alert.accept()
time.sleep(3)

try:
    dr.find_element_by_xpath('//td[text()="%s"]' % name).is_displayed()
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)
except:
    writeLog('%s 测试通过' % testCase)

dr.quit()