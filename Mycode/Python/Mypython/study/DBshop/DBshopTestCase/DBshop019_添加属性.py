'''

1.点击“添加属性”按钮，编写属性分组“好好学习”，属性类型“下拉”，属性名称“天天向上”，排序“255”。
2.点击“保存属性信息”按钮，保存成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *

teatCase = 'DBshop019_添加属性'
str = '好好学习'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '商品属性', '属性')
dr.find_element_by_xpath('//a[@class="btn btn-small btn-primary"]').click()

dr.find_element_by_xpath('//option[text()="%s"]' % str).click()
dr.find_element_by_name('attribute_name').send_keys('天天向上')

dr.find_element_by_xpath('//button').click()

try:
    dr.find_element_by_xpath('//td[text()="天天向上"]').is_displayed()
    writeLog('%s 测试通过' % teatCase)
except:
    writeLog('%s 测试未通过' % teatCase)
    getPhoto(dr)

dr.quit()
