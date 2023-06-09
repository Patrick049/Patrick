'''

1.登录前台界面，点击我的订单，已完成订单，点击尚未评价，编写商品评价“下次还是会回购”，点击“点击提交”按钮。
2.回到后台界面，点击“编辑查看”，点击“评价回复”，评价回复“谢谢亲的支持和好评”，点击“回复商品评价”按钮。评价成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop023_编辑商品管理商品评价'
str1 = '下次还是会回购'
str2 = '谢谢亲的支持和好评'

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
# 点击编辑查看
dr.find_element_by_link_text('编辑查看').click()
# 点击评论回复
dr.find_element_by_partial_link_text('评价回复').click()
# 回复评论
dr.find_element_by_xpath('//textarea').send_keys(str2)
# 点击回复商品评论
moveToElement(dr, dr.find_element_by_xpath('//button[2]'))
dr.find_element_by_xpath('//button[2]').click()

try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % str2).is_displayed()
    writeLog('%s 测试通过' % testCase)
except:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()
