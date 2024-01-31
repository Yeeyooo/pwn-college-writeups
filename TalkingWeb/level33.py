import requests
r = requests.get('http://127.0.0.1:80', allow_redirects=True)
print(r.text)