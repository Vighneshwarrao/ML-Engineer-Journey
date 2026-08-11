import pytest

def add(a,b):
    return a+b

def test_add():
    assert add(10,20)==30
def test_add2():
    assert add(2,3)==5

# Fixture imported from conftest.py
def test_user_name(user):
    assert user["name"]=="Vighneshwar"

def test_user_age(user):
    assert user["age"]==22


#Parameterize

@pytest.mark.parametrize(
    "a,b,expected",
    [
        (2,3,5),
        (10,20,30),
        (-1,-2,-3)
    ]
)
def test_paramters_add(a,b,expected):
    assert add(a,b)==expected

#Exception
def test_divide():
    with pytest.raises(ZeroDivisionError):
        divide(10,0)

def divide(a,b):
    return a/b