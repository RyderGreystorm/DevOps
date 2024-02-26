#!/bin/bash

uname="Fafa"
read -p "Please enter your username: " name

while [ $uname != $name ]
do
	read -p "Incorrect username, Try again: " name
done

echo "ACCESS GRANTED! USE RESPONSIBLY"
