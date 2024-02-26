#!/bin/bash

greet(){
	echo  "Welcome $1"
}

read -p "Hi, Please enter your name: " name

greet $name
