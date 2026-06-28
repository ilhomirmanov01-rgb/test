class Employee():
    def __init__(self,name:str,employee_id:str,hourly_rate:float):
        self.name = name
        self.id = employee_id
        self.hours = []
        self.hourly_rate = hourly_rate
    def log_hours(self,hours):
        if hours >= 0 and hours <=24:
            self.hours.append(hours)
            return True
        else:
            return False
    
    def total_hours(self):
        
        return sum(self.hours)
        
    def calculate_salary(self):
        return self.total_hours()* self.hourly_rate
    
    def reset_hours(self):
       self.hours.clear()
        




employee = Employee("Aziz","E101",hourly_rate = 20.0)
print(employee.log_hours(9))
print(employee.log_hours(7))
print(employee.log_hours(8))
print(employee.log_hours(25))
print(employee.log_hours(10))
print(employee.total_hours())
print(employee.calculate_salary())
employee.reset_hours()
print(employee.total_hours())
print(employee.calculate_salary())

