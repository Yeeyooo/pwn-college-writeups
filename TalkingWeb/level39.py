import requests
url = 'http://127.0.0.1:80'
r = requests.get(url)
for i in range(3):
    r = requests.get(url,cookies=r.cookies)
print(r.text)