#!/bin/bash

for p in {200..400}
do
	echo "Number is $p"
done


myArr=( 1 50 10.5 Raju "Hello World!" Bow)

for var in ${myArr[*]}
do
	echo "Value is $var"
done
