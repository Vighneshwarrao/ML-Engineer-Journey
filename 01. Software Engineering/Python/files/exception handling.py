try:
    n=int(input())
    res=1000/n

except ValueError:
    print("Invalid num")
except ZeroDivisionError:
    print("0 is not divisible")

else:
    print(res)

finally:
    print("Success")


try:
    age=int(input())
    if age<0:
        raise ValueError("Invalid Age")
    print(age)
except ValueError as e:
    print(e)