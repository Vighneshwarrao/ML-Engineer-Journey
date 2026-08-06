num=[10,20,30,40]

it=iter(num)        # Inbuilt Iterator

for i in it:
    print(i)


while True:        # StopIteration Exception
    try:
        print(next(it))
    except StopIteration:
        print("End of Iteration")
        break

class Numbers:                      # Custom Iterator
    def __init__(self,limit):
        self.limit=limit
        self.n=0
    def __iter__(self):
        return self
    def __next__(self):
        if self.n>=self.limit:
            raise StopIteration

        self.n+=1
        return self.n

num=Numbers(10)

for i in num:
    print(i)