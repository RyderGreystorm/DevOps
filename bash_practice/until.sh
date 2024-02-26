#!/bin/bash

counter=10

until [ $counter -eq 0 ]
do
	echo "Value of Counter is $counter"
	let counter--
done
