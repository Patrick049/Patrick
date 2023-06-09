'''
操作如果有新窗口打开，脚本默认在原窗口操作
每一个窗口都有他的id(窗口句柄)，可以使用dr.window_hanles获取窗口句柄
根据窗口句柄，可以使用dr.switch_to.window(句柄)切换到指定的窗口

'''

from selenium import webdriver

dr = webdriver.Chrome()
dr.get('http://localhost/dbshop')
dr.maximize_window()
dr.implicitly_wait(10)

dr.find_element_by_link_text('如何购买').click()

dr.switch_to_window(dr.window_handles[1])
dr.find_element_by_xpath('//input').send_keys('小米')
dr.find_element_by_xpath('//input[@class="search-btn iconfont"]').click()
