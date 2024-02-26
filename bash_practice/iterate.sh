#!/bin/bash

items="/home/ubuntu/file.txt"

for item in $(cat $items)
do
	echo $item
done
