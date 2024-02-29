#we can save the output of any command to any variable
files=$(ls)
echo $files

now=$(date)

echo "The system time and date is:"
echo $now

#There are some dafault declared variables like USER
echo "Your username is: $USER"

#To find out which variables are declared by the system 
#itself, type "env" command
#env
