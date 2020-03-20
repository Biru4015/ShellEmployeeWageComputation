#!/bin/bash -x
echo "Welcome To EmpWageComputation"

#constant
EMP_WAGE_PER_HR=20
EMP_FULL_TIME=1
EMP_PART_TIME=
DAYZ_PER_MONTH=20
TOTAL_MAX_HR=100

#variables
totalSalary=0
totalHr=0
salary=0

#Dictionary

declare -A wages

function GetWorkingHours ()
{

	for (( day=1; day<=$DAYZ_PER_MONTH; day++ ))
	do
       echo "Total work hours is = " $totalHr

       echo "Total wages for month is =" $totalSalary

	random=$((RANDOM%3))
	case $random in

     	$EMP_FULL_TIME )
		EMP_HR=8 ;;

	$EMP_PART_TIME )
		EMP_HR=4 ;;

	* )
		EMP_HR=0 ;;
	esac

	totalHr=$(( $totalHr + $EMP_HR ))
	salary=$(( $EMP_WAGE_PER_HR * $EMP_HR ))


	totalSalary=$(( $EMP_WAGE_PER_HR * $totalHr  ))
	wages[$day]="$salary"

	echo "wages per day =" ${wages[$day]}

	wages[totalSalary]="$totalSalary"

	echo "totalSalary =" ${wages[totalSalary]}
done

}

GetWorkingHours
