'''

1.登录前台界面，点击我的订单，已完成订单，点击尚未评价，编写商品评价“下次还是会回购”，点击“点击提交”按钮。
2.回到后台界面，点击“编辑查看”，点击“删除”，确认删除，删除成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop024_删除商品管理商品评价'
str1 = '下次还是会回购'

dr = openWeb(url)
DBdenglu(dr, 'cyy')

# 点击‘我的订单’
dr.find_element_by_link_text('我的订单').click()
# 点击‘交易完成’
dr.find_element_by_partial_link_text('交易完成').click()

# t = dr.find_element_by_xpath('//a[@class="goods-name"]').text

# 点击’尚未评价‘
dr.find_element_by_partial_link_text('尚未评价').click()
# 输入’下次还是会回购‘
dr.find_element_by_xpath('//textarea').send_keys(str1)
# 点击提交
dr.find_element_by_xpath('//button').click()
time.sleep(3)

dr.get(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '商品管理', '商品评价')

s = dr.find_element_by_xpath('//strong').text
# print(s)
n1 = reGetString(s, '评价数：', '\)')
# print(n1)
# 点击编辑查看
dr.find_element_by_link_text('编辑查看').click()
# 点击删除
dr.find_element_by_link_text('删除').click()
dr.switch_to.alert.accept()

time.sleep(3)
n2 = reGetString(s, '评价数：', '\)')

if int(n2) == int(n1) - 1:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)
else:
    writeLog('%s 测试通过' % testCase)

dr.quit()
