import json


f=open("text.json")
data=json.load(f)
for i in data["branches"]:
    print(i["name"])
f.close()