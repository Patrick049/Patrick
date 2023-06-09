'''

1.点击“添加普通商品标签”。
2.填写标签分组“华为老大”，标签名称“华为手机，华为耳机”，标签排序255.
3.点击“保存标签信息”，保存成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop029_新增普通商品标签'
name = '华为手机，华为耳机'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '商品标签', '普通商品标签')

dr.find_element_by_xpath('//a[contains(.,"添加普通商品标签")]').click()
dr.find_element_by_xpath('//option[text()="华为老大"]').click()
dr.find_element_by_xpath('//textarea').send_keys(name)

dr.find_element_by_xpath('//button').click()
time.sleep(3)

try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % name).is_displayed()
    writeLog('%s 测试通过' % testCase)
except:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()
