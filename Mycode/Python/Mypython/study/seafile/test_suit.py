import datetime
import os
import time
import unittest

'''
python -m pip install --upgrade pip 19.0.1
appium-Python-Client 0.52
file 0.1.0
HTMLTestRunner-Python3  0.8.0
1.如果你用的是python3.4的版本，需要修改如下文件的内容：
python工程目录下的/lib/site-packages/HTMLTestRunner/HTMLTestRunner.py
原来：
#self.stream.write(output.encode('utf8'))
self.stream.write(output)

修改为：
self.stream.write(output.encode('utf8'))
#self.stream.write(output)



'''
import file as file

from seafile.seafiletest import MyTests
from unittest import TestSuite, TextTestRunner
from HTMLTestRunner import HTMLTestRunner

# 利用unittest中的TestSuite模块构造测试集
suite = unittest.TestSuite()
# 测试脚本用例集文件所在的路径，你需要修改到正确的路径下否则无法找到执行的脚本文件
# 如下路径要修改为你存放自动化代码的根目录，比如我之类就是myuser目录
case_dir = 'C:\\Users\\admin\\Desktop\\Git\\Mycode\\Python\\Mypython\\study\\seafile'
logs_dir = 'C:\\Users\\admin\\Desktop\\Git\\Mycode\\Python\\Mypython\\study\\seafile\\logs'


def all_case():
    # 如果要写成测试脚本必须要求测试脚本文件是以test.py结尾的，否则不会加载执行这个测试脚本
    runner = unittest.defaultTestLoader.discover(case_dir, pattern='*test.py', top_level_dir=None)
    # 利用for循环语句，循环加载所有的用例脚本，然后逐个执行并打印结果。
    for case in runner:
        suite.addTest(case)
    print(suite)
    return runner


if __name__ == "__main__":
    now_time = time.strftime('%Y_%m_%d %H_%M_%S', time.localtime())
    # 指定生成最终的html报告文件的路径以及文件的名字，你可以修改到你想要的路径，注意格式就行
    report_path = (logs_dir + "\\" + now_time + ".html")
    today = datetime.date.today()
    with open(report_path, 'wb') as f:
        runner = HTMLTestRunner.HTMLTestRunner(stream=f, title="测试报告", description="LLEI执行的测试用例", verbosity=2)
        runner.run(all_case())
