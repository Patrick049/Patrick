'''

1.选择商品名称，输入“美的”，点击“搜索”按钮。
2.搜索成功美的的后台商品

'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *
import time

testCase = 'DBshop012_商品管理管理商品搜索商品'
goods = '美的'

dr = openWeb(urlhou)
DBhouLogin(dr)
# 点击商品管理，管理商品
DBshopEnterMenu2(dr, '商品管理', '管理商品')
# 在商品名称框输入'美的'
dr.find_element_by_name('goods_name').send_keys(goods)
# 点击搜索
dr.find_element_by_xpath('//button').click()
time.sleep(3)

try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % goods).is_displayed()
    writeLog('%s 测试通过' % testCase)
except:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()



