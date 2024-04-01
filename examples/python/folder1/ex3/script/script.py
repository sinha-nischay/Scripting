import os

os.chdir('/home/bsinha/Desktop/scripting/examples/python/folder1/ex3/f1') 	# Changing the directory to where all videos are present
print(os.getcwd())						# Printing the current working directory to check if we are at right location

for f in os.listdir():
#	print(f)						# Printing all the files to check if we're getting correct file names
#	print(os.path.splitext(f))				# Splitting the extension for each file and printing them to check the same
								# The output will give us a tuple. First will be the file name & second will be
								# the extension
	f_name,f_ext = os.path.splitext(f)			# Saving the file name and extension in f_name and f_ext respectively
#	print(f_name)						# Printing f_name for each file
#	print(f_name.split('-'))				# Splitting and printing the f_name into planet name(f_title), solar system(f_course)
								# and their respective number(f_num)  
	f_title, f_course, f_num = f_name.split('-')		# Saving the planet name(f_title), solar system(f_course) and their respective 
								# number(f_num)  
#	print(f_title)						# Printing f_title to make sure the split and save was successful  
#	print(f_course)						# Printing f_course to make sure the split and save was successful  
#	print(f_num)						# Printing f_num to make sure the split and save was successful  

	f_title = f_title.strip()				# .strip will remove/strip any whitespaces (ex. spaces) from left and right side of f_title
	f_course = f_course.strip()				# .strip will remove/strip any whitespaces (ex. spaces) from left and right side of f_course
	f_num = f_num.strip('#')				# .strip will remove/strip any whitespaces (ex. spaces) from left and right side of f_num & 
								# also removing the '#' symbol from each name

#	print('{}-{}{}'.format(f_num, f_title, f_ext)) 		# Printing the names in our desired format. Ex. 4-Earth.mp4

	# Now, we just need to sort the output strings in ascending order of numbers. But, we have 1 and 10. If we sort without zero padding, 1 & 10 will
	# appear next to each other. So we will do the zero padding and make the numbers as 01,02,03,...,10. Thus we can do the sorting correctly.
	
	f_num = f_num.strip().zfill(2)				# Zero padding the f_num. zfill(2) means the numbers will become 01 from 1 and so on
#	print(f_num)						# Printing the zero padded numbers to check if padded correctly

	new_name = '{}-{}{}'.format(f_num,f_title,f_ext)	# Saving the name (new_name) to which we will replace the old names (f)
#	print(new_name)						# Printing to check if the new_name is of correct format

	os.rename(f, new_name)					# Renaming the old file name to new names











