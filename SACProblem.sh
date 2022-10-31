#!/bin/bash -x

read -p "Enter first number" a
read -p "Enter second number" b
read -p "Enter third number" c

p=$(($a+$b*$c))
q=$(($a*$b+$c))
r=$(($c+$a/$b))
s=$(($a%$b+$c))

dictionary["a+b*c"]=$p
dictionary["a*b+c"]=$q
dictionary["c+a/b"]=$r
dictionary["a%b+c"]=$s

array[0]=$p
array[1]=$q
array[2]=$r
array[3]=$s
