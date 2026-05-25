import json
# num=[3,7,12,7,5,3,9,12,15,7]
# num=set(num)
# tpl=tuple(num)
# sum=0
# for i in tpl:
#     sum+=i
# print(f"{tpl} ning o'rtacha qiymati {sum/len(tpl)}")


# f=open("text.json","w")
# productc={"olma": 12000,
#           "banan": 18000,
#           "shaftoli": 15000,
#           "uzum": 20000
#           }
# json.dump(productc,f,indent=4)
# f.close()

# f=open("text.json")
# data=json.load(f)
# maxsu=input("nomini kiritin")
# son=int(input("MAxsulot sonini kiriting:"))
# for key,i in data.items():
#     if maxsu in data and maxsu==key:
#         natija={ "mahsult":maxsu,
#                 "mmiqdori": son,
#                 "narxi": i*son
#         }
#         print(natija)
#         break
# f=open("text.json","w")
# json.dump(natija,f)
# f.close()


matn=input(">>>")
natija=max(matn.split(),key=lambda x: len(x))
soz=" ".join(sorted(matn.split()))
f=open("text.json","w")
json.dump(soz,f)
print(f"eng uzun so'z {natija}")
f=open("text.json")
data=json.load(f)
count=0
for i in data.split():
    count+=1
print(f"fayldagi so'zlar soni {count} ta")