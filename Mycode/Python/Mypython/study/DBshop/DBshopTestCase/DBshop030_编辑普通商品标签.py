'''

1.点击“编辑”按钮，标签分类可改为“小米第二”，标签名称“小米机器人”，标签排序“2”。
2.点击“保存标签信息”按钮，编辑成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop030_编辑普通商品标签'
name1 = '华为手机，华为耳机'
name2 = '小米机器人'
zu = '小米第二'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '商品标签', '普通商品标签')

dr.find_element_by_xpath('//td[contains(.,"华为")]/following-sibling::td[3]/a[1]').click()
dr.find_element_by_xpath('//option[text()="%s"]' % zu).click()

dr.find_element_by_id('tag_name').clear()
dr.find_element_by_id('tag_name').send_keys(name2)

dr.find_element_by_id('tag_sort').clear()
dr.find_element_by_id('tag_sort').send_keys('2')

dr.find_element_by_xpath('//button').click()
time.sleep(3)

try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % name2).is_displayed()
    writeLog('%s 测试通过' % testCase)
except:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()