#!/ce/cde/prod/bin/python3


# Here, we will look at the declaration of global variables

# Global Variables: The variables which are declared outside 
# 		    the function.

"""				# multiple line comment starts
x="awesome"
def myfunc():
  print("Python is "+x)		# Notice the space after 'is'
myfunc()

"""				# multiple line comment ends

# The variables declared inside a function are local to that 
# function.

y="awesome"
def myfunc1():
  y="fantastic"
  print("Python is "+y)		# y will be replaced by local variable: fantastic
myfunc1()
print("Python is "+y)		# y will be replaced by global variable: awesome



# Declaring global var inside a function:
# To declare a gloabal variable inside a function, use the keyword 'global'

def myfunc2():
  global z
  z="amazing"
myfunc2()
print("Python is "+z)

# We can also change the global variable inside a function using 'global'

p="amazing"
def myfunc3():
  global p
  p="fantastic"
myfunc3()
print("You know that python is "+p)































