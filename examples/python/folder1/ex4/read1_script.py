# File Objects

location = '/home/bsinha/Desktop/scripting/examples/python/folder1/ex4/test.txt'	# NOTE: Write the location inside ''

with open(location,'r') as f:
	f_contents = f.read()								# Loading contents of 'f' in 'f_contents'
	print(f_contents)								# printing to check if content is loaded correctly
	
print('----------------------------')
print('----------------------------')


with open(location,'r') as f:
	f_contents0 = f.read(100)							# This will read only first 100 CHARACTERS of the file!
	print(f_contents0,end='')
	print('^^^^^^^^^^^^^^^')
	print('^^^^^^^^^^^^^^^')
	f_contents0 = f.read(100)							# Now, this will read the next 100 CHARACTERS of the file!!
	print(f_contents0,end='')
	print('^^^^^^^^^^^^^^^')
	print('^^^^^^^^^^^^^^^')
	f_contents0 = f.read(100)							# Now, this will read the next 100 CHARACTERS of the file. But there is
	print(f_contents0,end='')							# no more data left in the file. So nothing will be printed out
	print('^^^^^^^^^^^^^^^')
	print('^^^^^^^^^^^^^^^')




# We may be working with very large files, so, we don't want to read the entire file at once. We may want to go line by line


with open(location,'r') as f:
	f_contents1 = f.readlines()							# reading whole file line by line
	print(f_contents1)								# 'f_contents' is a list with each element as one line of 'f'
	print('----------------------------')
	print('----------------------------')
	

with open(location,'r') as f:
	f_contents2 = f.readline()							# It reads one line at a time. This prints 1st line
	print(f_contents2)

	f_contents2 = f.readline()							# It reads one line at a time. This prints 2nd line
	print(f_contents2, end='')							# Since print statement ends in a new line, we have one line spaces between
											# the above two prints. To remove that extra line, we pass an empty string
											# at the end of print, i.e., end=''

	f_contents2 = f.readline()							# It reads one line at a time. This prints 3rd line, and so on..
	print(f_contents2, end='')							
	print('----------------------------')
	print('----------------------------')


with open(location,'r') as f:
	for line in f:									# This iterates through the whole file line by line. Thus we don't need to
		print(line, end='')							# write print(f_contents2, end='') again  and again.









