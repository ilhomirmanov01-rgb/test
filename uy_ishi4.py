class Playlist:
    def __init__(self, owner):
        self.owner = owner
        self.tracks = []

    def add_track(self, title, artist):
        self.tracks.append((title, artist))

    def remove_last(self):
        if not self.tracks:
            return None
        return self.tracks.pop()

    def total_tracks(self):
        return len(self.tracks)

    def unique_tracks(self):
        unique_list = []
        for track in self.tracks:
            if track not in unique_list:
                unique_list.append(track)
        return unique_list

    def search_by_title(self, title):
        return [track for track in self.tracks if track[0].lower() == title.lower()]

    def filter_by_artist(self, artist):
        return [track for track in self.tracks if track[1].lower() == artist.lower()]


# if __name__ == "__main__":
#     my_playlist = Playlist("Ali")
#     print(my_playlist.owner)

#     my_playlist.add_track("Yomg'irlar", "Shahzoda")
#     my_playlist.add_track("Yorim", "Sherali Jo'rayev")
#     my_playlist.add_track("Yomg'irlar", "Shahzoda")
#     my_playlist.add_track("Kariyalarni asrang", "Sherali Jo'rayev")

#     print(my_playlist.total_tracks())
#     print(my_playlist.unique_tracks())
#     print(my_playlist.search_by_title("yomg'irlar"))
#     print(my_playlist.filter_by_artist("Sherali Jo'rayev"))

#     removed = my_playlist.remove_last()
#     print(removed)
#     print(my_playlist.total_tracks())



class Employee:
    def __init__(self, name, employee_id, hourly_rate=15.0):
        self.name = name
        self.employee_id = employee_id
        self.__working_hours = []
        self.hourly_rate = hourly_rate

    def log_hours(self, hour):
        if hour < 0 or hour > 24:
            return False
        self.__working_hours.append(hour)
        return True

    def total_hours(self):
        return sum(self.__working_hours)

    def calculate_salary(self):
        return float(self.total_hours() * self.hourly_rate)

    def reset_hours(self):
        self.__working_hours.clear()



# emp = Employee("Farhod", "EMP1002", 20.0)
# print(emp.name)
# print(emp.employee_id)
# print(emp.hourly_rate)
# print(emp.log_hours(8))
# print(emp.log_hours(10))
# print(emp.log_hours(25))
# print(emp.total_hours())
# print(emp.calculate_salary())

# emp.reset_hours()
# print(emp.total_hours())
# print(emp.calculate_salary())



class Student:
    def __init__(self, name, student_id):
        self.name = name
        self.student_id = student_id
        self.__grades = []

    def add_grade(self, grade):
        if 0 <= grade <= 100:
            self.__grades.append(grade)
        else:
            print("Noto'g'ri baho")

    def calculate_average(self):
        if not self.__grades:
            return 0.0
        return sum(self.__grades) / len(self.__grades)

    def get_status(self):
        average = self.calculate_average()
        if 90 <= average <= 100:
            return "A'lo"
        elif 80 <= average < 90:
            return "Yaxshi"
        elif 70 <= average < 80:
            return "Qoniqarli"
        else:
            return "Qoniqarsiz"


student = Student("Nodira", "S123")

student.add_grade(85)
student.add_grade(90)

print(student.calculate_average())
print(student.get_status())

student.add_grade(150)
