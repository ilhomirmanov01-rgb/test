def tartib(lst:list):
    dct={}
    for i in lst:
        dct[i]=lst.count(i)
    new=dct.values()
    if len(set(new))==len(new):
        return True
    else:
        return False


def son(matn:str):
    new=""
    son=set()
    for i in matn:
       if not i.isalpha():
           new+=i
       else:
           new+=" "
    for i in new.split():
        son.add(int(i))
    return son

    

def minumum(lst:list):
    new=[]
    for i in lst:
        count=0
        for x in lst:
            if i>x:
                count+=1
        new.append(count)
    return new






def tartib(matn:str):
    new=""
    son=[]
    for i in matn:
        if i.isdigit():
            new+=i
        else:
            new+=" "
    for i in new.split():
        son.append(int(i))
    if son==sorted(son):
        return True
    else:
        return False





# lst=[1,1,2,2,3,1]
# natija=tartib(lst)
# print(natija)



# matn="asff123dsfsd24sf24"
# natija=son(matn)
# print(natija)


# lst=[8,1,2,2,3]
# natija=minumum(lst)
# print(natija)



matn=input(">>>")
natija=tartib(matn)
print(natija)

