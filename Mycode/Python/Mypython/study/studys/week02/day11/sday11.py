'''
这是python的第11填学习
自动化脚本的编写

'''

# class.astudy自动化
from selenium import webdriver

dr = webdriver.Edge('C:\Program Files (x86)\Microsoft\Edge\Application\msedgedriver.exe')
dr.get('http://class.atstudy.com:8080/home/login')
dr.find_element_by_id('acc').send_keys('15613368932')
dr.find_element_by_id('password').send_keys('123456')
dr.find_element_by_xpath('//input[@type="button" and @value="登录"]').click()



