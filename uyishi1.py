def majority_element(lst:list):
    dct = {}
    
    for i in lst:
        dct[i] = lst.count(i)
    return max(dct.values(), key = lambda x: x)




lst = []
try:
    for i in range(int(input(">>> "))):
        son = int(input("son kiriting: "))
        lst.append(son)
    natija = majority_element(lst)
except ValueError:
     natija = -1


print(natija)
