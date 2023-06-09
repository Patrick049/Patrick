'''

1.点击“删除”按钮，确定删除，删除成功。
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
from DBshop.public.tools import *
from selenium.webdriver.common.keys import Keys
import random
import string
import time
from selenium.webdriver.support.select import Select

testCase = 'DBshop039_删除客户组'

name = '派大星'
dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '客户管理', '管理客户组')





