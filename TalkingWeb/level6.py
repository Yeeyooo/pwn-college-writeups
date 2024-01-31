import requests
headers = {'Host':'44041f71206ee4b92db12350439322db'}
r = requests.get('http://127.0.0.1', headers=headers)
print(r.text)