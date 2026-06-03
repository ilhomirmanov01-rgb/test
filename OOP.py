# class test:
#     def show(self):
#         print("Salom")
# m1=test()
# m1.show()


class Animal:
    def __init__(self,name,color):
        self.nomi=name
        self.rang=color

    def info(self):
        print(f"""Nomi: {self.nomi}
Rangi: {self.rang}""")

# a1=Animal("Ayiq","Qo'ng'ir")
# a1.info()


class car:
    def __init__(self,name,year,speed):
        self.nomi=name
        self.yil=year
        self.tezlik=speed
    def start(self):
        print(f"{self.nomi} o't oldi")
    def stop(self):
        print(f"{self.nomi} to'xtadi")
    def turn_right(self):
        print(f"{self.nomi} o'nga burildi")
    def turn_left(self):
        print(f"{self.nomi} chapga burildi")
# m1=car("BMW",2020,300)
# m2=car("ferrari",2025,3560)
# m3=car("Audi",2026,360)
# m4=car("chewrolet",2019,180)
# m5=car("BMW",2000,250)
# m1.start()
# m5.turn_left()


# class student:
#     def __init__(self,name,second_name,score):
#         self.ism=name
#         self.familiya=second_name
#         self.ball=score
       

# t1=student("Ali","Valiyev",80)
# t2=student("VAli","Aliyev",90)
# t3=student("Bekzot","Shamsiyev",100)

# if t2.ball>t1.ball<t3.ball:
#     print(f"{t1.ism} {t1.familiya}")
# elif t1.ball>t2.ball<t3.ball:
#     print(f"{t2.ism} {t2.familiya}")
# else:
#      print(f"{t3.ism} {t3.familiya}")


class human:
    def __init__(self,first_name:str,last_name:str,age:int):
        self.ism=first_name
        self.familiya=last_name
        self.yosh=age
    def full_name(self):
        print(f"{self.ism} {self.familiya}")
      



# h1=human("Ali","Valiyev",20)
# h2=human("VAli","Aliyev",23)
# h3=human("Bekzot","Shamsiyev",24)

# h1.full_name()
# h2.full_name()
# h3.full_name()
        
class bino:
    def __init__(self,height,color):
        self.balandlik=height
        self.rang=color
    def baland(self):
        if self.balandlik>=50:
            print(self.rang)



# b1=bino(60,"white")
# b2=bino(45,"black")
# b3=bino(40,"red")
# b4=bino(65,"brown")
# b5=bino(70,"green")
# b1.baland()
# b2.baland()
# b3.baland()
# b4.baland()
# b5.baland()


# class Human:
#     def __init__(self,name,age,profession,height,weight,single):
#         self.ism=name
#         self.yosh=age
#         self.kasb=profession
#         self.boy=height
#         self.vazn=weight
#         self.single=single
#     def ismi(self):
#         print(self.ism)
#     def yoshi(self):
#         print(self.yosh)
#     def kasbi(self):
#         print(self.kasb)
#     def boyi(self):
#         print(self.boy)
#     def vazni(self):
#         print(self.vazn)
#     def singl(self):
#         print(self.single)
# h1=Human("Ali",21,"O'qituvchi",180,75,"Turmush qurgan")
# h1.ismi()
# h1.yoshi()
# h1.boyi()
# h1.kasbi()
# h1.vazni()
# h1.singl()

class market:
    def __init__(self):
        self.royxat={}
    def addProduct(self,name,price):
        self.royxat[name]=price
    def removeProduct(self,name):
        for i in self.royxat():
            if i==name:
                self.royxat.pop(i)

