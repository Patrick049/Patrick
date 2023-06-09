'''
切换页面


'''

from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *

dr = openWeb(urlhou)
DBhouLogin(dr)

dr.find_element_by_link_text('系统管理').click()
dr.find_element_by_link_text('系统设置').click()
dr.find_element_by_link_text('内容信息').click()

dr.switch_to_frame(dr.find_element_by_id('ueditor_0'))
dr.find_element_by_xpath('//body[@class="view"]').clear()


dr.find_element_by_xpath('//body[@class="view"]').send_keys('1356464846')




