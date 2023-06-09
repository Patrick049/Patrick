'''

1.点击“添加侧边设置”按钮，显示名称“网站很好看”，排序255，点击“保存侧边显示信息”。
2.保存成功信息
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *

testCase = 'DBshop015_添加侧边设置'
str = '网站很好看1'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '管理分类', '前台侧边设置')
# 点击添加侧边显示
dr.find_element_by_xpath('//a[@class="btn btn-small btn-primary"]').click()
# 输入显示名称
dr.find_element_by_name('frontside_name').send_keys(str)
# 点击保存侧边显示
dr.find_element_by_xpath('//button').click()

try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % str).is_displayed()
    writeLog('%s 测试通过' % testCase)
except:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()
