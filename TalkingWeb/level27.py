import requests
import json
url = 'http://127.0.0.1:80'
payload = {'a':'80ff9282337501067a5c36403eeafe6c'}
headers = {'Content-Type':'application/json'}
r = requests.post(url, json=payload)
print(r.text)