'''

1.点击“添加属性组”，编辑属性组名称“好好学习”，属性组排序“1”。
2.点击“保存属性分组信息”
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *

teatCase = 'DBshop017_添加属性组'
str = '好好学习'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '商品属性', '属性分组')
dr.find_element_by_xpath('//a[@class="btn btn-small btn-primary"]').click()

dr.find_element_by_name('attribute_group_name').send_keys(str)
dr.find_element_by_name('attribute_group_sort').clear()
dr.find_element_by_name('attribute_group_sort').send_keys('1')

dr.find_element_by_xpath('//button').click()

try:
    dr.find_element_by_xpath('//td[text()="%s"]' % str).is_displayed()
    writeLog('%s 测试通过' % teatCase)
except:
    writeLog('%s 测试未通过' % teatCase)
    getPhoto(dr)

dr.quit()
