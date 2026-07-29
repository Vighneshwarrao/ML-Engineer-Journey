#Method Overloading
class Calculator():
    def multiply(self,a=1,b=1,*args):
        res=a*b
        for i in args:
            res*= i
        print(res)
calc=Calculator()

calc.multiply()
calc.multiply(2,3)
calc.multiply(2,3,4,5)
calc.multiply(1,2,3,4,5,6)

#Method Overriding
class Parent():
    def info(self):
        print('This is parent Class')

class Child(Parent):
    def info(self):
        print('This is child Class')

p=Parent()
p.info()
c=Child()
c.info()

