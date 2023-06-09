'''

1.前台首页，点击小米电视。
2.商品咨询，咨询内容“这个有优惠吗？”点击“提交咨询”按钮，OK。
3.后台登录，商品管理商品咨询，点击“咨询回复”按钮，咨询回复“亲，这个都是统一价，便宜不了。”点击“回复商品咨询”按钮。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop025_商品咨询回复'
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
# 点击咨询回复
dr.find_element_by_link_text('咨询回复').click()
# 输入回复内容
dr.find_element_by_xpath('//textarea').send_keys('亲，这个都是统一价，便宜不了。')
# 点击回复商品咨询
dr.find_element_by_xpath('//button[2]').click()

a = dr.find_element_by_xpath('//td[contains(.,"%s")]/following-sibling::td[4]/i' % goods).get_attribute('class')
print(a)

if a == 'cus-tick':
    writeLog('%s 测试通过' % testCase)
else:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()


