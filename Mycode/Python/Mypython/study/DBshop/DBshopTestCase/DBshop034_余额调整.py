'''

1.点击“余额调整”按钮。
2.添加客户cyy,金额增加"10000",备注内容“买手机用”
3.点击“提交充值”按钮。在前台查询cyy是否余额多10000.
'''
from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time
from DBshop.public.tools import *

testCase = 'DBshop034_余额调整'
money = 10000

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '客户管理', '管理客户')
n1 = dr.find_element_by_xpath('//td[text()="cyy"]/following-sibling::td[5]').text
print(n1)
dr.find_element_by_xpath('//td[text()="cyy"]/following-sibling::td[7]/a[2]').click()

dr.find_element_by_name('money_change_num').send_keys(money)
dr.find_element_by_xpath('//textarea').send_keys('买手机用')

dr.find_element_by_xpath('//button[text()="提交充值"]').click()
time.sleep(5)

dr.get(url)
DBdenglu(dr, 'cyy')
dr.find_element_by_link_text('用户中心').click()
dr.find_element_by_link_text('账户余额').click()
a = dr.find_element_by_xpath('//font[contains(.,"元")]').text
# print(a)
n2=float(reGetString(a,'￥',' '))
print(n2)

if float(n1) + money == float(n2):
    writeLog('%s 测试通过' % testCase)
else:
    writeLog('%s 测试未通过' % testCase)
    getPhoto(dr)

dr.quit()
