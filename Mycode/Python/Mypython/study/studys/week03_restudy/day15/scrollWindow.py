'''
滚动窗口
dr.execute_script('window.scrollTo(0,614)')

'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *

dr = openWeb(url)
DBdenglu(dr, 101, passwd)

dr.find_elements_by_xpath('//input')[0].send_keys('小米')
dr.find_elements_by_xpath('//input')[1].click()


scrollWindow(dr,0,614)  # 让窗口滚动到

element = dr.find_element_by_partial_link_text("小米Mix3")
moveToElement(dr, element)

dr.find_element_by_xpath('//div[@class="item-actions item_goods_8"]/a[1]').click()
