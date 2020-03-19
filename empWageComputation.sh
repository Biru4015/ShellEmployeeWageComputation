#!/bin/bash -x
echo "Welcome To EmpWageComputation"
empWagePerHr=20
empFullTime=1
empPartTime=2

function EmployeeManagement () {
	random=$((RANDOM%3))	
	case $random in 
	$empFullTime )
		empHr=8
		echo "Employee Full time Present";;
	$empPartTime )
		empHr=4
		echo "Employee Part time Present";;
	* )
		empHr=0
		echo "Employee Absent";;
	esac
}
	
EmployeeManagement

salary=$(( $empWagePerHr * $empHr ))
echo $salary


