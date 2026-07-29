class Animal:
    def __init__(self,name='No name'):
        self.name=name
    def info(self):
        print(f"From parent class Name:{self.name}")
class Dog(Animal):
    def __init__(self,name,breed):
        super().__init__(name)
        self.breed=breed
    def details(self):
        print(f"From child class Name:{self.name},Breed:{self.breed}")


dog1=Dog('Robo','Canine')
dog1.details()
dog1.info()