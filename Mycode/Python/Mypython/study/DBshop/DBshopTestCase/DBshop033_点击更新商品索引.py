'''

1.点击“点击更新商品索引”按钮，点击“保存索引设置”
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop033_点击更新商品索引'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '商品管理', '商品索引')

dr.find_elements_by_xpath('//button')[1].click()
time.sleep(3)
a = dr.switch_to.alert.text
dr.switch_to.alert.accept()

dr.find_element_by_xpath('//button').click()
time.sleep(3)

yvqi = '索引更新成功！'

if a == yvqi:
    writeLog('%s 测试通过' % testCase)
else:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()
