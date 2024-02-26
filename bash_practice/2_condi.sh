#!/bin/bash


echo "Check if you are eligible for work"
read -p "Please enter your age: " age

if [ $age -ge 18 ] && [ $age -lt 90 ]
then
	echo "You can work"
else
	echo "You are not eligible to work"
fi
