'''

1.点击销售管理支付记录。
2,点击"订单号"按钮，查看订单已发货还是未发货。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *

testCase = 'DBshop008_销售管理支付记录'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '销售管理', '支付记录')

zhuangtai = dr.find_element_by_xpath('//td[6]').text
print(zhuangtai)

dr.find_element_by_xpath('//td').click()


