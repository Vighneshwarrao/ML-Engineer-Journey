from dataclasses import dataclass,field
from dataclasses import asdict

@dataclass
class Student:
    name: str
    age: int
    marks:list= field(default_factory=list)
s1=Student('Raj',12,[78])
s1.marks.append(98)

print(s1)


@dataclass
class Employee:
    name: str
    age: int
    salary: int=50000

e1=Employee('Ram',23)
print(e1)

@dataclass
class User:
    user_name:str
    password:str=field(repr=False)

u1=User('admin','12345')
print(u1)

@dataclass
class Area:
    length:int
    breadth:int
    area:int=field(init=False)

    def __post_init__(self):
        self.area=self.length*self.breadth

a1=Area(12,12)
print(a1)
print(asdict(a1))