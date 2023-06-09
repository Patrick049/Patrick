'''
修改密码自动化脚本
封装函数
1.生成随机密码
2.打开网页
3.打开文件
4.登录
5.修改密码
6.向文件中写内容

'''

from selenium import webdriver

#生成随机密码
def randomPasswd(n):
    import random
    import string
    a = ''.join(random.sample(string.ascii_letters + string.digits + '!@#$%^&*()', n))
    return a

# 打开网页
def openWeb(url):
    from selenium import webdriver
    dr = webdriver.Chrome()
    dr.get(url)
    dr.maximize_window()
    dr.implicitly_wait(10)
    return dr

# 打开文件
def openFile(url):
    f = open(url, 'r', encoding='UTF-8')
    a = f.read()
    f.close()
    return a

# 登录
def denglu(username, pssswd):
    dr.find_element_by_link_text('登录').click()
    dr.find_element_by_xpath('//*[@id="user_name"]').send_keys(username)
    dr.find_element_by_xpath('//*[@id="user_password"]').send_keys(passwd)
    dr.find_element_by_xpath('//button[text()="会员登录"]').click()

# 修改密码
def changePasswd(username,passwd,newpasswd):
    dr.find_element_by_link_text(username).click()
    dr.find_element_by_xpath('//a[text()="密码修改"]').click()
    dr.find_element_by_id('old_user_password').send_keys(passwd)
    dr.find_element_by_id('user_password').send_keys(newpasswd)
    dr.find_element_by_id('user_password_con').send_keys(newpasswd)
    dr.find_element_by_xpath("//button[text()='保存修改']").click()

# 向文件中写内容
def writeFile(url,string):
    f = open(url, 'w', encoding='UTF-8')
    f.write(string)
    f.close()

username = 'a'
passwd = openFile('c:\pwd.txt')                      # 打开文件读取密码
newpasswd = randomPasswd(6)                          # 生成随机密码
dr = openWeb('http://localhost/dbshop')              # 打开网页
denglu(username, passwd)                             # 登录
changePasswd(username,passwd,newpasswd)              # 修改密码

excet = '会员密码修改成功'
actual = dr.find_element_by_xpath('//div[@class="alert alert-success"]').text[:8]
if excet == actual:
    print('密码修改成功')
else:
    print('密码修改失败')

writeFile('c:\pwd.txt',newpasswd)                              #将新密码写入pwd.txt文件中
dr.quit()




