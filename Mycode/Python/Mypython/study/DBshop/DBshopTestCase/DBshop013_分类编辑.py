'''

1.点击分类编辑，分类名称“家用电器”，分类状态“启用”分类排序“4”。
2.点击“保存分类”按钮，家用电器变成“4”。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *
import time

testCase = 'DBshop013_分类编辑'
fenlei = '手机数码'
n1 = '200'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '管理分类', '商品分类')
# 点击分类编辑
element = dr.find_element_by_xpath('//td[contains(.,"%s")]/following-sibling::td[4]/a[2]' % fenlei)
moveToElement(dr, element)
time.sleep(3)
dr.find_element_by_xpath('//td[contains(.,"%s")]/following-sibling::td[4]/a[2]' % fenlei).click()
time.sleep(3)

dr.find_element_by_name('class_sort').clear()
dr.find_element_by_name('class_sort').send_keys(n1)

dr.find_element_by_xpath('//button[2]').click()

n2 = dr.find_element_by_xpath('//td[contains(.,"%s")]/following-sibling::td[2]/input' % fenlei).get_property('value')

if int(n1) == int(n2):
    writeLog('%s 测试通过' % testCase)
else:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()
