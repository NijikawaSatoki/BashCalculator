#!/bin/bash

## Takes user input
echo "Enter two numbers:"
read a  # Input stored to $a
read b  # Input stored to $b

## Inputs operation to be performed
echo "Please enter your operation:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
read ch # Input stored to $ch

## Switch cases to perform calculations
case $ch in
  1)res=`echo $a + $b | bc`
  ;;
  2)res=`echo $a - $b | bc`
  ;;
  3)res=`echo $a \* $b | bc`
  ;;
  4)res=`echo "scale=2; $a / $b" | bc`
  ;;
esac  # <-- Yes, this is how we end our conditionals in bash
echo "Result: $res"
