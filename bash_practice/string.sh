#!/bin/bash

myVar="Hello World!"

#length of string

echo "${#myVar}"

#upper

echo "${myVar^^}"
echo "${myVar,,}"
echo "${myVar:6:11}"
echo "${myVar/World/Nigerian Afcon Losers}"
