import requests
parameters = {'a':'d5bb9daa54f9812ff031aaed5dc6b628'}
r = requests.get('http://127.0.0.1', params = parameters)
print(r.text)