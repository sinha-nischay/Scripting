
location = '/home/bsinha/Desktop/scripting/examples/python/folder1/ex4/test2.txt'	

with open(location,'w') as f:			# If the file is not present at the location, it will create one. Also, 
						# if the file is present 'w' will overwrite it.
#	pass					# We simply pass, i.e., we don't do anything and move out of writing

	f.write('Test')
	f.write('Test')				# This 2nd 'Test' will be written just after the 1st 'Test', i.e., TestTest
						# It basically works in the same way as read.

	f.seek(0)

	f.write('Test')				# So, here we won't have 4 'Test's, but only 2. It is because we did 
	f.write('Test')				# seek(0). So the control went to start again and then overwrote the
						# first 2 'Test's
	f.seek(0)				# Control goes to 0th position again (i.e., T of the 1st Test)

	f.write('R')				# T of 1st test is overwritten by R. Thus it becomes: RestTest



























