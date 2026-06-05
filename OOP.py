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

# class market:
#     def __init__(self):
#         self.royxat={}
#     def addProduct(self,name,price):
#         self.royxat[name]=price
#     def removeProduct(self,name):
#         for i in self.royxat():
#             if i==name:
#                 self.royxat.pop(i)




# class population:
#     def __init__(self,name,age,jinsi):
#         self.ism=name
#         self.yosh=age
#         self.jinsi=jinsi
#     def get_info(self):
#         print(f""" {self.ism}
# Yoshi: {self.yosh}
# Jinsi: {self.jinsi}""")
# class MALE(population):
#     def male(self):
#         if self.yosh>=50:
#             print(f"Janob {self.get_info}")




    
    



# o1=population("jack",21,"MALE")



class Employee:
    def __init__(self,surname,position,salary):
        self.familya=surname
        self.lavozimi=position
        self.oyligi=salary
#     def __str__(self):
#         return f"""Yangi ishchi: {self.familya}
# Lavozimi:{self.lavozimi}
# oyligi: {self.oyligi}"""
        

# ishchi=Employee("Valiyev","muhandis",8000)
# print(ishchi)


class EnterpriseEmployee(Employee):
    def __init__(self,surname,position,salary,rating):
        super().__init__(surname,position,salary)
        self.reyting=rating

    def oshirilgan_oylik(self):
        if self.reyting>0 and self.reyting<=100:
            if 60>self.reyting or self.reyting<75:
                 self.oyligi=self.oyligi*1.20
                 print(self.oyligi)
            elif 75>self.reyting or self.reyting<90:
                 self.oyligi=self.oyligi*1.40
                 print(self.oyligi)
            elif 90>self.reyting or self.reyting<100:
                 self.oyligi=self.oyligi*1.60
                 print(self.oyligi)
        else:
            print("rayting no'to'g'ri")
        

i1=EnterpriseEmployee("Valiyev","boshliq",10000,65)
i2=EnterpriseEmployee("Valiyev","boshliq",10000,80)
i3=EnterpriseEmployee("Valiyev","boshliq",10000,95)
i4=EnterpriseEmployee("Valiyev","boshliq",10000,0)
i5=EnterpriseEmployee("Valiyev","boshliq",10000,105)
lst=[i1,i2, i3,i4,i5]
for i in lst:
    i.oshirilgan_oylik()
