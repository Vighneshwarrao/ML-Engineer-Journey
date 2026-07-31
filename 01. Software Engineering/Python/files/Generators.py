from types import new_class


def factorial(num):
    res=1
    for i in range(1,num+1):
        res*=i
        yield res

for fact in factorial(10):
    print(fact,"Next number",sep='\n')

numbers=(x*x for x in range(10))

for num in numbers:
    print(num)