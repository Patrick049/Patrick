'''
这是自动化脚本的Dbshop业务模块
1.登录Dbshop       DBdenglu(dr,username, passwd)
2.修改密码         DBchangePasswd(dr,username,passwd,newpasswd)
3.注册             DBzhuce(dr,users)
4.登录DBshop后台     DBhouLogin(dr)
5.进入DBshop后台的三级目录      DBshopEnterMenu3(dr, menu1, menu2, menu3)
6.# 进入DBshop后台的er级目录    DBshopEnterMenu2(dr, menu1, menu2)


'''


# 1.登录
def DBdenglu(dr, username, passwd='123456'):
    dr.find_element_by_link_text('登录').click()
    dr.find_element_by_xpath('//*[@id="user_name"]').send_keys(username)
    dr.find_element_by_xpath('//*[@id="user_password"]').send_keys(passwd)
    dr.find_element_by_xpath('//button[text()="会员登录"]').click()


# 2.修改密码
def DBchangePasswd(dr, username, passwd, newpasswd):
    dr.find_element_by_link_text(username).click()
    dr.find_element_by_xpath('//a[text()="密码修改"]').click()
    dr.find_element_by_id('old_user_password').send_keys(passwd)
    dr.find_element_by_id('user_password').send_keys(newpasswd)
    dr.find_element_by_id('user_password_con').send_keys(newpasswd)
    dr.find_element_by_xpath("//button[text()='保存修改']").click()


# 3.注册(多个账号注册)
def DBzhuces(dr, users, passwd='123456'):
    # dr.get('http://localhost/dbshop')
    # dr.maximize_window()
    # dr.implicitly_wait(10)
    for name in users:
        # name = 'guo'
        # passwd = '123456'
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


# 注册(单个账号)
def DBzhuce(dr, username, passwd='123456'):
    import time
    dr.find_element_by_link_text('注册').click()

    ob = dr.find_elements_by_xpath('//input')
    ob[2].send_keys(username)
    ob[3].send_keys(passwd)
    ob[4].send_keys(passwd)
    email = username + '@qq.com'
    ob[5].send_keys(email)
    ob[6].click()

    time.sleep(3)
    dr.find_element_by_xpath('//button[@class="btn btn-primary"]').click()
    # time.sleep(2)
    dr.find_element_by_link_text('退出').click()


# 4.登录DBshop后台
def DBhouLogin(dr):
    dr.find_element_by_id('user_name').send_keys('admin')
    dr.find_element_by_id('user_passwd').send_keys('123456')
    dr.find_element_by_xpath('//button[text()="后台登录"]').click()


# 5.进入DBshop后台的三级目录
def DBshopEnterMenu3(dr, menu1, menu2, menu3):
    from selenium.webdriver.common.action_chains import ActionChains
    dr.find_element_by_link_text(menu1).click()
    mose = ActionChains(dr)  # 实例化对象，用于模拟鼠标

    obj = dr.find_element_by_link_text(menu2)  # 找到要移动的元素，存储在变量obj中
    mose.move_to_element(obj).perform()  # 鼠标移动到元素obj上，perform是立即执行

    dr.find_element_by_link_text(menu3).click()


# 6.进入DBshop后台的二级目录
def DBshopEnterMenu2(dr, menu1, menu2):
    dr.find_element_by_link_text(menu1).click()
    dr.find_element_by_link_text(menu2).click()


# 7.首页搜索商品并添加购物车
def search(dr,string):
    dr.find_element_by_class_name('search-text').send_keys(string)
    dr.find_element_by_xpath('//input[@type="submit"]').click()
    import time
    from DBshop.public.action import scrollWindow
    from DBshop.public.action import moveToElement
    time.sleep(3)
    scrollWindow(dr, 0, 614)  # 滚动屏幕
    time.sleep(2)
    moveToElement(dr, dr.find_element_by_xpath('//img[@alt]'))  # 模拟鼠标移动至
    time.sleep(2)
    dr.find_element_by_xpath('//a[text()="购物车"]').click()
    time.sleep(2)