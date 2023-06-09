'''
页面操作：
打开
后退
前进
刷新
关闭
设置窗口大小
最大化
最小化
截图


'''

from selenium import webdriver
from def_dbshop import *

# 打开
dr.get('http://localhost/dbshop')
# dr.get('http://localhost/dbshop/admin')
# 后退
# dr.back()
# # 前进
# dr.forward()
# # 刷新
# # dr.refresh()
# # 关闭
# # dr.close()
# # 设置窗口大小
# dr.set_window_size(1366 // 2, 768 // 2)
# # 最小化
# dr.minimize_window()
# 最大化
dr.maximize_window()
# 截图
dr.get_screenshot_as_file(r'C:\Users\admin\Desktop\1.png')
