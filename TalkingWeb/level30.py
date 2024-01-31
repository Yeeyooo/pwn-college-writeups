import requests
payload = {"a":"2a558a76836364de5997ec4a08c29e43", "b":{"c":"bf463db3","d":["a36f0a59", "a8110633 d1f13150&be7fc8c4#1cc6287c"]}}
r = requests.post('http://127.0.0.1:80',json=payload)
print(r.text)