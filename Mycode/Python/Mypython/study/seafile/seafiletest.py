import time
import unittest

from appium import webdriver

'''
1.测试文件必须先import unittest
2.测试类必须继承unittest.TestCase
3.测试方法必须以“test_”开头
4.测试类必须要有unittest.main()方法
'''

'''
assertEqual(a,b,msg="None")  判断a,b是否相等，不相等时，抛出msg；
assertTure(x,msg="None") 判断x表达式是否为真，表达式为假时，抛出msg；
assertIn(a,b,msg="None") 判断a是否在b里面，a不在b里面时，抛出msg；
assertIsNone(x,msg="None") 判断x是否为空，x不为空时，抛出msg。
x = self.driver.get_window_size()["width"]
y = self.driver.get_window_size()["height"]
# 从下往上滑动
self.driver.swipe(x*0.5, y*0.6, x*0.5, y*0.2, duration = 2000)
'''


class MyTests(unittest.TestCase):
    # 测试开始前执行的方法
    @classmethod
    def setUpClass(self):
        desired_caps = {'platformName': 'Android',  # 平台名称
                        'platformVersion': '7.1.2',  # 系统版本号
                        'deviceName': 'localhost:5555',  # 设备名称。如果是真机，adb devices里查看
                        'appPackage': 'com.seafile.seadroid2',  # apk的包名
                        'appActivity': '.ui.activity.BrowserActivity',  # activity 名称
                        'sessionOverride': 'true',  # 每次启动时覆盖session，否则第二次后运行会报错不能新建session
                        'unicodeKeyboard': 'true',  # 设置为标准键盘，这样不会因为厂商键盘导致输入编码格式不兼容
                        'resetKeyboard': 'false',  # 设置不重启键盘，免得又使用默认的厂商键盘了
                        'noSign': 'true',  # nosign和noreset是配合使用，设置app不要弹出首次启动的欢迎页面，确保可以直接打开首页
                        'noReset': 'true',  # 同上
                        }
        self.driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_caps)  # 连接Appium
        self.driver.implicitly_wait(10)  # 超时等待10秒，避免超时无限等待挂死的情况

    def test_1login(self):
        # 第一部分是这个测试脚本的操作代码
        print('test_login')
        el1 = self.driver.find_element_by_id("com.seafile.seadroid2:id/account_footer_btn")
        el1.click()
        el2 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[3]")
        el2.click()
        el3 = self.driver.find_element_by_id("com.seafile.seadroid2:id/server_url")
        el3.send_keys("42.192.62.88:80")
        el4 = self.driver.find_element_by_id("com.seafile.seadroid2:id/email_hint")
        el4.send_keys("pai@qq.com")
        el4.click()
        el5 = self.driver.find_element_by_id("com.seafile.seadroid2:id/password")
        el5.send_keys("123456")
        el6 = self.driver.find_element_by_id("com.seafile.seadroid2:id/login_button")
        el6.click()
        # 断言
        el7 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.TextView")
        self.assertIn('资料库', el7.get_attribute('text'), msg='None')

    def test_2touchfile(self):
        el1 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.RelativeLayout")
        el1.click()
        el2 = self.driver.find_element_by_accessibility_id("More")
        el2.click()
        el3 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.TextView")
        el3.click()
        el4 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.support.v7.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[1]")
        el4.click()
        el5 = self.driver.find_element_by_id("com.seafile.seadroid2:id/new_file_name")
        el5.send_keys("111")
        el6 = self.driver.find_element_by_id("android:id/button1")
        el6.click()
        # 断言
        el7 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.TextView")
        self.assertEqual('111', el7.get_attribute('text'), msg='None')

    def test_3rmfile(self):
        # el0 = self.driver.find_element_by_xpath(
        #     "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ListView/android.widget.LinearLayout[2]/android.widget.RelativeLayout")
        # el0.click()

        el1 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.support.v4.view.ViewPager/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ListView/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.widget.ImageView")
        el1.click()
        el2 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[5]")
        el2.click()
        el3 = self.driver.find_element_by_id("android:id/button1")
        el3.click()

        # 断言
        a = False
        try:
            el4 = self.driver.find_element_by_id('com.seafile.seadroid2:id/list_item_title')
            if el4.get_attribute('text') == '111':
                self.assertEqual(a, True, msg='None')
            else:
                a = True
                self.assertEqual(a, True, msg='None')
        except:
            a = True
            self.assertEqual(a, True, msg='None')

    def test_4banben(self):
        el1 = self.driver.find_element_by_accessibility_id("More")
        el1.click()
        el2 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[5]")
        el2.click()
        time.sleep(3)
        x = self.driver.get_window_size()["width"]
        y = self.driver.get_window_size()["height"]
        # 从下往上滑动
        self.driver.swipe(x * 0.5, y * 0.8, x * 0.5, y * 0.2, duration=2000)
        time.sleep(3)
        el3 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[11]/android.widget.RelativeLayout/android.widget.TextView")
        el3.click()
        # 断言
        el4 = self.driver.find_element_by_id("android:id/message")
        self.assertIn('2.2.8', el4.get_attribute('text'), msg='None')

    def test_999999logout(self):
        print('test_logout')
        # el1 = self.driver.find_element_by_accessibility_id("More")
        # el1.click()
        # el2 = self.driver.find_element_by_xpath(
        #     "/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.RelativeLayout/android.widget.TextView")
        # el2.click()
        time.sleep(3)
        self.driver.back()
        time.sleep(3)
        x = self.driver.get_window_size()["width"]
        y = self.driver.get_window_size()["height"]
        self.driver.swipe(x * 0.5, y * 0.2, x * 0.5, y * 0.8, duration=2000)
        el3 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[5]/android.widget.RelativeLayout/android.widget.TextView[1]")
        el3.click()
        el4 = self.driver.find_element_by_id("android:id/button1")
        el4.click()
        # 断言
        el5 = self.driver.find_element_by_id("com.seafile.seadroid2:id/welcome_view")
        self.assertIn('欢迎使用Seafile', el5.get_attribute('text'), msg='None')

    # 测试结束后执行的方法
    @classmethod
    def tearDownClass(self):
        self.driver.quit()

# if __name__ == "__main__":
# # 执行用例的方法:unittest.main()
# # 搜索该模块下所有以test开头的测试用例方法，并按照ASCLL码排序执行用例。
#    unittest.main()
