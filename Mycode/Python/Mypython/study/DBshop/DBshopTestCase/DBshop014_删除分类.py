'''

1.点击“删除分类”（选择没有子分类的）按钮，确定删除，删除成功
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *
import time

testCase = 'DBshop014_删除分类'

dr = openWeb(urlhou)
DBhouLogin(dr)
fenleiname = '测试分类1'

DBshopEnterMenu3(dr, '商品管理', '管理分类', '商品分类')
########################添加分类
# 点击添加分类
dr.find_element_by_link_text('添加分类').click()
# 添加分类名称
dr.find_element_by_xpath('//textarea').send_keys(fenleiname)
# 保存分类
dr.find_element_by_xpath('//button').click()

########################删除分类
# 点击删除分类
element = dr.find_element_by_xpath('//td[contains(.,"%s")]/following-sibling::td[4]/a[3]' % fenleiname)
moveToElement(dr, element)
time.sleep(3)
dr.find_element_by_xpath('//td[contains(.,"%s")]/following-sibling::td[4]/a[3]' % fenleiname).click()
# 弹窗确定
dr.switch_to.alert.accept()
dr.refresh()
dr.switch_to.alert.accept()
dr.refresh()
dr.switch_to.alert.accept()
dr.refresh()
time.sleep(5)

try:
    dr.find_element_by_xpath('//td[contains(.,"%s")]' % fenleiname).is_displayed()
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)
except:
    writeLog('%s 测试通过' % testCase)

dr.quit()
