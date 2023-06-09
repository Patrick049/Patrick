'''

1.点击添加品牌按钮，品牌名称“苹果”。
2.点击“保存品牌”按钮。保存成功
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *
import time

teatCase = 'DBshop021_添加品牌'
str = '苹果'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '商品管理', '商品品牌')
dr.find_element_by_xpath('//a[@class="btn btn-small btn-primary"]').click()
dr.find_element_by_name('brand_name').send_keys(str)

dr.find_element_by_xpath('//button').click()
time.sleep(3)

try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % str).is_displayed()
    writeLog('%s 测试通过' % teatCase)
except:
    writeLog('%s 测试未通过' % teatCase)
    getPhoto(dr)

dr.quit()
