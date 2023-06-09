'''
编写时间：2022-08-06
编写人：xuguo

1.在首页搜索"小米",点击搜索按钮
2.选择小米mix3,加入到购物车,点击购物车按钮
3.点击"去结算"按钮
4.默认地址已经选择,点击下一步按钮
5.支付方式选择"余额支付",点击确认订单
6.点击"查看订单详情",点击"取消订单"
'''
from DBshop.public.tools import *
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time

# 打开前台网页
dr = openWeb(url)
# 登录
DBdenglu(dr, 'cyy')
# 首页搜索小米并添加至购物车
search(dr, '小米Mix3')
# 查看购物车
dr.find_element_by_xpath('//a[contains(.,"购物车")]').click()
time.sleep(2)
dr.refresh()
# 去结算
dr.find_element_by_link_text('去结算').click()
# 下一步
dr.find_element_by_xpath('//input[@value="下一步"]').click()
# 选择'余额支付'
dr.find_element_by_xpath('//input[@value="yezf"]').click()
# 点击‘确认订单’
dr.find_element_by_xpath('//input[@value="确认订单"]').click()
# 提取订单号
orderID=dr.find_element_by_xpath('(//font)[2]').text
# 点击‘查看订单详情’
dr.find_element_by_xpath('//input[@value="查看订单详情"]').click()
# 在搜索框输入订单号
dr.find_element_by_xpath('//input[@name="search_order_sn"]').send_keys(orderID)
# 点击‘搜索’
dr.find_element_by_xpath('//button').click()

# 点击‘取消订单’
dr.find_element_by_xpath('//button[text()="取消订单"]').click()
# 弹窗点击确定
dr.switch_to.alert.accept()

# 判断订单是否存在
try:
    dr.find_element_by_link_text(orderID).is_displayed()
    writeLog('购物流程取消 测试未通过')

except:
    writeLog('购物流程取消 测试通过')
    getPhoto(dr)

dr.quit()


