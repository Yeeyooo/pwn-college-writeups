import requests
r = requests.get('http://127.0.0.1:80',data={'a':'f2cfcacd7409b1890f6ac32d46f6dbb8','b':'175f32b4 8f1488f7&8e99af04#b994c8f4'})
print(r.text)