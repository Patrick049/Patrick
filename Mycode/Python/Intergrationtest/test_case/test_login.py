import requests


class TestLogin(object):
    # 测试前的一个前置加载方法（前置脚本）
    def setup_class(self):
        # print('___登录的接口测试用例开始执行___')
        pass

    # 执行测试的方法，测试方法必须以test开头
    def test_login1_success(self):
        '''
        接口测试三部曲：
        1.明确接口的请求方式和请求URL地址
        2.接口的请求头和请求体
        3.发送请求
        '''
        method = 'POST'
        url = 'http://42.192.62.88:80/api2/auth-token/'
        header = {
            'content-type': 'application/x-www-form-urlencoded'
        }
        body = 'username=pai@qq.com&password=123456'
        '''
        requests发送请求的方法：
        1.requests.get()   发送GET请求
        2.requests.post()   发送POST请求
        3.requests.request()  可以指定任何一种请求方式
        阻断式方法
        '''
        response = requests.request(method, url, headers=header, data=body)
        print('*****{}*****'.format(response.text))
        '''
        python中断言：
         assert 表达式
        表达式计算结果是TRUE，通过；否则失败        
        assert a == b
        assert a in b
        '''
        assert response.status_code == 200
        assert 'token' in response.text

    def test_login2_fail(self):
        method = 'POST'
        url = 'http://42.192.62.88:80/api2/auth-token/'
        header = {
            'content-type': 'application/x-www-form-urlencoded'
        }
        body = 'username=pai@qq.com&password=111111'
        response = requests.request(method, url, headers=header, data=body)
        print('**********')
        # print('***{}***'.format(response.text))
        # print(response.text)
        assert response.status_code == 400
        assert 'Unable to login with provided credentials' in response.text

    # 后置脚本
    def teardown_class(self):
        pass
