input = [2, 8, 7, 4, 3, 6, 5]

final_result = {}
for index, value in enumerate(input):
    print(index, value)

    for i in range(index +1 , len(input)):
        print(i)
        if value + input[i] == 10 :
            final_result[(index, i)] = 10

print(final_result)



x = 10



class WeightError(BaseException):
    message = "Weight is less"


weight = 50
try:
    if  weight < 100:
        raise WeightError
    print( name  )
    y = x /0
except NameError:
    print('Trying to access a variable that does not exists')
except ZeroDivisionError:
    print('Cannot divide by zero')
except WeightError as e:
    print(e.message)


class emp:
    all  = []
    def __init__(self, name, age):
        self.name = name
        self.age = age
        emp.all.append(self)

    @property
    def name(self):
        return self.__name

    @name.setter
    def name(self, value):
        self.__name = value

    def __repr__(self):
        return self.name




class emp_soft(emp):

    def __init__(self, name, age, tech):
        super().__init__(name, age)
        self.tech = tech





ashok = emp_soft("Ashok", 30, 'C++')
print(ashok.name)
ashok.name = 'Ashok V'
print(ashok.name)


varun = emp("Varun", 35)

print(emp.all)
print(emp_soft.all)
print(ashok.all)


print(ashok.__dict__)


for e in emp.all:
    print(e, type(e), e.name, e.age)
