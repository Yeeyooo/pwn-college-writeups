import requests
r = requests.post('http://127.0.0.1:80', data={'a':'8c82a62d426fe42e1250c9bd041b7c4d'})
print(r.text)