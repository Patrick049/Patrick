'''

1.点击“添加标签组”，填写标签组名称“华为老大”，标签排序255。
2.点击“保存保存标签组信息”，保存成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *

testCase = 'DBshop027_新增标签组'
name = '小米第二'

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu3(dr, '商品管理', '商品标签', '商品标签分组')
# 添加标签组
dr.find_element_by_xpath('//a[contains(.,"添加标签组")]').click()
# 填写标签组名称
dr.find_element_by_id('tag_group_name').send_keys(name)
# 点击保存
dr.find_element_by_xpath('//button[2]').click()

try:
    dr.find_element_by_xpath('//td[text()="%s"]' % name).is_displayed()
    writeLog('%s 测试通过' % testCase)
except:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()