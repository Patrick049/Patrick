'''
编写时间：2022-08-06
编写人：xuguo

1.在首页搜索"小米",点击搜索按钮
2.选择小米mix3，加入到购物车，点击购物车按钮
3.点击"去结算"按钮
4.默认地址已经被选择,点击下一步按钮
5.支付方式选择"线下支付",点击确认订单
6.点击马上支付,输入"支付凭证信息","线下支付宝支付",点击提交支付凭证按钮
7.登录后台管理系统,地址是"http://localhost/dbshop/admin",
8.进入销售管理订单管理,找到刚才前台提交的订单,点击"编辑查看",再点击付款操作按钮
9.将付款状态修改为"已付款",操作说明中填写"已在支付宝账号中收到款项",点击提交保存按钮
10.点击"发货操作"按钮,输入快递单号"00100001111",输入操作说明"已发货",点击"点击发货"按钮
11.点击完成订单按钮,操作说明填写"已签收",点击完成订单按钮
12.登录前台查看我的订单中,上面的订单是已完成状态.

'''
from DBshop.public.tools import *
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from selenium.webdriver.support.select import Select

# 打开网页
dr = openWeb(url)
# 登录
DBdenglu(dr, 'cyy', '123456')  # 登录cyy账号
# 首页搜索‘小米’并添加购物车
search(dr, '小米')
# 点击‘购物车’
dr.find_element_by_xpath('//a[contains(.,"购物车")]').click()
time.sleep(2)
dr.refresh()

# 点击‘去结算’
dr.find_element_by_link_text('去结算').click()
# 点击‘下一步’
dr.find_element_by_xpath('//input[@value="下一步"]').click()
# 选择‘线下支付’
dr.find_element_by_xpath('//input[@value="xxzf"]').click()
# 确认订单
dr.find_element_by_xpath('//input[@value="确认订单"]').click()
# 提取订单号
orderID=dr.find_element_by_xpath('(//font)[2]').text
# 点击‘马上去支付’
dr.find_element_by_xpath('//input[@value="马上去支付"]').click()
# 支付凭证信息输入‘线下支付宝支付’
dr.find_element_by_xpath('//textarea').send_keys('线下支付宝支付')

# 打开后台
dr.get(urlhou)
# 登录后台
DBhouLogin(dr)
# 点击‘销售管理’下的‘订单管理’
DBshopEnterMenu2(dr, '销售管理', '订单管理')
# 在搜索框输入订单号
dr.find_element_by_xpath('//input[@name="order_sn"]').send_keys(orderID)
# 点击‘搜索’
dr.find_element_by_xpath('//button').click()
time.sleep(3)
# 点击‘编辑查看’
dr.find_element_by_link_text('编辑查看').click()

# 点击‘付款操作’
dr.find_element_by_link_text('付款操作').click()
# 付款状态修改为‘已付款’
s = Select(dr.find_element_by_id('pay_state'))
s.select_by_visible_text('已付款')
# 操作说明中填写"已在支付宝账号中收到款项"
dr.find_element_by_xpath('//textarea').send_keys('已在支付宝账号中收到款项')
# 点击‘提交保存’
dr.find_element_by_xpath('//button[@class="btn btn-small btn-primary"]').click()
# 点击‘发货操作’
dr.find_element_by_link_text('发货操作').click()
# 输入快递单号"00100001111"
dr.find_element_by_id('express_number').send_keys('00100001111')
# 输入操作说明"已发货"
dr.find_element_by_xpath('//textarea').send_keys('已发货')
# 点击‘点击发货’
dr.find_element_by_xpath('//button').click()
# 点击‘完成订单’
dr.find_element_by_link_text('完成订单').click()
# 操作说明填写"已签收"
dr.find_element_by_xpath('//textarea').send_keys('已签收')
# 点击‘订单完成’
dr.find_element_by_xpath('//button').click()

# 登录前台
dr.get(url)
# DBdenglu(dr,'cyy','123456')
# 点击‘文档订单’
dr.find_element_by_link_text('我的订单').click()
# 点击‘交易完成’
dr.find_element_by_partial_link_text('交易完成').click()
# 在搜索框输入订单号
dr.find_element_by_xpath('//input[@type="text" and @name="search_order_sn"]').send_keys(orderID)
dr.find_element_by_xpath('//button[text()="搜索"]').click()

# 判断订单是否存在
try:
    dr.find_element_by_link_text(orderID).is_displayed()
    writeLog('DBshop001_购物流程1 测试通过')
except:
    writeLog('DBshop001_购物流程1 测试未通过')
    getPhoto(dr)

# 关闭浏览器
dr.quit()



