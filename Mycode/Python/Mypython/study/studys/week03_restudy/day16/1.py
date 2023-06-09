from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from selenium.webdriver.support.select import Select

name='xuguo001'

dr=openWeb(url)
dr.implicitly_wait(10)
dr.maximize_window()
DBdenglu(dr,name,"123456")
dr.find_element_by_xpath("//input").send_keys("小米")
dr.find_elements_by_xpath('//input')[1].click()
dr.execute_script("window.scrollTo(0,618)")
obj=dr.find_element_by_xpath('(//div[@class="item-thumb"])[1]')
moveToElement(dr,obj)
time.sleep(1)
dr.find_element_by_xpath('(//div[@class="item-actions item_goods_8"]/a)[1]').click()
dr.find_element_by_id('J_miniCart').click()
dr.find_element_by_link_text("去结算").click()
dr.find_element_by_xpath('//button[@class="btn btn-small btn-primary"]').click()
dr.find_element_by_id("true_name").send_keys(name)
time.sleep(3)
s=Select(dr.find_element_by_id("show_address_area"))
s.select_by_visible_text("湖北省")
time.sleep(10)

dr.find_element_by_xpath('//select[@class="db_show_area valid"]').click()
Q=Select(dr.find_element_by_xpath('//select[@class="db_show_area valid"]'))
Q.select_by_visible_text("武汉市")
time.sleep(10)
dr.switch_to_active_element()
dr.find_element_by_xpath('//select[@class="db_show_area"]').click()
T=Select(dr.find_element_by_xpath('//select[@class="db_show_area"]'))
T.select_by_visible_text("江汉区")
dr.find_element_by_id('address').send_keys("汉口国际F座3楼博为峰")
dr.find_element_by_id("zip_code").send_keys("123456")
dr.find_element_by_id("mod_phone").send_keys("18688886666")
dr.find_element_by_xpath('//button[@class="btn btn-primary"]').click()
time.sleep(5)
