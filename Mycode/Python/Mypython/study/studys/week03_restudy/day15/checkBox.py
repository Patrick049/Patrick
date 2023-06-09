'''
多选选择框

打开dbshop后台
登录
点击“商品管理”
点击“管理商品”
选中第1个商品
选中第3个商品
选中最后1个商品

全部取消选中
多选框的checked属性可以判断是否有勾选，True是勾选，False是未勾选
obj.get_property('checked')

'''

from DBshop.public.business import *
from DBshop.public.action import *
from DBshop.public.testData import *
import time

dr = openWeb(urlhou)
DBhouLogin(dr)

DBshopEnterMenu2(dr, '商品管理', '管理商品')
objs = dr.find_elements_by_name('goods_id[]')

time.sleep(2)
objs[0].click()
time.sleep(2)
objs[2].click()
time.sleep(2)
objs[-1].click()
time.sleep(2)

# 取消全选
for obj in objs:
    if obj.get_property('checked'):  # 检查多选框的checked值
        obj.click()

time.sleep(2)
# 全部勾选
for obj in objs:
    if obj.get_property('checked') == False:
        obj.click()

