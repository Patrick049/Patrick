'''
编写时间：2022-08-06
编写人：xuguo

1.点击销售管理订单管理界面。
2.在订单状态点击已取消一栏，点击“搜索”按钮一款，勾选之后，选择删除，点击提交操作。
3.删除成功

'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *

testCase='DBshop006_订单管理删除订单'

# 打开后台页面
dr = openWeb(urlhou)
# 登录
DBhouLogin(dr)
# 点击销售管理订单管理界面
DBshopEnterMenu2(dr, '销售管理', '订单管理')
# 在订单状态点击已取消一栏
dr.find_element_by_xpath('//option[text()="已取消"]').click()
# 点击‘搜索’
dr.find_element_by_xpath('//button[@type="submit"]').click()
# 勾选第一个
dr.find_elements_by_xpath('//input[@type="checkbox"]')[1].click()

# 提取订单号
orderID = dr.find_element_by_xpath('//tbody[1]/tr[2]/td[2]').text
# print(orderID)

# 点击‘删除’
dr.find_element_by_xpath('//option[text()="删除"]').click()
# 点击‘提交操作’
dr.find_elements_by_xpath('//button[@type="submit"]')[1].click()
# 弹窗点击确定
dr.switch_to.alert.accept()
# dr.switch_to.alert.dismiss()

# 判断是否成功删除
try:
    dr.find_element_by_xpath('//td[text()="%s"]'%(orderID)).is_displayed()
    writeLog('%s 测试未通过'%(testCase))
    getPhoto(dr)
except:
    writeLog('%s 测试通过'%(testCase))

dr.quit()