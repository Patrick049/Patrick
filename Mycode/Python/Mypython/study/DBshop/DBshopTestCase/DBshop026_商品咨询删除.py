'''

1.前台首页，点击小米电视。
2.商品咨询，咨询内容“这个有优惠吗？”点击“提交咨询”按钮，OK。
3.后台登录，商品管理商品咨询，点击“删除”按钮，，确认删除，删除成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop026_商品咨询删除'
goods = '小米（MI）电视'

dr = openWeb(url)
DBdenglu(dr, 'cyy')
# 点击小米电视
dr.find_element_by_partial_link_text(goods).click()
# 点击商品咨询
dr.find_element_by_link_text('商品咨询').click()
# 输入咨询内容
dr.find_element_by_name('goods_ask_content').send_keys('这个有优惠吗？')
# 提交咨询
dr.find_element_by_xpath('//button[text()="提交咨询"]').click()
time.sleep(3)
dr.find_element_by_xpath('//button[text()="提交咨询"]').click()

# 登录后台
dr.get(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '商品管理', '商品咨询')

s = dr.find_element_by_xpath('//strong').text
n1 = reGetString(s, '咨询数：', '\)')
print(n1)

time.sleep(3)
dr.find_element_by_link_text('删除').click()
dr.switch_to.alert.accept()
time.sleep(3)

DBshopEnterMenu2(dr, '商品管理', '商品咨询')
time.sleep(3)
n2 = reGetString(s, '咨询数：', '\)')
print(n2)

if int(n1) == int(n2) + 1:
    writeLog('%s 测试通过' % testCase)
else:
    writeLog('%s 测试未通过' % testCase)

dr.quit()