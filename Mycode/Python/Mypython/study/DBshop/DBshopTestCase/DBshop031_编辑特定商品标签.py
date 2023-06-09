'''

1.点击“编辑”按钮，标签类型“手机端首页商品”，标签名称“1F商品”。
2.点击“保存标签信息按钮”，保存成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop031_编辑特定商品标签'
name = '12'
newname = '2f商品666'


dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '商品标签', '特定商品标签')
###########################新加特定商品标签
# dr.find_element_by_xpath('//a[contains(.,"添加特定商品标签")]').click()
# dr.find_element_by_xpath('//option[text()="首页2F商品"]').click()
# dr.find_element_by_id('tag_name').send_keys(name)
# dr.find_element_by_xpath('//button').click()

###########################编辑特定商品标签
dr.find_element_by_xpath('//td[text()="%s"]/following-sibling::td[3]/a[1]' % name).click()

# dr.find_element_by_xpath('//option[text()="首页2F商品"]').click()
dr.find_element_by_id('tag_name').clear()
dr.find_element_by_id('tag_name').send_keys(newname)

dr.find_element_by_xpath('//button').click()
time.sleep(3)

try:
    dr.find_element_by_xpath('//td[text()="%s"]' % newname).is_displayed()
    writeLog('%s 测试通过' % testCase)
except:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)
