#!/bin/sh
echo "Let's calculate GCD of two values. Input the first value."
read ans
a=$ans
while [ $a -eq 0 ] 
do
echo "invalid value. Please try again."
done
echo "Your first value is: $a"
echo "Then, please type the second value."
read ans
b=$ans
while [ $b -eq 0 ] 
do
echo "invalid value. Please try again."
done
echo "Your second value is: $b"
while [ r=$(( $a % $b )) -gt 1 ]
do
if [ $b -gt $a ] ; then a=$b && b=$a | r=$(( $a % $b ))
elif [ $a -gt $b ] ; then r=$(( $a % $b ))
fi
done
    if [ $r == 0 ] ; then  echo "The GCM is: $a"
    else echo "Sorry, no GCM found"
fi
