
# NOTE:We need to define the function before we use it!

# Definition for adding a customer
def add_i():
	cid=input("Customer ID: ")
	nm=input("Customer Name: ")
	ad=input("Customer Address: ")
	cn=input("Customer contact: ")
	f=open("/home/bsinha/Desktop/scripting/examples/python/folder1/ex1/customer.txt","a")	# a -> append
	
	f.write(cid+"\t")
	f.write(nm+"\t")
	f.write(ad+"\t")
	f.write(cn+"\n")
	print("Record added!")
	f.close()


# Definition for deleting a data
def delete():
	i=input("Enter the customer ID that you want to delete: ")						# Taking input the ID of customer to be deleted from file
	with open("/home/bsinha/Desktop/scripting/examples/python/folder1/ex1/customer.txt","r") as f:		# Opening the file with read mode with name 'f'. Using "with open .. as..". When we use this
														# then, we don't have to worry about closing the function: 'f=open()' and 'f.close()'
	all=f.readlines()											# The data of f is read line by line and stored in 'all' file
	with open("/home/bsinha/Desktop/scripting/examples/python/folder1/ex1/customer.txt","w") as f:		# Opening file in write mode. This deletes all the data inside it and thus creates a blank file 'f'
	for data in all:											# We run a loop to go line by line through all the lines in 'all' file
		d=data.split("\t",1)										# For given line, we split the line in 2 parts. 1st part (d[0]) contains the ID and the 2nd part (d[1]) contains
														# the remaining data of the line
		if(d[0]!=i):											# Now for that line, we check if the ID (d[0] part) matches with the ID entered by the user. If it doesn't match
														# we will write the line into the file 'f'. If the ID matches, we will not write that line which means we will 
														# delete that line from the file.
			f.writelines(data)									# Writing the line/data into file 'f'
	print("Record Deleted")											




# Definition for showing all customers
def show():
	f=open("/home/bsinha/Desktop/scripting/examples/python/folder1/ex1/customer.txt","r")	
#	print("ID \t Name \t Address \t Number \n")
	print(f.read())
	f.close()
	


	



while(True):
	print("Welcome to customer portal")
	print("1. Add new customer")
	print("2. Delete customer")
	print("3. Update customer")
	print("4. Search customer")
	print("5. Show all customers")
	print("6. Exit")
	a=int(input("Enter your choice: "))
	if a==1:
   	   add_i()
	if a==2:
   	   delete()
	if a==3:
      	   update()
	if a==4:
   	   search()
	if a==5:
     	   show()
	if a==6:
	   break
	























