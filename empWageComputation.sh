#!/bin/bash -x
echo "Welcome To EmpWageComputation"
empWagePerHr=20

function EmployeeManagement ()
{
	Random=$((RANDOM%3))
	if [ $Random -eq 1 ]
	then
		echo "Employee fulltime present" 
		empHr=8
	elif [ $Random -eq 2 ]
	then 
		echo "Emploee part time present"
		empHr=4
	else
		echo "Employee Absent"
	        empHr=0
	fi
}

EmployeeManagement

salary=$(( $empWagePerHr * $empHr ))
echo $salary
