
location = '/home/bsinha/Desktop/scripting/examples/python/folder1/ex4/test.txt'	


# From read1 script, we know that if we write back to back f_contents=f.read(size), then the next one will pick up 
# where the previous one left. For Ex:

with open(location,'r') as f:
	
	size_to_read=10
	
	f_contents = f.read(size_to_read)		
	print(f_contents,end='**')			
		
	
	f_contents = f.read(size_to_read)
	print(f_contents)
	
	print('----------------------')
	print('----------------------')



# Now suppose you want to start with the same starting position whenever you print back to back. For that we use 'seek' 


with open(location,'r') as f:
	
	size_to_read=10
	
	f_contents = f.read(size_to_read)		
	print(f_contents,end='**')			
	
	f.seek(0)					# Since we want to go back to starting position, so 0th position.
							# We can put any position we want to go to.
	f_contents = f.read(size_to_read)
	print(f_contents)

	print('----------------------')
	print('----------------------')




with open(location,'r') as f:				# Visual depiction of how the loop is iterating through
							# 10 CHARACTERS a time with each iteration separated by '**'
	size_to_read=10
	
	f_contents = f.read(size_to_read)		
	
	while len(f_contents)>0:
		print(f_contents,end='**')
		f_contents = f.read(size_to_read)



















