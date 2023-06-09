import pytest
import time

if __name__ == '__main__':
    now_time = time.strftime('%Y_%m_%d %H_%M_%S', time.localtime())
    pytest.main(['-sv', r'D:\Desktop\Git\Mycode\Python\Intergrationtest\test_case', '--html=./reports/{}.html'.format(now_time)])

