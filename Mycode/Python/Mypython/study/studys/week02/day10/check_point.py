'''
检查点|断言|预期结果：
首先要找到可以证明脚本执行成功或者失败的元素
断言方式
1：.is_displayed()    判断元素是否存在
2.设置一个预期结果，实际结果与预期结果作对比

'''

from selenium import webdriver
from def_dbshop import *

dr.maximize_window()

dr.get('http://localhost/dbshop')
# dr.find_element_by_link_text('登录').click()
# dr.find_element_by_id('user_name').send_keys('guo')
# dr.find_element_by_name('user_password').send_keys('1234567')
# dr.find_element_by_xpath('//button').click()

# dr.find_element_by_link_text('退出').is_displayed()

# try:
#     dr.find_element_by_link_text('退出').is_displayed()
#     print('登录成功')
# except:
#     print('登录失败')
#
# dr.quit()

# yvqi = 'guo'
# shiji = dr.find_element_by_xpath().text
#
# if yvqi == shiji:
#     print('登录成功')
# else:
#     print('登录失败')
#
# dr.quit()







