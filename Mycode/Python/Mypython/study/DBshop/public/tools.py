'''
这是自动化脚本的工具模块
1.生成指定位数随机字符串    randomPasswd(n)
                         randomStr(n)
2.打开文件              openFile(url)
3.写文件               writeFile(url,string)
4.写日志               writeLog(string)
5.正则表达提取文本      reGetString(String,leftBinary="^",rightBinary="$")

'''


# 1.生成指定位数随机字符串
def randomPasswd(n):
    import random
    import string
    a = ''.join(random.sample(string.ascii_letters + string.digits + '!@#$%^&*()', n))
    return a


# 生成指定位数随机字符串(不含特殊符号)
def randomStr(n):
    import random
    import string
    a = ''.join(random.sample(string.ascii_letters + string.digits, n))
    return a


# 2.打开文件
def openFile(url):
    f = open(url, 'r', encoding='UTF-8')
    a = f.read()
    f.close()
    return a


# 3.向文件中写内容
def writeFile(url, string):
    f = open(url, 'w', encoding='UTF-8')
    f.write(string)
    f.close()


# 4.写日志
def writeLog(string):
    # try:
    f = open(r'c:\DBshoplog.txt', 'a+', encoding='UTF-8')
    # f = open(r'..\testReport\log.txt', 'a+', encoding='UTF-8')
    import time
    systime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime())

    f.write('[%s]\t%s\n' % (systime, string))
    f.close()


# except:
#     f = open(r'.\DBshop\testReport\log.txt', 'a+', encoding='UTF-8')
#     import time
#
#     systime = time.strftime('%Y-%m-%d %H:%M:%S', time.localtime())
#
#     f.write('[%s]\t%s\n' % (systime, string))
#     f.close()


# 5.根据左右边界提取文本，返回匹配到的文本
def reGetString(String, leftBinary="^", rightBinary="$"):
    import re
    result = re.search("%s(.*?)%s" % (leftBinary, rightBinary), String)
    return result.group(1)

