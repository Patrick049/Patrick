'''
这是自动化脚本的操作模块
1.打开网页         dr = openWeb(url)
2.切换页面         qhym(dr,n)
3.截图             jieping(dr,pwd)
4.移动鼠标         moveToElement(dr,element)
5.滚动窗口         scrollWindow(dr, x, y)

'''


# 1.打开网页
def openWeb(url):
    from selenium import webdriver
    dr = webdriver.Chrome()
    # dr = webdriver.Edge('C:\Program Files (x86)\Microsoft\Edge\Application\msedgedriver.exe')
    dr.get(url)
    dr.maximize_window()
    dr.implicitly_wait(10)
    return dr


# 2.切换页面
def qhym(dr, n):
    import time
    time.sleep(2)
    dr.switch_to_window(dr.window_handles[n - 1])


# 3.截图
def jieping(dr, pwd):
    dr.get_screenshot_as_file(pwd)


# 4.移动鼠标
def moveToElement(dr, element):
    from selenium.webdriver.common.action_chains import ActionChains
    mose = ActionChains(dr)
    mose.move_to_element(element).perform()


# 5.滚动窗口
def scrollWindow(dr, x, y):
    dr.execute_script('window.scrollTo({},{})'.format(x, y))


# 6.屏幕截图
def getPhoto(dr):
    import time
    sysTime=time.strftime("%Y%m%d%H%M%S",time.localtime())
    dr.get_screenshot_as_file(r"..\testReport\screenshot\%s.png"%(sysTime))
