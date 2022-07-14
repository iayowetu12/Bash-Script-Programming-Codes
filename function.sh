#!/bin/bash

function function_name(){
	echo "hello world"
	sum=$(($1 + $2))
	echo $sum
	return $sum
}

function_name  1 2
echo "The previous" $?
