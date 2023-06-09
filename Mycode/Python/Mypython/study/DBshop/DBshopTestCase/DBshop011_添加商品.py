'''

1.点击添加商品按钮，商品名称填写“苹果XR”,本店价格“7999”，商品类型“虚拟商品”。
2.点击“保存商品”按钮，后台保存成功添加的商品。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *

testCase = 'DBshop011_商品管理管理商品添加商品'
goods = '苹果XR Max'

dr = openWeb(urlhou)
DBhouLogin(dr)
# 点击商品管理，管理商品
DBshopEnterMenu2(dr, '商品管理', '管理商品')
# 点击添加商品
dr.find_element_by_partial_link_text('添加商品').click()
# 商品名称输入’苹果XR‘
dr.find_element_by_id('goods_name').send_keys(goods)
# 输入商品价格7999
dr.find_element_by_id('goods_shop_price').send_keys('7999')
# 选择虚拟商品
dr.find_element_by_xpath('//option[text()="虚拟商品"]').click()
# 点击保存商品
dr.find_element_by_xpath('//button[text()=" 保存商品"]').click()

#判断是否添加成功
try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % (goods)).is_displayed()
    writeLog('%s 测试通过' % (testCase))
except:
    writeLog('%s 测试未通过' % (testCase))
    getPhoto(dr)

dr.quit()
