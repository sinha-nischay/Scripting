# Here, we are going to read from the test.txt file. We are going to create a copy named test_copy.txt file and write
# into that file all the contents of original file.


location1 = '/home/bsinha/Desktop/scripting/examples/python/folder1/ex4/test.txt'	
location2 = '/home/bsinha/Desktop/scripting/examples/python/folder1/ex4/test_copy.txt'	

with open(location1,'r') as rf:				# rf-readfile
	with open(location2,'w') as wf:			# wf-writefile
		for line in rf:
			wf.write(line)




# NOTE: * Here, we are working with txt files. So we are using 'r' and 'w'.
#	* If we are working with jpg files (photos), we need to open them in binary. So we use 'rb' and 'wb'



