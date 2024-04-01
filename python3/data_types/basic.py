#!/ce/cde/prod/bn/python3


# Printing the data type.
# Here, we will assign an integer value to variable x and then will
# print the type ofthe variable x. The output should come 'int' 

x=5
print(type(x))

# Setting the data type: The data type of the variable is set as soon as
# it is assigned a value. Ex.

a="Hello World" 			# Data Type: str
b=1j					# Data Type: complex
c=20.5					# Data Type: float
d=['apple','banana','cherry']		# Data Type: list
e=('apple','banana','cherry')		# Data type: tuple
f=range(6)				# Data Type: range
g={'apple','banana','cherry'}		# Data Type: set
h=frozenset({'apple','banana','cherry'})# Data Type: frozenset
i=True					# Data Type: bool
j=b"Hello"				# Data Type: bytes
k=bytearray(5)				# Data Type: bytearray
l=memoryview(bytes(5))			# Data Type: memoryview
m={"name":"John","age":36}		# Data Type: dict
n=None					# Data Type: NoneType

print("---------------")
print("---------------")
print(type(a))
print(type(b))
print(type(c))
print(type(d))
print(type(e))
print(type(f))
print(type(g))
print(type(h))
print(type(i))
print(type(j))
print(type(k))
print(type(l))
print(type(m))
print(type(n))



# Setting Specific Data Type: We can set a specific data type by specifying it
# Ex:

aa=list(('apple','banana','cherry'))
bb=tuple(('apple','banana','cherry'))
cc=dict(name='John',age=36)
dd=set(('apple','banana','cherry'))
ee=frozenset(('apple','banana','cherry'))

print("---------------")
print("---------------")

print(type(aa))
print(type(bb))
print(type(cc))
print(type(dd))
print(type(ee))










































