# matn=input("Matn kiriting:  ")
# natija=[i for i in matn if matn.count(i)==1]
# if natija:
#     print(natija[-1])
# else:
#     print("_")


matn=input(">>>")
new=[float(i) for i in matn.replace(" ",",").split(",") if not i.isalpha() and i.count(".")==1]
if new:
    umumiy=sum(new)
    maximum=max(new)
    minimum=min(new)
    print(f"Eng yuqori qiymat {maximum} ,eng kichik qiymat {minimum}, va ortacha qiymat {umumiy/len(new):.2f}")
else:
    print("max:0 , min:0 , average;0")