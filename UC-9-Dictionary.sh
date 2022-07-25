#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0

function getWorkHours()
{
           case $randomCheck in
                                $isPartTime )
                                        empHrs=4
                                ;;
                                $isFullTime )
                                        empHrs=8
                                ;;
                                *)
                                        empHrs=0
                                ;;
        esac
}
function getEmpWage()
{
        echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxRateInMonth &&
     $totalWorkingDays -lt $numOfWorkingDays ]]
do
       ((totalWorkingDays++))
        randomCheck=$((RANDOM%3))
        getWorkHours $randomCheck
        totalEmpHr=$(($totalEmpHr+$empHrs))
        dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalsalary=$( getEmpWage $totalEmpHr )
echo ${!dailyWages[@]}   #dailywagesperday

echo ${#dailyWages[@]}   #totalnoofdays

