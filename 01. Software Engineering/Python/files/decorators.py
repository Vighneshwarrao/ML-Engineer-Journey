def decorator(func):
    def wrapper(*args,**kwargs):
        print("Before calling the function")

        res=func(*args,**kwargs)

        print("After calling the function")
        return res
    return wrapper

@decorator
def greet(name):
    print(f"Name: {name}")


greet('John')

@decorator
def add(*args):
    res=0
    for i in args:
        res+=i
    print(res)

add(10,20)
add(1,2,3,4,5,6,7)



