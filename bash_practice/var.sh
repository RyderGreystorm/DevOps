#!/bin/bash


name="Fafa"
readonly age=26

pwd=$(pwd)
plat=$(hostname)

res="Hi, my name is $name and I am $age years old. I am in $pwd, hosted on $plat"

echo $res

#Arrays

myArr=(1 2 3 "Hello World" $name $age)

res="Hi, the first number is ${myArr[0]}. The string I found in this script is ${myArr[3]}"
echo $res

echo "My entire array has: ${myArr[*]}"
echo "Items from index 2 are: ${myArr[*]:2}"
echo "items from index 1 to index 3 are: ${myArr[*]:1:3}"

myArr+=( "Tigi" 24 78)

echo "${myArr[*]}"

myArr[2]=Raja
echo "${myArr[*]}"
unset myArr[2]
echo "${myArr[*]}"

#KEY VALUE PAIR IN BASH SCRIPTING
declare -A myArray
myArray=( [name]="Fafa" [age]=26 [region]="USA" [occupation]="DevOps")
echo "my name is ${myArray['name']}, I am ${myArray['age']} years old"
 
