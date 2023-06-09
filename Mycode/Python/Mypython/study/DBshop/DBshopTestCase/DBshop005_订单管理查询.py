'''
编写时间：2022-08-06
编写人：xuguo

1.点击销售管理订单管理界面。
2.在订单号查询框输入“1594531607860011”，点击“搜索”按钮。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *

testCase='DBshop005_订单管理查询'
orderID = '1594531607860011'

# 打开后台页面
dr = openWeb(urlhou)
# 登录
DBhouLogin(dr)
# 点击销售管理订单管理界面
DBshopEnterMenu2(dr, '销售管理', '订单管理')
# 在搜索框输入‘1594531607860011’
dr.find_element_by_name('order_sn').send_keys(orderID)
# 点击‘搜索’
dr.find_element_by_xpath('//button').click()

# 判断订单是否存在
try:
    dr.find_element_by_xpath('//td[text()="%s"]' % (orderID)).is_displayed()
    writeLog('%s 测试未通过' % (testCase))
    getPhoto(dr)
except:
    writeLog('%s 测试通过' % (testCase))

dr.quit()


