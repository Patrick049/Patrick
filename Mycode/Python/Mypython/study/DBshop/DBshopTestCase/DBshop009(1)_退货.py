'''

1.点击销售管理退货管理。
2.点击退货方式，选择框选择“退货到账户余额”点击“搜索”按钮。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *
import time

testCase = 'DBshop009_销售管理退货管理搜索'

#########################################退货
# 打开网页
dr = openWeb(url)
# 登录
DBdenglu(dr,'cyy')
# 首页搜索小米，并添加至购物车
search(dr,'小米')
# 查看购物车
dr.find_element_by_xpath('//a[contains(.,"购物车")]').click()
time.sleep(2)
dr.refresh()
# 去结算
dr.find_element_by_link_text('去结算').click()

# 下一步
dr.find_element_by_xpath('//input[@value="下一步"]').click()
# 选择‘余额支付’
dr.find_element_by_xpath('//input[@value="yezf"]').click()
# 点击‘确认订单’
dr.find_element_by_xpath('//input[@value="确认订单"]').click()
# 提取订单号
orderID=dr.find_element_by_xpath('(//font)[2]').text
# 点击‘马上去支付’
dr.find_element_by_xpath('//input[@value="马上去支付"]').click()

# 打开后台网页
dr.get(urlhou)
# 登录后台
DBhouLogin(dr)
# 点击‘销售管理’下的‘订单管理’
DBshopEnterMenu2(dr,'销售管理','订单管理')
# 在搜索框输入订单号
dr.find_element_by_xpath('//input[@name="order_sn"]').send_keys(orderID)
# 点击‘搜索’
dr.find_element_by_xpath('//button').click()
time.sleep(3)
# 点击‘编辑查看’
dr.find_element_by_link_text('编辑查看').click()

# 点击‘发货操作’
dr.find_element_by_link_text('发货操作').click()
# 输入快递单号"1000000000"
dr.find_element_by_id('express_number').send_keys('1000000000')
# 输入操作说明"保证正品"
dr.find_element_by_xpath('//textarea').send_keys('保证正品')
# 点击‘点击发货’
dr.find_element_by_xpath('//button').click()

# 打开前台
dr.get(url)
# 点击‘我的订单’
dr.find_element_by_link_text('我的订单').click()
# 点击退货申请
dr.find_element_by_link_text('退货申请').click()
# 点击‘点此申请退货’
dr.find_element_by_link_text('点此申请退货').click()
time.sleep(3)
#在搜索框输入订单号
dr.find_element_by_xpath('//input[@id="order_sn"]').send_keys(orderID)
# 点击‘点击查询’
dr.find_element_by_xpath('//button[text()="点击查询"]').click()
time.sleep(2)
#在退货原因填写
dr.find_element_by_id('refund_info').send_keys('不(ˇˍˇ) 想～要了')
#点击‘退货申请’
dr.find_element_by_xpath('//button[text()="申请退货"]').click()
time.sleep(2)
# 弹窗点击‘确定’
dr.switch_to.alert.accept()
time.sleep(2)
#
try:
    dr.find_element_by_xpath('//td[text()="%s"]'%(orderID)).is_displayed()
    writeLog('退货测试通过')
except:
    writeLog('退货测试未通过')

dr.quit()