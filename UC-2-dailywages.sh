#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomcheck ]
then
     empRatePerHr=20
     empHrs=9
     salary=$(($empHrs*$empRatePerHr))
else
      salary=0
fi
