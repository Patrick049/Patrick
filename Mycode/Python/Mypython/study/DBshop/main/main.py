import os
import sys
# curPath=os.path.abspath(os.path.dirname(__file__))
# print(curPath)
# rootPath=os.path.split(curPath)[0]
# print(rootPath)
#
# sys.path.append(rootPath)
sys.path.append(r'C:\Users\admin\Desktop\Git\Mycode\Python\Mypython\study')

from DBshop.public.tools import writeLog

try:
    from DBshop.DBshopTestCase import DBshop001_购物流程1
except:
    writeLog('DBshop001_购物流程1 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop002_购物流程2
except:
    writeLog('DBshop002_购物流程2 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop003_购物流程3
except:
    writeLog('DBshop003_购物流程3 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop004_购物流程取消
except:
    writeLog('DBshop004_购物流程取消 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop005_订单管理查询
except:
    writeLog('DBshop005_订单管理查询 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop006_订单管理删除订单
except:
    writeLog('DBshop006_订单管理删除订单 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop007_销售管理发货单
except:
    writeLog('DBshop007_销售管理发货单 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop008_销售管理支付记录
except:
    writeLog('DBshop008_销售管理支付记录 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop011_添加商品
except:
    writeLog('DBshop011_添加商品 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop012_商品管理管理商品搜索商品
except:
    writeLog('DBshop012_商品管理管理商品搜索商品 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop013_分类编辑
except:
    writeLog('DBshop013_分类编辑 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop014_删除分类
except:
    writeLog('DBshop014_删除分类 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop015_添加侧边设置
except:
    writeLog('DBshop015_添加侧边设置 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop016_删除侧边设置
except:
    writeLog('DBshop016_删除侧边设置 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop017_添加属性组
except:
    writeLog('DBshop017_添加属性组 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop018_删除属性组
except:
    writeLog('DBshop018_删除属性组 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop019_添加属性
except:
    writeLog('DBshop019_添加属性 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop020_删除属性
except:
    writeLog('DBshop020_删除属性 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop021_添加品牌
except:
    writeLog('DBshop021_添加品牌 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop022_删除品牌
except:
    writeLog('DBshop022_删除品牌 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop023_编辑商品管理商品评价
except:
    writeLog('DBshop023_编辑商品管理商品评价 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop024_删除商品管理商品评价
except:
    writeLog('DBshop024_删除商品管理商品评价 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop025_商品咨询回复
except:
    writeLog('DBshop025_商品咨询回复 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop026_商品咨询删除
except:
    writeLog('DBshop026_商品咨询删除 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop027_新增标签组
except:
    writeLog('DBshop027_新增标签组 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop028_删除标签组
except:
    writeLog('DBshop028_删除标签组 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop029_新增普通商品标签
except:
    writeLog('DBshop029_新增普通商品标签 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop030_编辑普通商品标签
except:
    writeLog('DBshop030_编辑普通商品标签 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop031_编辑特定商品标签
except:
    writeLog('DBshop031_编辑特定商品标签 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop032_删除特定标签
except:
    writeLog('DBshop032_删除特定标签 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop033_点击更新商品索引
except:
    writeLog('DBshop033_点击更新商品索引 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop034_余额调整
except:
    writeLog('DBshop034_余额调整 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop035_积分调整
except:
    writeLog('DBshop035_积分调整 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop036_添加客户扩展信息
except:
    writeLog('DBshop036_添加客户扩展信息 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop037_删除客户扩展信息
except:
    writeLog('DBshop037_删除客户扩展信息 执行出错')

try:
    from DBshop.DBshopTestCase import DBshop038_添加客户组
except:
    writeLog('DBshop038_添加客户组 执行出错')