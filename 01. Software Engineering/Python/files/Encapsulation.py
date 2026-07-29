class Student:
    def __init__(self,name,roll_num,cgpa,attendance):
        self.name=name
        self.roll_num=roll_num          #Public attribute
        self.__cgpa=cgpa                #Private attribute
        self._attendance=attendance     #Protected attribute
    def info(self):
        print(f"Name: {self.name}, Roll Number: {self.roll_num}, CGPA:{self.__cgpa}, Attendance: {self._attendance}")

class Department(Student):
    def __init__(self,dep_name,name,roll_num,cgpa,attendance):
        self.dep_name=dep_name
        super().__init__(name,roll_num,cgpa,attendance)
    def depinfo(self):
        print(f"Name: {self.name}, Department:{self.dep_name}, Roll Number: {self.roll_num}, Attendance: {self._attendance}")
    def access_cgpa(self):
        print(f"CGPA:{self.__cgpa}")

s1=Student('Ram',101,8.5,78)      #Object
s2=Student('Raj',102,9.0,65)

d1=Department('CSE','Tej',103,8.9,56)

s1.info()
s2.info()
d1.depinfo()
d1.access_cgpa()