#! /bin/bash -x
echo "Welcome To EmpWageComputation"

empWagePerHr=20

function EmployeeManagement()
{
	Random=$((RANDOM%2))
	if [ $Random -eq 1 ]
	then
		echo "Employee is present"
                empHr=8
	else
		echo "Employee is absent"
                empHr=0
	fi
}

function main()
{
	EmployeeManagement
}

main

salary=$(( $empWagePerHr * $empHr ))
echo $salary
