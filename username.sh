#! /bin/bash
# username.sh 
# author: Kevin Le
# date: 11/12/2021
echo "You will be typing a potential username that fulfills the following conditions: "
echo "It can only have lower case letters, digits, and underscores."
echo "Your username must start with a lower case letter."
echo "It must be at least 3, but no more than 12 characters long."
echo -n "Enter a username: "

read -r USER 
while echo "$USER" | grep -E -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo -n "Enter a username: "
	read -r USER 
done
echo "Thank you"
