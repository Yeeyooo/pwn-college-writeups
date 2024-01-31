import requests
p = {'a':'b648ca54ec5046b9da4bf99b9e09490a', 'b':'cf73f9fd cc1fb568&cc7ff73e#b1ff2e50'}
r = requests.get('http://127.0.0.1', params=p)
print(r.text)