'''
'//td[contains(.,"%s")]/following-sibling::td[6]/a[2]'%(goodsname)
xpath模糊定位
//td[contains(.,'文本')]
兄弟元素定位
'xpath表达式/dollowing-sibling::元素'

切换页面
dr.switch_to_frame(dr.find_element_by_id('页面id'))     切换至页面
dr.switch_to.default_content()       切换至主页面
dr.find_element_by_xpath('//body').clear()    清空页面

模拟键盘操作
from selenium.webdriver.common.keys import Keys
dr.find_element_by_xpath('//body').send_keys(Keys.ENTER)  # 模拟键盘操作


'''

from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from selenium.webdriver.common.keys import Keys

dr = openWeb(urlhou)
DBhouLogin(dr)

dr.find_element_by_link_text('系统管理').click()
dr.find_element_by_link_text('系统设置').click()
dr.find_element_by_link_text('内容信息').click()

dr.switch_to_frame(dr.find_element_by_id('ueditor_0'))  # 切换至商品售后服务页面
dr.find_element_by_xpath('//body').clear()  # 清理商品售后服务页面
dr.find_element_by_xpath('//body').send_keys('1111111111')

dr.switch_to.default_content()  # 切换至主页面

dr.switch_to.frame(dr.find_element_by_id('ueditor_1'))  # 切换至商品如何购买页面
dr.find_element_by_xpath('//body').clear()  # 清空商品如何购买页面
dr.find_element_by_xpath('//body').send_keys('2222222222')

dr.find_element_by_xpath('//body').send_keys(Keys.ENTER)  # 模拟键盘操作
dr.find_element_by_xpath('//body').send_keys('3333333333')

dr.find_element_by_xpath('//body').send_keys(Keys.CONTROL, 'A')  # 全选
dr.find_element_by_xpath('//body').send_keys(Keys.CONTROL, 'X')  # 剪切
dr.find_element_by_xpath('//body').send_keys(Keys.CONTROL, 'V')  # 粘贴

# dr.quit()
