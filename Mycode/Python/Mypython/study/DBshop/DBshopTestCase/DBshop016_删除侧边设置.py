'''

点击“删除”按钮，确定删除，删除成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *
import time

testCase = 'DBshop016_删除侧边设置'

dr = openWeb(urlhou)
DBhouLogin(dr)
str = '网站很好看1'

DBshopEnterMenu3(dr, '商品管理', '管理分类', '前台侧边设置')
dr.find_element_by_xpath('//td[contains(.,"%s")]/following-sibling::td[3]/a[2]' % str).click()

dr.switch_to.alert.accept()
time.sleep(5)

try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % str).is_displayed()
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)
except:
    writeLog('%s 测试通过' % testCase)

dr.quit()