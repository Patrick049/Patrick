'''
这是selenium的第三天学习
xpath 表达式
1.绝对路径
2.表达式     '//*[属性="值"]'
3.文本表达式    '//标签[text="文本内容"]'
4.数组表达式
5.相对路径
6.多属性
7.xpath兄弟元素

脚本添加等待时间：
1.time.sleep(n)       强制等待n秒
2.dr.implicitly_wait(10)     隐式等待，如果脚本可以正常进行就不等待，如果不可以正常运行最多等待n秒


将代码封装为函数
'''
import time
from selenium import webdriver


# dr = webdriver.Chrome()
# dr.get('http://localhost/dbshop')
# dr.maximize_window()

# # 1.xpath绝对路径
# dr.find_element_by_xpath('/html/body/div/div/div/div[2]/div/div[2]/form/div[1]/input[1]').send_keys("admin")
# # 2.xpath表达式
# # //*[@属性='值']
# dr.find_element_by_xpath('//*[@type="password"]').send_keys('123456')
# # 3.xpath文本表达式
# # //标签[text="文本内容"]
# dr.find_element_by_xpath('//button[text()="后台登录"]').click()
# # 4.xpath数组表达式
# # '(xpath)[n]'     n代表第几个，不是索引
# dr.find_element_by_xpath('(//*[@data-toggle="dropdown"])[4]').click()
# # dr.find_element_by_link_text('管理客户').click()
# # 5.xpath相对路径
# dr.find_element_by_xpath('//ul[@class="nav"]/li[4]/ul[1]/li[1]/a').click()
# # 6.xpath多属性
# # //标签[@条件 and @条件 or @条件]
# dr.find_element_by_xpath('//select[@id="user_state" and @name="user_state" and @class="span8"]').click()
# # 7.xpath兄弟元素
# dr.find_element_by_xpath('')


# dr = webdriver.Chrome()
# dr.get('http://localhost/dbshop')
# dr.maximize_window()
# dr.implicitly_wait(10)
# imgs=dr.find_elements_by_xpath('//img')
# for img in imgs:
#     print(img.get_property('src'))


# users = ['wuwan', 'liuwa', 'qiwa', 'yeye']

# for name in users:
#     # name = 'guo'
#     passwd = '123456'
#     email = name + '@qq.com'
#     dr.find_element_by_link_text('注册').click()
#
#     ob = dr.find_elements_by_xpath('//input')
#     ob[2].send_keys(name)
#     ob[3].send_keys(passwd)
#     ob[4].send_keys(passwd)
#     ob[5].send_keys(email)
#     ob[6].click()
#
#     dr.find_element_by_xpath('//button[@class="btn btn-primary"]').click()
#     # time.sleep(2)
#     dr.find_element_by_link_text('退出').click()


# Dbshop注册
def zhuce(users):
    dr = webdriver.Chrome()
    dr.get('http://localhost/dbshop')
    dr.maximize_window()
    dr.implicitly_wait(10)
    for name in users:
        # name = 'guo'
        passwd = name + '123'
        email = name + '@qq.com'
        dr.find_element_by_link_text('注册').click()

        ob = dr.find_elements_by_xpath('//input')
        ob[2].send_keys(name)
        ob[3].send_keys(passwd)
        ob[4].send_keys(passwd)
        ob[5].send_keys(email)
        ob[6].click()

        dr.find_element_by_xpath('//button[@class="btn btn-primary"]').click()
        # time.sleep(2)
        dr.find_element_by_link_text('退出').click()


users = ('paidaxing', 'haimianbb', 'zhangyvge')
zhuce(users)
