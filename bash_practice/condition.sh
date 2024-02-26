#!/bin/bash

read -p "enter mark of student: " mark
if [ $mark -ge 80 ]
then
	echo "First Class Division"
elif [ $mark -ge 60 ]
then
	echo "Second Class Division"
else
	echo "Fail"
fi
