# class book:
#     def __init__(self,name:str,writer:str,price:int,publishinh_house:str):
#         self.nomi=name
#         self.yozuvchi=writer
#         self.narx=price
#         self.nashriyot=publishinh_house
#     def malumot(self):
#         print(f"""Kitob nomi {self.nomi} ,Yozuvchi {self.yozuvchi},kitob narxi {self.narx},Kitob nashriyoti {self.nashriyot}""")
#     def saralash(self):
#             if "a"<=self.nashriyot[0].lower()>="h":
#                 print(f"""Kitob nomi {self.nomi},Yozuvchi {self.yozuvchi},kitob narxi {self.narx},Kitob nashriyoti {self.nashriyot}""")

# # k1=book("O'tkan kunlar", "Abdulla Qodiriy", "45 000 so'm", "Sharq")
# # k2=book("Mehrobdan chayon", "Abdulla Qodiriy", "42 000 so'm", "Yangi Asr Avlodi")
# # k3=book("Yulduzli tunlar", "Pirimqul Qodirov", "55 000 so'm", "G'afur G'ulom")
# # k4=book("Ikki eshik orasi", "O'tkir Hoshimov", "50 000 so'm", "O'qituvchi")
# # k5=book("Dunyoning ishlari", "O'tkir Hoshimov", "38 000 so'm", "Hilol Nashr")

# # k1.malumot()
# # k2.malumot()
# # k3.malumot()
# # k4.malumot()
# # k5.malumot()
# # k1.saralash()
# # k2.saralash()
# # k3.saralash()
# # k4.saralash()
# # k5.saralash()


# class Kompyuter:
#     def __init__(self, nomi, ram, narxi, protsessori):
#         self.nomi = nomi
#         self.ram = ram
#         self.narxi = narxi
#         self.protsessori = protsessori

#     def chiqarish(self):
#         print(f"Nomi: {self.nomi}, RAM: {self.ram}GB, Narxi: {self.narxi}, Protsessor: {self.protsessori}")

# k1=Kompyuter("HP", 8, 700, "i5")
# k2=Kompyuter("Acer", 4, 450, "i3")
# k3=Kompyuter("Asus", 16, 1500, "Ryzen 7")
# k4=Kompyuter("Lenovo", 12, 900, "i7")

# kompyuterlar=[k1, k2, k3, k4]

# for i in kompyuterlar:
#     if 4<i.ram<16:
#         i.chiqarish()



# class User:
#     def __init__(self, ism, foydalanuvchi_ismi, email):
#         self.ism=ism
#         self.username=foydalanuvchi_ismi
#         self.email=email

#     def get_info(self):
#         print(f"Foydalanuvchi: {self.username}, Ismi: {self.ism}, email: {self.email}")

# user1=User("Alijon Valiyev", "alijon1994", "alijon1994@gmail.com")
# user1.get_info()
