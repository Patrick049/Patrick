'''
这是Python学习的第19天
重新学习Python基础

1.字符串处理：
len  获取字符串长度
find，index，rfind，rindex  查找内容，返回查找到的索引
count  返回出现的次数
replace(oldstr,newstr,count)  替换内容
split,rsplit,splitlines,partition,rpartition  切割字符串
startswith,endswith,isalpha,isdigit,isalnum,isspace  判断
capitalize，title，upper，lower  修改大小写
ljust，rjust，center，lstrip，rstrip，strip  空格处理
join  字符串拼接

字符集
ord（）  返回字符对应的编码
chr（）  返回编码对应的字符


'''

# s = 'https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&tn=baidu&wd=pycharm%E4%BF%AE%E6%94%B9%E6%B3%A8%E9%87%8A%E5%AD%97%E4%BD%93%E6%96%9C%E4%BD%93&oq=pycharm%25E4%25BF%25AE%25E6%2594%25B9%25E6%25B3%25A8%25E9%2587%258A%25E5%25AD%2597%25E4%25BD%2593&rsv_pq=a1a37fd90004ffee&rsv_t=2383ZpBwKpfj0BpD6MSkG9xWJwBMkRAPxusL95bDD4dptwYot5ScLt4FT08&rqlang=cn&rsv_enter=1&rsv_dl=tb&rsv_sug3=7&rsv_sug1=7&rsv_sug7=100&rsv_sug2=0&rsv_btype=t&inputT=2415&rsv_sug4=5870'
# print(s.find('_'))
# print(s.count('_'))
# print(s.index('_'))
# print(s.find('_'))
# print(s.rfind('_'))

# sum = 0
# for i in range(s.count('_')):
#     n = s.find('_')
#     if i == 0:
#         sum += n
#         print(sum)
#     else:
#         sum += n + 1
#         print(sum)
#     s = s[n + 1:]

import random

# s = input('输入文件名')
# if s.endswith('jpg') or s.endswith('png') or s.endswith('gif'):
#     if len(s[:-4]) < 6:
#         s = str(random.randint(100000, 999999)) + (s[-4:])
#     print('%s上传成功' % s)
# else:
#     print('{}文件名不符合规则'.format(s))


s = 'random()是不能直接访问的，需要导入random模块，然后通过random静态对象调用该方法。'
# a=[]
# for i in s:
#     a.append(i)
# print(len(a))
# print(a)
# b=set(a)
# print(len(b))
# print(b)

l = ['不能','通过']
for i in l:
    s = s.replace(i, '**')
print(s)