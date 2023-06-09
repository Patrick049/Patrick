import requests


class TestGetinfo(object):

    def setup_class(self):
        pass

    def test_getinfo_success(self):
        email = 'pai@qq.com'
        pwd = '123456'
        method = 'POST'
        url = 'http://42.192.62.88:80/api2/auth-token/'
        header = {
            'content-type': 'application/x-www-form-urlencoded'
        }
        body = 'username={}&password={}'.format(email, pwd)
        response = requests.request(method, url, headers=header, data=body)
        token = response.json()['token']

        method = 'GET'
        url = 'http://42.192.62.88:80/api2/account/info/'
        header = {
            'Authorization': 'Token %s' % token,
            'Accept': 'application/json; indent=4'
        }
        response = requests.request(method, url, headers=header, data=body)
        assert response.status_code == 200
        assert email in response.text
        print('**********')

    def teardown_class(self):
        pass
