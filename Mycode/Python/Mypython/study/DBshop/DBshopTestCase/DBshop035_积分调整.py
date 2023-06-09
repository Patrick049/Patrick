'''

1.点击“积分调整”按钮。
2.被调整人“cyy”,消费积分和等级积分“10000”，备注内容“买手机送积分”。
3.点击“提交调整”按钮，显示积分都为10000.
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop035_积分调整'
money = 10000

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '客户管理', '管理客户')

dr.find_element_by_xpath('//td[text()="cyy"]/following-sibling::td[7]/a[3]').click()

dr.find_element_by_name('change_user_integral_num').send_keys(money)
dr.find_element_by_name('change_integral_type_2_num').send_keys(money)
dr.find_elements_by_xpath('//textarea')[1].send_keys('买手机送积分')

dr.find_element_by_xpath('//button[text()="提交调整"]').click()
time.sleep(5)
n1 = dr.find_element_by_xpath('//td[text()="cyy"]/following-sibling::td[6]').text

n2 = '10000 / 10000'

if n1 == n2:
    writeLog('%s 测试通过' % testCase)
else:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()
