import requests
url = 'http://127.0.0.1:80'
r = requests.get(url)   # first request
r = requests.get(url, cookies=r.cookies)  # second request
print(r.text)