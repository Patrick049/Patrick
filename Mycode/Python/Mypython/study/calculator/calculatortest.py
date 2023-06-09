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
                        'appPackage': 'com.ibox.calculators',  # apk的包名
                        'appActivity': '.SplashActivity',  # activity 名称
                        'sessionOverride': 'true',  # 每次启动时覆盖session，否则第二次后运行会报错不能新建session
                        'unicodeKeyboard': 'true',  # 设置为标准键盘，这样不会因为厂商键盘导致输入编码格式不兼容
                        'resetKeyboard': 'false',  # 设置不重启键盘，免得又使用默认的厂商键盘了
                        'noSign': 'true',  # nosign和noreset是配合使用，设置app不要弹出首次启动的欢迎页面，确保可以直接打开首页
                        'noReset': 'true',  # 同上
                        }
        self.driver = webdriver.Remote("http://127.0.0.1:4723/wd/hub", desired_caps)  # 连接Appium
        self.driver.implicitly_wait(10)  # 超时等待10秒，避免超时无限等待挂死的情况

    def test_1jiafa(self):
        el1 = self.driver.find_element_by_id("com.ibox.calculators:id/digit1")
        el1.click()
        el2 = self.driver.find_element_by_id("com.ibox.calculators:id/plus")
        el2.click()
        el3 = self.driver.find_element_by_id("com.ibox.calculators:id/digit1")
        el3.click()
        el4 = self.driver.find_element_by_id("com.ibox.calculators:id/equal")
        el4.click()
        #断言
        el5 = self.driver.find_element_by_xpath(
            "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]/android.widget.LinearLayout[1]/android.widget.RelativeLayout/android.widget.TextView[2]")
        self.assertEqual('2', el5.get_attribute('text'), msg='None')



    # 测试结束后执行的方法
    @classmethod
    def tearDownClass(self):
        self.driver.quit()

# if __name__ == "__main__":
# # 执行用例的方法:unittest.main()
# # 搜索该模块下所有以test开头的测试用例方法，并按照ASCLL码排序执行用例。
#    unittest.main()
