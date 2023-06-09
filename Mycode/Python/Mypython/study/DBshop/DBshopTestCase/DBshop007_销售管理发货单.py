'''
编写时间：2022-08-06
编写人：xuguo

1.点击销售管理发货单。
2.点击“查看”按钮，可以查看发货单已发货和未发货信息。
'''
from DBshop.public.tools import *
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time

testCase = 'DBshop007_销售管理发货单'

dr = openWeb(urlhou)
DBhouLogin(dr)
# 点击销售管理发货单
DBshopEnterMenu2(dr, '销售管理', '发货单')

zhuangtai = dr.find_element_by_xpath('//td[7]').text
# print(zhuangtai)
dr.find_element_by_link_text('查看').click()
time.sleep(3)

try:
    dr.find_element_by_xpath('//span[contains(.,"%s")]' % (zhuangtai)).is_displayed()
    writeLog('%s 测试通过' % (testCase))
except:
    writeLog('%s 测试未通过' % (testCase))
    getPhoto(dr)

dr.quit()
