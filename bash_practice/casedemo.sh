#!/bin/bash


echo "Choose an Option"
echo "a = To print the current date and time"
echo "b = To print the current working directory"
echo "c = To list all files in the current working directory"

read choice
case $choice in
	a) date;;
	b) pwd;;
	c) ls;;
	*) echo "You have provided an invalid input"
esac
