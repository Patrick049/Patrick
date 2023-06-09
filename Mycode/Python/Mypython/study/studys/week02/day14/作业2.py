'''
写一个删除商品的脚本，添加检查点判断是否删除成功，要求：脚本可以重复执行

'''

from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time

username = '101'

dr = openWeb(url)
DBdenglu(dr, username, passwd)

dr.find_element_by_xpath('//span[text()="加入购物车"]').click()
time.sleep(5)
dr.find_element_by_xpath('//i[@class="iconfont"]').click()
dr.refresh()
n1 = int(dr.find_element_by_xpath('//span[@class="mini-cart-num J_cartNum"]').text)
dr.find_element_by_link_text('删除').click()
dr.switch_to.alert.accept()
time.sleep(5)
dr.refresh()
n2 = int(dr.find_element_by_xpath('//span[@class="mini-cart-num J_cartNum"]').text)
# print(n1,n2)

if n2<n1:
    print('删除成功')
else:
    print('删除失败')

