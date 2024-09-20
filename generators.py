# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""


x = 10
print(x)


# Generator
# Generator is an object that enable a programmer to traverse a container
# particularly list
# without having to store the sequence in memory
# A generator is a new form of syntax introduced in Python 3.6
# it allows you to create an iterator , without you going through a more
# tedious process


# Let me introduce a problem to you here
# we did not have the function range and we did not have a while loop
# How can we loop over a set of numbers without the range and without the
# iterator
x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for element in x :
    print(element)
    
# to loop through all the numbers, I have to store them in a datastructure
x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# to store the numbers in memory is not very efficient
# with ten numbers we can 
# Imagine if I wanted to loop through a 100000 numbers or a million number
# it does not make any sense to store the sequence of numbers in memory
# just so that loop over them
# I am processing the numbers one at a time, so I do not

for element in x :
    print(element)
    
for i in range(1, 11):
    print(i)
    
# In range function we dont have to store numbers in memory

import sys

print(f'The size of the range function is {sys.getsizeof(range(1, 11))}')

print(f'The size of the list is {sys.getsizeof(x)}')

# an iterator allows us to loop
range(1, 11)


import sys

x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
x_squared = map(lambda x : x ** 2, x)
print(f'The size of the map is {sys.getsizeof(x_squared)}')

# convert the map to a list
print(list(x_squared))

# The x_squared  is a map object and is essentially an iterator
# That can iterate over a number of elements and does not store the element in 
# memory

print(f'The size of {sys.getsizeof(list(x_squared))}')

x_squared = map(lambda x : x ** 2, x)

# the square does not happen before but while the loop is called.
# and the result is getting printed.
for i in x_squared:
    print(i)
    
    
# How an iterator works and how 
# there is a next that gives us the next value in the iterator

x_squared = map(lambda x : x** 2, x)
print(next(x_squared))
print(next(x_squared))
print(next(x_squared))
print(next(x_squared))
print(next(x_squared))
print(next(x_squared))
print(next(x_squared))
print(next(x_squared))



# The for loop is calling the next function on your iterator
# and catch the StopIteration exception when the sequence is complete


# write the implentation of a for loop
# this will show us how the for loop will call the next on an iterator object
# and handle the StopIteration error when the end of the iterator object is
# reached


x_squared = map(lambda x : x** 2, x)

while True:
    try:
        value = x_squared.__next__()
        print(value)
    except StopIteration as stop_ite_err:
        print('loop stopped')
        break
    
    
# do the same think in the range function
x = range(1, 11)
print(type(x))

print(f'The size of range is {sys.getsizeof(x)}.')

x_iterator_ = x.__iter__()
# the x_iterator_ will call the __iter__()

print(x_iterator_)

print(x_iterator_.__next__())
print(x_iterator_.__next__())
print(x_iterator_.__next__())
print(x_iterator_.__next__())
print(x_iterator_.__next__())


# next we will see how you create your own iterator using the old legacy syntax
# the legacy syntax and not the generator syntax
class Iter:
    
    
    def __init__(self, start_val, stop_val):
        self.max_val = stop_val
        self.min_val = start_val
        self.start_val = self.min_val
        
        
    def __iter__(self):
        return self
        
    def __next__(self):
        if self.start_val <= self.max_val:
            value =  self.start_val
            self.start_val = self.start_val + 1
            return value
        else:
            raise StopIteration
            
            
            
my_iter = Iter(10, 20)
print('Started Running the my_iter')
print(next(my_iter))
print(next(my_iter))
print(next(my_iter))
print(next(my_iter))
print(next(my_iter))
print(next(my_iter))
print(next(my_iter))
print(next(my_iter))
print(next(my_iter))
print(next(my_iter))
print(next(my_iter))


print('Running the same method from for loop')
for i in Iter(10, 20):
    print(i)

# Now we will look at the generator which is a nice way of creating custom
# iterator

def gen(n):
    for i  in range(n):
        yield(i)


# the way that generator works is when the yield keyword is hit,
# it stops the execution of the function and returns the value inside yield
# to whatever is iterating this gen         
for i in gen(5):
    print(i)
    
# to do the same thing manually
x = gen(5)
print(x, type(x))
# going to the next in the generator
print(next(x))
print(next(x))

x = gen(5)
print(x, type(x))
print(next(x))
print(next(x))
print(next(x))
print(next(x))

def gen_again(n) :
    for i in range(n) :
        yield i

        
for counter in gen_again(5):
    print(counter)
    
    
def gen_again_yield():
    yield 1
    yield 2
    yield 3
    yield 4
  
print('Calling the "gen_again_yield"')
x = gen_again_yield()
print(next(x))
print(next(x))
print(next(x))


def gen_again_without_parameters():
    yield 1 
    yield 2
    yield 3
    yield 4
    yield 5


x = gen_again_without_parameters()
print(f'The type of x is {type(x)}')


x_1 = gen_again_without_parameters()
print(f'The type of x_1 is {type(x_1)}')

for i in range(5):
    print(next(x_1))
    
# The use case of a generator is that we can loop over a large range
# of data without needing to store it in memory

# the situation where you would use the generator is that you don't need
# to consider the data before and after the sequence, we only need to be concerned
# about the data right now

# You dont need to the previous and the next number in the sequence
# if you care about the before and after the sequence then we cannot use a generator
# because you need access to everything that is left or 

def gen_value(n):
    for i in range(n):
        yield i
        
        
x_gen_v = gen_value(10)
print(x_gen_v)

for i in range(10):
    print(next(x_gen_v))
print('The generator value ************************ The generator value')   
for counter in gen_value(5):
    print(counter)
    
# Real example of Generator
fhandle  = open("C:\Work\Python\data.csv", "r")
print(type(iter(fhandle)))


def csv_reader(file_name):
    for row in open(file_name, 'r'):
        yield row
        
        
def gen_n(n):
    for i in range(n):
        yield i
        
        
x = csv_reader('C:\\Work\Python\data.csv')
print(x, print(type(x)))
print(x.__next__())

x = (i for i in range(10))
print(x)

x_iter = iter(x)

print(x_iter)

print(next(x_iter))
print(next(x_iter))
print(next(x_iter))
print(next(x_iter))
print(next(x_iter))
print(next(x_iter))



import pandas as pd

ufo = pd.read_csv('http://bit.ly/uforeports')
print(ufo.head())
