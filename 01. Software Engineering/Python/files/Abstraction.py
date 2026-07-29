from abc import ABC,abstractmethod

class Greet(ABC):
    @abstractmethod
    def say_hello(self):
        pass

class Hello(Greet):
    def say_hello(self):
        print('Hello!')

obj=Hello()
obj.say_hello()

class Animal(ABC):
    @abstractmethod
    def sound(self):
        pass
class Dog(Animal):   #Any class inheriting Abstract class must implement the abstract method.
    def greet(self):
        print('Bow Bow')

obj2=Dog()
Dog.greet()