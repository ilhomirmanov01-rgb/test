class MyDate:
    def __init__(self, day: int, month: int, year: int):
        self.oylar_nomi = {
            1: "Yanvar", 2: "Fevral", 3: "Mart", 4: "Aprel", 
            5: "May", 6: "Iyun", 7: "Iyul", 8: "Avgust", 
            9: "Sentyabr", 10: "Oktyabr", 11: "Noyabr", 12: "Dekabr"
        }
        self.oylar_kunlari = {
            1: 31, 2: 28, 3: 31, 4: 30, 5: 31, 6: 30,
            7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31
        }
        
        self.__kun = day
        self.__oy = month
        self.__yil = year
        
        if not self.isValidDate(day, month, year):
            raise ValueError("Noto'g'ri sana kiritildi!")

    def isLeapYear(self, year: int) -> bool:
        return (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0)

    def isValidDate(self, day: int, month: int, year: int) -> bool:
        if not (1 <= year <= 9999):
            return False
        if not (1 <= month <= 12):
            return False
            
        max_kun = self.oylar_kunlari[month]
        if month == 2 and self.isLeapYear(year):
            max_kun = 29
            
        if not (1 <= day <= max_kun):
            return False
        return True

    def setDate(self, day: int, month: int, year: int):
        if self.isValidDate(day, month, year):
            self.__kun = day
            self.__oy = month
            self.__yil = year
        else:
            raise ValueError("Noto'g'ri sana kiritildi!")

    def nextDay(self):
        max_kun = self.oylar_kunlari[self.__oy]
        if self.__oy == 2 and self.isLeapYear(self.__yil):
            max_kun = 29
            
        if self.__kun < max_kun:
            self.__kun += 1
        else:
            self.__kun = 1
            if self.__oy < 12:
                self.__oy += 1
            else:
                self.__oy = 1
                self.__yil +=1
        return (f"{self.__kun}.{self.__oy}.{self.__yil}") 
    def previousDay(self):
        if self.__kun > 1:
            self.__kun -= 1
        else:
            if self.__oy > 1:
                self.__oy -= 1
            else:
                self.__oy = 12
                self.__yil -= 1
                
            max_kun = self.oylar_kunlari[self.__oy]
            if self.oy == 2 and self.isLeapYear(self.yil):
                max_kun = 29
            self.__kun = max_kun
        return (f"{self.__kun}.{self.__oy}.{self.__yil}")

    def nextMonth(self):
        yangi_oy = self.oy + 1 if self.oy < 12 else 1
        yangi_yil = self.yil + 1 if self.oy == 12 else self.__yil
        
        if self.isValidDate(self.__kun, yangi_oy, yangi_yil):
            self.__oy = yangi_oy
            self.__yil = yangi_yil
        else:
            raise ValueError("Noto'g'ri sana kiritildi!")

    def previousMonth(self):
        yangi_oy = self.oy - 1 if self.oy > 1 else 12
        yangi_yil = self.yil - 1 if self.oy == 1 else self.__yil
        
        if self.isValidDate(self.__kun, yangi_oy, yangi_yil):
            self.__oy = yangi_oy
            self.__yil = yangi_yil
        else:
            raise ValueError("Noto'g'ri sana kiritildi!")

    def nextYear(self):
        if self.isValidDate(self.kun, self.oy, self.__yil + 1):
            self.__yil += 1
        else:
            raise ValueError("Noto'g'ri sana kiritildi!")

    def previousYear(self):
        if self.isValidDate(self.kun, self.oy, self.__yil - 1):
            self.__yil -= 1
        else:
            raise ValueError("Noto'g'ri sana kiritildi!")

    def str(self) -> str:
        oy_nomi = self.oylar_nomi[self.__oy]
        return f"{self.kun:02d}-{oy_nomi} {self.yil} yil"
    
sana=MyDate(13,2,2026)
sana.isLeapYear(2024)

print(sana.nextDay())
print(sana.previousDay())